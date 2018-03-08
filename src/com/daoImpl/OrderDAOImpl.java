package com.daoImpl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Component;
import com.dao.OrderDAO;
import com.entity.Cart;
import com.entity.Good;
import com.entity.Order;
import com.entity.Orderdetail;
@Component
public class OrderDAOImpl implements OrderDAO {
    private SessionFactory sessionFactory;
	public void add(Order o) throws Exception {
		Session session=sessionFactory.getCurrentSession();
        session.save(o);
	}
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	@Resource
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	public void add(Orderdetail o) throws Exception {
		Session session=sessionFactory.getCurrentSession();
        session.save(o);
		
	}
	public void updatedetail(Orderdetail o) throws Exception {
		Session session=sessionFactory.getCurrentSession();
		session.update(o);
	}
	public Orderdetail finddetail(Cart c, Good g) throws Exception {
		Session session=sessionFactory.getCurrentSession();
		return (Orderdetail) (session.createQuery("from Orderdetail o where o.cart="+c+"  and o.good="+g).uniqueResult());
	}
	public List<Order> findOrders(int uid) throws Exception {
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery("from Order o where o.user.uid="+uid);
		return query.list();
	}
	public Orderdetail finddetail(int oid) throws Exception {
		Session session=sessionFactory.getCurrentSession();
		return (Orderdetail) (session.createQuery("from Orderdetail o where o.order.id="+oid).uniqueResult());
	}
	public List<Orderdetail> findOrderdetail(int uid) throws Exception {
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery("from Orderdetail o where o.order.user.uid="+uid);
		return query.list();
	}
	/*public void delete(int id) throws Exception {
		Session session=sessionFactory.getCurrentSession();
		session.createQuery("delete from Order o where o.id="+id);
		
	}
	public void deleteod(int oid) throws Exception {
		Session session=sessionFactory.getCurrentSession();
		session.createQuery("delete from Orderdetail od where od.oid="+oid);
	}
*/
	public void delete(Orderdetail orderdetail) throws Exception {
		Session session=sessionFactory.getCurrentSession();
		session.delete(orderdetail);
		
	}
	public void deleteod(Order order) throws Exception {
		Session session=sessionFactory.getCurrentSession();
		session.delete(order);
		
	}
	public Order findOrder(int id) throws Exception {
		Session session=sessionFactory.getCurrentSession();
		return (Order) (session.createQuery("from Order o where o.id="+id).uniqueResult());
	}
	
	public List<Orderdetail> query() throws Exception {
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery("from Orderdetail o where o.state=2");
		query.setMaxResults(12);
		return query.list();
	}
	
} 