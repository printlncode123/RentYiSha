package com.dao;

import java.util.List;

import com.entity.Cart;
import com.entity.CartDetail;
import com.entity.User;

public interface CartDAO {
 public void add(Cart c)throws Exception;
 public void add(CartDetail c)throws Exception;
 public List<Cart> findCarts()throws Exception;
 public List<CartDetail> findCartdetails(int uid)throws Exception;
 public List<CartDetail> findCartdetails2(int cartid)throws Exception;
 public CartDetail findCartDetail(String gid,String size,int cartid)throws Exception;//根据商品id和尺寸查询购物项
 public CartDetail findCartDetail(String gid,String size)throws Exception;//根据商品id和尺寸查询购物项
 public CartDetail findCartDetail(int id)throws Exception;//根据id查询购物项
 public void update(Cart cart)throws Exception;
 public void delete(CartDetail c)throws Exception;//根据id删除购物项
 public void delete(Cart c)throws Exception;//根据id删除购物项
 public Cart findCart(int id)throws Exception;//根据id查询购物车
 public Cart findCart1(int oid)throws Exception;//根据oid查询购物车
 public List<CartDetail> findCartDetails1(String gid)throws Exception;
 public int goodCount(int uid)throws Exception;
 public List<CartDetail> findCartDetails1()throws Exception;
 public List<CartDetail> queryCarts(int page,int count)throws Exception;//根据第几页和每页显示的记录数查询（分页）
 public int querycartcount()throws Exception;//查询总人数
}
