package com.dao;

import java.util.List;

import com.entity.Cart;
import com.entity.Good;
import com.entity.Order;
import com.entity.Orderdetail;

public interface OrderDAO {

	public void add(Order o)throws Exception;
	public void add(Orderdetail o)throws Exception;
	public void updatedetail(Orderdetail o)throws Exception;
	public Orderdetail finddetail(Cart c,Good g)throws Exception;
	public List<Order> findOrders(int uid)throws Exception;
	public Orderdetail finddetail(int oid)throws Exception;
	public List<Orderdetail> findOrderdetail(int uid)throws Exception;
	/*public void delete(int id)throws Exception;//���ݶ������ɾ������
	public void deleteod(int oid)throws Exception;//���ݶ������ɾ������
*/
	public void delete(Orderdetail orderdetail)throws Exception;//���ݶ������ɾ������
	public void deleteod(Order order)throws Exception;//���ݶ������ɾ������
	public Order findOrder(int id)throws Exception;
	public List<Orderdetail> query()throws Exception;//������Ʒid��ѯ����״̬Ϊ2���ִ������ļ�¼
	}
