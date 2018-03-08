package com.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import javax.persistence.Transient;

import com.sun.jmx.snmp.Timestamp;

//�û�ʵ���ࣨ����Ʒ����Զࣻ�빺�ﳵ��һ�Զࣻ�붩����һ�Զࣩ
@Entity
@Table(name = "user")
public class User implements Serializable {
	private static final long serialVersionUID = 1L;
	private int uid;
	private String uname;
	private String nickname;
	private String randomid;// ע���ϵͳ����������˺�
	private char sex;
	private String tel;
	private String addr;
	private String email;
	private String imgAddr;// �û�ͷ��·��
	// private Set<Good> good=new HashSet<Good>();//˫����� �������޳���//�û�����Ʒ�Ƕ�Զ�Ĺ�ϵ
	private int role;// �û���ɫ
	private String pass;
	private String yanzhengma;
	private int credit;// ����
	private String date;// ע��ʱ��

	@Id
	@GeneratedValue
	// Ĭ��Ϊnative(���п�ƽ̨��������ݿ���MySQL�������͸���MySQL��������������ݿ���orcale�������͸���orcale������)
	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getRandomid() {
		return randomid;
	}

	public void setRandomid(String randomid) {
		this.randomid = randomid;
	}

	public char getSex() {
		return sex;
	}

	public void setSex(char sex) {
		this.sex = sex;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	/*
	 * @ManyToMany
	 * 
	 * @JoinTable(name="ug_cart",joinColumns={@JoinColumn(name="uid")},
	 * inverseJoinColumns={@JoinColumn(name="gid")}) public Set<Good> getGood()
	 * { return good; }
	 * 
	 * public void setGood(Set<Good> good) { this.good = good; }
	 */
	public String getImgAddr() {
		return imgAddr;
	}

	public void setImgAddr(String imgAddr) {
		this.imgAddr = imgAddr;
	}

	public int getRole() {
		return role;
	}

	public void setRole(int role) {
		this.role = role;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	@Transient
	// ��ʱ���Բ����浽���ݿ�
	public String getYanzhengma() {
		return yanzhengma;
	}

	public void setYanzhengma(String yanzhengma) {
		this.yanzhengma = yanzhengma;
	}

	public int getCredit() {
		return credit;
	}

	public void setCredit(int credit) {
		this.credit = credit;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

}
