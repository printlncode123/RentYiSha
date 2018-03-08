package com.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

//图片集实体类，每个商品有多个图片
@Entity
@Table(name = "images")
public class Images implements Serializable {
	private static final long serialVersionUID = 1L;
	private int id;
	private String imgAddr1;
	private String imgAddr2;
	private String imgAddr3;
	private Good good;

	@Id
	@GeneratedValue
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getImgAddr1() {
		return imgAddr1;
	}

	public void setImgAddr1(String imgAddr1) {
		this.imgAddr1 = imgAddr1;
	}

	public String getImgAddr2() {
		return imgAddr2;
	}

	public void setImgAddr2(String imgAddr2) {
		this.imgAddr2 = imgAddr2;
	}

	public String getImgAddr3() {
		return imgAddr3;
	}

	public void setImgAddr3(String imgAddr3) {
		this.imgAddr3 = imgAddr3;
	}

	@OneToOne
	@JoinColumn(name = "gid")
	public Good getGood() {
		return good;
	}

	public void setGood(Good good) {
		this.good = good;
	}

}
