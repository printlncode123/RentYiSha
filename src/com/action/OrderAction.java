package com.action;

import java.sql.Timestamp;
import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;
import com.entity.Cart;
import com.entity.CartDetail;
import com.entity.Order;
import com.entity.Orderdetail;
import com.entity.User;
import com.opensymphony.xwork2.ActionSupport;
import com.service.CartService;
import com.service.GoodService;
import com.service.OrderService;
import com.util.OrderUtil;

public class OrderAction extends ActionSupport implements SessionAware,RequestAware{
private static final long serialVersionUID = 1L;
private OrderService orderService;
private CartService cartService;
private GoodService goodService;
 private Order order;
 private Orderdetail orderDetail=new Orderdetail();
 private Cart cart;
 private CartDetail cdetail;
 private Map<String, Object> sessionMap;
 private Map<String, Object> requestMap;
 private String gid;
 public String add(){
	 try {  
		cart=cartService.findCart(cart.getId());
		order.setOid(OrderUtil.getOrderId());
		User user=(User) sessionMap.get("user");
		System.out.println(user.getNickname());
		order.setUser(user);
		order.getCart().add(cart);
		orderService.add(order);
		cdetail.getGood().setGid(gid);
        orderDetail.setId(user.getUid()+OrderUtil.getOrderDetailId());
	    long l=System.currentTimeMillis();
	    Timestamp date=new Timestamp(l);
	    orderDetail.setDate(Timestamp.valueOf(date.toString().substring(0, date.toString().indexOf("."))));
	    Timestamp date2=OrderUtil.getTimeDate(l, 1);
	    orderDetail.setDate1(Timestamp.valueOf(date2.toString().substring(0,date2.toString().indexOf("."))));
	    Timestamp date3=OrderUtil.getTimeDate(l, 2);
	    orderDetail.setDate2(Timestamp.valueOf(date3.toString().substring(0,date2.toString().indexOf("."))));
	    orderDetail.setGood(cdetail.getGood());
 	    orderDetail.setOrder(order);
 	    orderDetail.setState(0);
 	   orderService.add(orderDetail);
 	    return "orderGenerate";
	 } catch (Exception e) {
		e.printStackTrace();
	}
	 return ERROR;
 }

 public String findorders(){
	 try {
		 User user=(User)sessionMap.get("user");
		 if (user==null) {
			return "login";
		}else{
		List<Orderdetail> orderdetails=orderService.findOrderdetail(user.getUid());
		requestMap.put("orderdetails", orderdetails);
		return "findorders";
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
	 return ERROR;
 }
 
 public String delete(){
	 try {
		orderDetail=orderService.finddetail(order.getId());
		orderService.deleteod(orderDetail);//先删除订单明细里的内容
		order=orderService.findOrder(order.getId());
		return "deleteod";
	} catch (Exception e) {
		e.printStackTrace();
	}
	 return ERROR;
 }
 
 public String query(){
	 try {
		List<Orderdetail> orderdetails=orderService.query();
		for (int i = 0; i < orderdetails.size()-1; i++) {
			for (int j = i+1; j < orderdetails.size(); j++) {
				if (orderdetails.get(i).getGood()==orderdetails.get(j).getGood()) {
					orderdetails.remove(j);
				}
			}
		}
        requestMap.put("os", orderdetails);
        return "querylimit";
	 } catch (Exception e) {
		e.printStackTrace();
	}
	 return ERROR;
 }
 public OrderService getOrderService() {
	return orderService;
}
@Resource
public void setOrderService(OrderService orderService) {
	this.orderService = orderService;
}
public Order getOrder() {
	return order;
}
public void setOrder(Order order) {
	this.order = order;
}
public CartService getCartService() {
	return cartService;
}
public void setCartService(CartService cartService) {
	this.cartService = cartService;
}
public Cart getCart() {
	return cart;
}
public void setCart(Cart cart) {
	this.cart = cart;
}

public void setRequest(Map<String, Object> arg0) {
    requestMap=arg0;	
}


public CartDetail getCdetail() {
	return cdetail;
}
public void setCdetail(CartDetail cdetail) {
	this.cdetail = cdetail;
}
public Map<String, Object> getSessionMap() {
	return sessionMap;
}

public Map<String, Object> getRequestMap() {
	return requestMap;
}

public void setSession(Map<String, Object> arg0) {
    sessionMap=arg0;	
}
public Orderdetail getOrderDetail() {
	return orderDetail;
}
public void setOrderDetail(Orderdetail orderDetail) {
	this.orderDetail = orderDetail;
}
public String getGid() {
	return gid;
}
public void setGid(String gid) {
	this.gid = gid;
}
public GoodService getGoodService() {
	return goodService;
}
public void setGoodService(GoodService goodService) {
	this.goodService = goodService;
}
}
