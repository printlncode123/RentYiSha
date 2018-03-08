package com.daoImpl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Component;

import com.dao.CartDAO;
import com.entity.Cart;
import com.entity.CartDetail;
@Component
public class CartDAOImpl implements CartDAO{

	private SessionFactory sessionFactory;
	public void add(Cart c) throws Exception {
      Session session=sessionFactory.getCurrentSession();
	  session.save(c);
	}
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	@Resource
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	public List<Cart> findCarts() throws Exception {
        Session session=sessionFactory.getCurrentSession();
        Query query=session.createQuery("from Cart c");
		return query.list();
	}
	public void add(CartDetail c) throws Exception {
		Session session=sessionFactory.getCurrentSession();
		session.save(c);
		
	}
	public List<CartDetail> findCartdetails(int uid) throws Exception {
		Session session=sessionFactory.getCurrentSession();
        Query query=session.createQuery("from CartDetail c where c.cart.user.uid="+uid);
		return query.list();
	}
	public CartDetail findCartDetail(String gid, String size,int cartid) throws Exception {
        Session session=sessionFactory.getCurrentSession();
        Query q=session.createQuery("from CartDetail c where c.good.gid='"+gid+"' and c.size='"+size+"' and c.cart.id='"+cartid+"'");
		return (CartDetail) q.uniqueResult();
	}
	public void update(Cart c) throws Exception {
        Session session=sessionFactory.getCurrentSession();
		session.update(c);
	}
	public void delete(CartDetail c) throws Exception {
        Session session=sessionFactory.getCurrentSession();
        session.delete(c);
	}
	public List<CartDetail> findCartDetails1(String gid) throws Exception {
        Session session=sessionFactory.getCurrentSession();
        Query query=session.createQuery("from CartDetail c where c.good.gid="+gid);
		return query.list();
	}
	public CartDetail findCartDetail(int id) throws Exception {
        Session session=sessionFactory.getCurrentSession();
        Query query=session.createQuery("from CartDetail c where c.id="+id);
		return (CartDetail) query.uniqueResult();
	}
	public List<CartDetail> findCartdetails2(int cartid) throws Exception {
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery("from CartDetail c where c.cart.id="+cartid);
		return query.list();
	}
	public void delete(Cart c) throws Exception {
        Session session=sessionFactory.getCurrentSession();
        session.delete(c);
	}
	public Cart findCart(int id) throws Exception {
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery("from Cart c where c.id="+id);
	    return (Cart) (query.uniqueResult());
	}
	public CartDetail findCartDetail(String gid, String size) throws Exception {
		 Session session=sessionFactory.getCurrentSession();
	     Query q=session.createQuery("from CartDetail c where c.good.gid='"+gid+"' and c.size='"+size+"'");
		 return (CartDetail)( q.uniqueResult());
	}
	public int goodCount(int uid) throws Exception {
		 Session session=sessionFactory.getCurrentSession();
	     Query q=session.createQuery("select sum(c.goodCount) from Cart c where c.user.uid="+uid);
		 return ((Number) q.uniqueResult()).intValue();
	}
	public Cart findCart1(int oid) throws Exception {
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery("from Cart c where c.oid="+oid);
	    return (Cart) query.uniqueResult();
	}
	public List<CartDetail> findCartDetails1() throws Exception {
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery("from CartDetail c");
		return query.list();
	}
	public List<CartDetail> queryCarts(int page, int count) throws Exception {
		 Session session=sessionFactory.getCurrentSession();
	     Query query=session.createQuery("from CartDetail u");
		return query.list();
	}
	public int querycartcount() throws Exception {
		Session session=sessionFactory.getCurrentSession();
	     Query query=session.createQuery("select count(id) from CartDetail cd");
		return  ((Number)query.uniqueResult()).intValue();
	}
	
	
}
