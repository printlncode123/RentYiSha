package com.service;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.dao.OrderDAO;
import com.entity.Cart;
import com.entity.Good;
import com.entity.Order;
import com.entity.Orderdetail;

@Component
public class OrderService {
 private OrderDAO orderDAO;

 @Transactional
 public void add(Order o) throws Exception{
	 orderDAO.add(o);
 }
 @Transactional
 public void add(Orderdetail o) throws Exception{
	 orderDAO.add(o);
 }
 @Transactional
 public void updatedetail(Orderdetail o) throws Exception{
	 orderDAO.updatedetail(o);
 }
 @Transactional
 public Orderdetail finddOrderdetail(Cart c,Good g) throws Exception{
	 return orderDAO.finddetail(c, g);
 }
 @Transactional
 public List<Order> findOrders(int uid) throws Exception {
		return orderDAO.findOrders(uid);
	}
 @Transactional
 public Orderdetail finddetail(int oid) throws Exception {
	 return orderDAO.finddetail(oid);
 }
 @Transactional
	public List<Orderdetail> findOrderdetail(int uid) throws Exception {
	 return orderDAO.findOrderdetail(uid);
 }
 /*@Transactional
   public void delete(int id) throws Exception{
	 orderDAO.delete(id);
 }
 @Transactional
 public void deleteod(int oid) throws Exception{
	 orderDAO.delete(oid);
}*/
 @Transactional
 public void delete(Order o) throws Exception{
	 orderDAO.deleteod(o);
}
@Transactional
public void deleteod(Orderdetail orderdetail) throws Exception{
	 orderDAO.delete(orderdetail);
}
@Transactional
public Order findOrder(int id) throws Exception {
	 return orderDAO.findOrder(id);
}
@Transactional
public List<Orderdetail> query() throws Exception {
	return orderDAO.query();
}
public OrderDAO getOrderDAO() {
	return orderDAO;
}
@Resource
public void setOrderDAO(OrderDAO orderDAO) {
	this.orderDAO = orderDAO;
}
 
}
