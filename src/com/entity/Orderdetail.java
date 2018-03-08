package com.entity;

import java.io.Serializable;
import java.sql.Timestamp;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;

/**
 * @author Administrator
 * 
 */
@Entity
@Table(name = "order_detail")
public class Orderdetail implements Serializable {

	private static final long serialVersionUID = 1L;
	private String id;
	private Timestamp date;// 订单生成时间
	private Timestamp date1;// 发货时间
	private Timestamp date2;// 收货时间
	private Good good;
	private Order order;
   /* private GoodDetail goodDetail;*/
    private String size;
    private int state;
    
	public Orderdetail() {
		super();
	}

	public Orderdetail(String id, Timestamp date, Timestamp date1,
			Timestamp date2, Good good, Order order, String size, int state) {
		super();
		this.id = id;
		this.date = date;
		this.date1 = date1;
		this.date2 = date2;
		this.good = good;
		this.order = order;
		this.size = size;
		this.state = state;
	}

	@Id
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Timestamp getDate() {
		return date;
	}

	public void setDate(Timestamp date) {
		this.date = date;
	}

	public Timestamp getDate1() {
		return date1;
	}

	public void setDate1(Timestamp timestamp) {
		this.date1 = timestamp;
	}

	public Timestamp getDate2() {
		return date2;
	}

	public void setDate2(Timestamp date2) {
		this.date2 = date2;
	}

	@ManyToOne
	@Cascade(CascadeType.SAVE_UPDATE)
	@JoinColumn(name = "gid")
	public Good getGood() {
		return good;
	}

	public void setGood(Good good) {
		this.good = good;
	}

	@ManyToOne
	@Cascade(CascadeType.SAVE_UPDATE)
	@JoinColumn(name = "oid")
	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	/*@OneToOne
	@JoinColumn(name="gdetail_id")
	public GoodDetail getGoodDetail() {
		return goodDetail;
	}

	public void setGoodDetail(GoodDetail goodDetail) {
		this.goodDetail = goodDetail;
	}*/

	
	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}


	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}
	
}
