package com.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.dao.GoodDAO;
import com.entity.Good;
import com.entity.GoodDetail;
import com.entity.Images;
import com.entity.User;

@Component
public class GoodService {
 private GoodDAO goodDAO;
@Transactional
 public List<Good> findAll(int cid,int first,int count)throws Exception{
	 return goodDAO.findAll(cid,first,count);
 }
@Transactional
public Good findGood(String gid)throws Exception{
	return goodDAO.findgood(gid);
	
}
@Transactional
public List<Good> findAll()throws Exception{
	 return goodDAO.findAll();
} 
@Transactional
public List<GoodDetail> findDetails(String gid) throws Exception{
  return goodDAO.findDetails(gid);
}
@Transactional
public List<Good> findgood(int cid)throws Exception{
	 return goodDAO.findgood(cid);
}
public GoodDAO getGoodDAO() {
	return goodDAO;
}
@Transactional
public Images findImages(String gid) throws Exception{
	return goodDAO.findImages(gid);
}
@Transactional
public List<Good> findGoodsBykey(String key)throws Exception{
	return goodDAO.findGoodsByKey(key);
}
@Transactional
public GoodDetail findDetail(String size,String gid) throws Exception{
	return goodDAO.findDetail(size,gid);
}
@Transactional
public List<Good> findGoods() throws Exception{
	return goodDAO.findgood();
}
@Transactional
public List<GoodDetail> querGoodDetails() throws Exception{
	return goodDAO.findDetails();
}
@Transactional
public List<Good> findgood(int page, int count) throws Exception {
	return goodDAO.findgood(page, count);
}
@Transactional
public int coun() throws Exception{
	return goodDAO.coun();
}
@Transactional
public void add(Good g) throws Exception {
	goodDAO.add(g);
}
@Transactional
public void add(GoodDetail g) throws Exception {
	goodDAO.add(g);
}
@Resource
public void setGoodDAO(GoodDAO goodDAO) {
	this.goodDAO = goodDAO;
}

}
