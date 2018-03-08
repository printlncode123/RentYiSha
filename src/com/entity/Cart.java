package com.entity;

import java.io.Serializable;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name = "ug_cart")
public class Cart implements Serializable {
	private static final long serialVersionUID = 1L;
	private int id;
	private User user;// ���ﳵ���û����һ
	private int goodCount;// ĳ��Ʒ���빺�ﳵ������
	private int count;// ��ѡ���ﳵ����ܼ���
	private double sumprice;// ���ﳵ��ѡ�е���Ʒ�ϼƼ۸�
	@Id
	@GeneratedValue
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@ManyToOne
	@JoinColumn(name = "uid")
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public int getGoodCount() {
		return goodCount;
	}

	public void setGoodCount(int goodCount) {
		this.goodCount = goodCount;
	}

	@Transient//��ʱ�������־û������ݿ�
	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public double getSumprice() {
		return sumprice;
	}

	public void setSumprice(double sumprice) {
		this.sumprice = sumprice;
	}

}
