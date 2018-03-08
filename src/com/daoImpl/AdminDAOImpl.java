package com.daoImpl;

import javax.annotation.Resource;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Component;

import com.dao.AdminDAO;
import com.entity.Admin;
@Component
public class AdminDAOImpl implements AdminDAO{
private SessionFactory sessionFactory;
	public Admin find(String name, String pass) {
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery("from Admin a where a.name='"+name+"' and a.pass='"+pass+"'");;
		return (Admin)query.uniqueResult();
	}
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	@Resource
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

}
