package com.daoImpl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Component;

import com.dao.UserDAO;
import com.entity.User;
@Component
public class UserDAOImpl implements UserDAO{

	private SessionFactory sessionFactory;
	//注册
	public void save(User user) {
		Session session=sessionFactory.getCurrentSession();
	    session.save(user);
	}
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	@Resource
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	public User findOne(String nickname, String pass) throws Exception {
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery("from User u where u.nickname='"+nickname+"' and u.pass='"+pass+"'");
		User user=(User) query.uniqueResult();
		return user;
	}
	//根据用户id查询用户信息
	public User findUser(int uid) throws Exception {
		Session session=sessionFactory.getCurrentSession();
		Query q=session.createQuery("from User u where u.uid="+uid);
		User user=(User) q.uniqueResult();
		return user;
	}
	//修改用户头像
	/*public void updateHead(String img,int id) throws Exception {
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery("update User u set u.imgAddr='"+img+"' where u.uid=?");
		query.setParameter(0, id);
		query.executeUpdate();
	}*/
	//修改个人信息
	public void updateInfo(User u) throws Exception {
		Session session=sessionFactory.getCurrentSession();
		session.update(u);
	}
	public List<User> queryUsers(int page,int count) throws Exception {
        Session session=sessionFactory.getCurrentSession();
        Query query=session.createQuery("from User u");
        if (page>=1) {
        	 query.setFirstResult((page-1)*count);
        	 query.setMaxResults(count);
		}
       
        return query.list();
	}
	public int queryusercount() throws Exception {
		 Session session=sessionFactory.getCurrentSession();
	     Query query=session.createQuery("select count(uid) from User u");
		return  ((Number)query.uniqueResult()).intValue();
	}
	public List<User> queryUsers() throws Exception {
		 Session session=sessionFactory.getCurrentSession();
	     Query query=session.createQuery("from User u");
		return query.list();
	}

	
}
