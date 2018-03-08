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
 public CartDetail findCartDetail(String gid,String size,int cartid)throws Exception;//������Ʒid�ͳߴ��ѯ������
 public CartDetail findCartDetail(String gid,String size)throws Exception;//������Ʒid�ͳߴ��ѯ������
 public CartDetail findCartDetail(int id)throws Exception;//����id��ѯ������
 public void update(Cart cart)throws Exception;
 public void delete(CartDetail c)throws Exception;//����idɾ��������
 public void delete(Cart c)throws Exception;//����idɾ��������
 public Cart findCart(int id)throws Exception;//����id��ѯ���ﳵ
 public Cart findCart1(int oid)throws Exception;//����oid��ѯ���ﳵ
 public List<CartDetail> findCartDetails1(String gid)throws Exception;
 public int goodCount(int uid)throws Exception;
 public List<CartDetail> findCartDetails1()throws Exception;
 public List<CartDetail> queryCarts(int page,int count)throws Exception;//���ݵڼ�ҳ��ÿҳ��ʾ�ļ�¼����ѯ����ҳ��
 public int querycartcount()throws Exception;//��ѯ������
}
