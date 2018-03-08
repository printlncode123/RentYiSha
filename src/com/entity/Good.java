package com.entity;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;

//��Ʒʵ����
@Entity
@Table(name = "good")
public class Good implements Serializable {

	private static final long serialVersionUID = 1L;
	private String gid;
	private String gname;// ����
	private double zuMoney;// ���
	private double yaMoney;// Ѻ��
	private Catagory c;// �����Ʒ������Ƕ��һ�Ĺ�ϵ
	private String imgAddr;// ��ƷͼƬ�ĵ�ַ
	private String brand;// Ʒ��
	private String proAddr;// ����
	private double money;// Ѻ��
	private String detail;// ����
	private Timestamp date;// ����ʱ��
	private long rest;// �����
	private String key;//�ؼ�������ƥ���ѯ����Ϊtransient�����־û������ݿ�
	/*private Set<Orderdetail> od=new HashSet<Orderdetail>();*/
	@Id
	public String getGid() {
		return gid;
	}

	public void setGid(String gid) {
		this.gid = gid;
	}

	public String getGname() {
		return gname;
	}

	public void setGname(String gname) {
		this.gname = gname;
	}

	public double getZuMoney() {
		return zuMoney;
	}

	public void setZuMoney(double zuMoney) {
		this.zuMoney = zuMoney;
	}

	public double getYaMoney() {
		return yaMoney;
	}

	public void setYaMoney(double yaMoney) {
		this.yaMoney = yaMoney;
	}

	@ManyToOne
	@JoinColumn(name = "cid")
	public Catagory getC() {
		return c;
	}

	public void setC(Catagory c) {
		this.c = c;
	}

	public String getImgAddr() {
		return imgAddr;
	}

	public void setImgAddr(String imgAddr) {
		this.imgAddr = imgAddr;
	}

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	public String getProAddr() {
		return proAddr;
	}

	public void setProAddr(String proAddr) {
		this.proAddr = proAddr;
	}

	public double getMoney() {
		return money;
	}

	public void setMoney(double money) {
		this.money = money;
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public Timestamp getDate() {
		return date;
	}

	public void setDate(Timestamp date) {
		this.date = date;
	}

	public long getRest() {
		return rest;
	}

	public void setRest(long rest) {
		this.rest = rest;
	}

	@Transient
	public String getKey() {
		return key;
	}

	public void setKey(String key) {
		this.key = key;
	}



	/*@OneToMany(fetch=FetchType.LAZY,mappedBy="good",cascade ={CascadeType.PERSIST})
	public Set<Orderdetail> getOd() {
		return od;
	}

	public void setOd(Set<Orderdetail> od) {
		this.od = od;
	}*/

	
}
