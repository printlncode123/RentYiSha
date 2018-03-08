package com.daoImpl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Component;

import com.dao.CatagoryDAO;
import com.entity.Catagory;
@Component("catagoryDaoImpl")
public class CatagoryDAOImpl implements CatagoryDAO{
    private SessionFactory sessionFactory;
	public void add(Catagory c) throws Exception {
		Session session=sessionFactory.getCurrentSession();
		session.save(c);
	}

	public void delete(int id) throws Exception {
		// TODO Auto-generated method stub
		
	}

	//查询前7个类别
	public List<Catagory> queryAll() throws Exception {
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery("from Catagory c");
		query.setFirstResult(0);
		query.setMaxResults(7);
		System.out.println(query.list());
		return query.list();
	}

	public void update(int id) throws Exception {
		// TODO Auto-generated method stub
		
	}

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	@Resource
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	
}
