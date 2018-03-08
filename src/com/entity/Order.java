package com.entity;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name = "orderr")
public class Order implements Serializable {
	private static final long serialVersionUID = 1L;
	private int id;
	private String oid;
	private User user;
	/*private Set<Good> good = new HashSet<Good>();// ����Ʒ��Զ�
*//*private Set<Orderdetail> od=new HashSet<Orderdetail>();*/
	
	private String songhuoaddr;// �ͻ���ַ
	private String tel;//�ջ����ֻ���
	private String name;//�ջ�������
	private double money;// �ܼ�
	private int count;// �µ���������
    private Set<Cart> cart=new HashSet<Cart>();//�����͹��ﳵ�Ƕ��һ�Ĺ�ϵ
    
    @Id
    @GeneratedValue
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getOid() {
		return oid;
	}

	public void setOid(String oid) {
		this.oid = oid;
	}

	@ManyToOne
	@JoinColumn(name = "uid")
	public User getUser() {
		return user;
	}
 
	public void setUser(User user) {
		this.user = user;
	}

	/*@ManyToMany(cascade={CascadeType.ALL})
	// �����м���������
	@JoinTable(name = "og_orderdetail", joinColumns = { @JoinColumn(name = "oid") }, inverseJoinColumns = { @JoinColumn(name = "gid") })
	public Set<Good> getGood() {
		return good;
	}

	public void setGood(Set<Good> good) {
		this.good = good;
	}*/
	
    /*@OneToMany(fetch=FetchType.LAZY,cascade ={CascadeType.PERSIST},mappedBy="order")
	public Set<Orderdetail> getOd() {
		return od;
	}

	public void setOd(Set<Orderdetail> od) {
		this.od = od;
	}*/


	public double getMoney() {
		return money;
	}

	public void setMoney(double money) {
		this.money = money;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public String getSonghuoaddr() {
		return songhuoaddr;
	}

	public void setSonghuoaddr(String songhuoaddr) {
		this.songhuoaddr = songhuoaddr;
	}

	@OneToMany(fetch=FetchType.LAZY,cascade=CascadeType.ALL)
	@JoinColumn(name="oid")
	public Set<Cart> getCart() {
		return cart;
	}

	public void setCart(Set<Cart> cart) {
		this.cart = cart;
	}
	
	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	 

}
