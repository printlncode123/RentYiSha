package com.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;
import com.dao.CatagoryDAO;
import com.entity.Catagory;
@Component
public class CatagoryService {
 private CatagoryDAO catagoryDAO;
 
 @Transactional
 public void add(Catagory c) throws Exception{
	 catagoryDAO.add(c);
 }
 @Transactional
 public List<Catagory> query()throws Exception{
	 return catagoryDAO.queryAll();
 }
public CatagoryDAO getCatagoryDAO() {
	return catagoryDAO;
}
@Resource(name="catagoryDaoImpl")
public void setCatagoryDAO(CatagoryDAO catagoryDAO) {
	this.catagoryDAO = catagoryDAO;
}
 
}
