package com.entity;

import java.io.Serializable;
import java.sql.Timestamp;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

//商品详情实体类
@Entity
@Table(name="gooddetail")
public class GoodDetail implements Serializable{
	
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue
 private int id;
 private Good good;//详情与商品是多对一的关系
 private String size;//尺寸
 //private String color;//颜色

 @Id
 @GeneratedValue
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}

@ManyToOne
@JoinColumn(name="gid")
public Good getGood() {
	return good;
}
public void setGood(Good good) {
	this.good = good;
}
public String getSize() {
	return size;
}
public void setSize(String size) {
	this.size = size;
}

/*public String getColor() {
	return color;
}
public void setColor(String color) {
	this.color = color;
}*/

 
 
}
