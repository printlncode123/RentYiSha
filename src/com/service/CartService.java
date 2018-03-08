package com.service;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.dao.CartDAO;
import com.entity.Cart;
import com.entity.CartDetail;

@Component
public class CartService {
 private CartDAO cartDAO;

 @Transactional
  public void add(Cart c) throws Exception{
	  cartDAO.add(c);
  }
 @Transactional
 public List<Cart> findcCarts()throws Exception{
	 return cartDAO.findCarts();
 }
 @Transactional
 public void add(CartDetail c) throws Exception{
	  cartDAO.add(c);
 }
 @Transactional
 public List<CartDetail> findcCartdetails(int uid)throws Exception{
	 return cartDAO.findCartdetails(uid);
 }
 @Transactional
 public CartDetail findCartDetail(String gid,String size,int cartid) throws Exception{
	 return cartDAO.findCartDetail(gid, size,cartid);
 }
 @Transactional
 public void update(Cart c)throws Exception{
	 cartDAO.update(c);
 }
 @Transactional
 public List<CartDetail> findCartDetails1(String gid) throws Exception{
	 return cartDAO.findCartDetails1(gid);
 }
 @Transactional
 public CartDetail findCartDetail(int id) throws Exception{
	 return cartDAO.findCartDetail(id);
 }
 @Transactional
 public void delete(CartDetail c) throws Exception{
	 cartDAO.delete(c);
 }
 @Transactional
 public List<CartDetail> finDetails2(int cartid) throws Exception{
	 return cartDAO.findCartdetails2(cartid);
 }
 @Transactional
 public Cart findCart(int id) throws Exception{
	 return cartDAO.findCart(id);
 }
 @Transactional
 public void delete(Cart c) throws Exception{
	 cartDAO.delete(c);
 }
 @Transactional
 public CartDetail findCartDetails(String gid,String size) throws Exception{
	 return cartDAO.findCartDetail(gid, size);
 }
 @Transactional
 public int goodCount(int uid) throws Exception{
	 return cartDAO.goodCount(uid);
 }
 @Transactional
 public Cart findCart1(int oid) throws Exception{
	 return cartDAO.findCart(oid);
 }
 @Transactional
 public List<CartDetail> findDetails1() throws Exception{
	 return cartDAO.findCartDetails1();
 }
 @Transactional
 public List<CartDetail> queryCarts(int page, int count) throws Exception {
	return cartDAO.queryCarts(page, count);
}
 @Transactional
public int querycartcount() throws Exception {
	return cartDAO.querycartcount();
}
 public CartDAO getCartDAO() {
	return cartDAO;
}
@Resource
public void setCartDAO(CartDAO cartDAO) {
	this.cartDAO = cartDAO;
}
 
}
