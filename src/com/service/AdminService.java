package com.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.dao.AdminDAO;
import com.entity.Admin;

@Component
public class AdminService {
private AdminDAO adminDAO;
@Transactional
public Admin find(String name,String pass){
	return adminDAO.find(name, pass);
}
public AdminDAO getAdminDAO() {
	return adminDAO;
}
@Resource
public void setAdminDAO(AdminDAO adminDAO) {
	this.adminDAO = adminDAO;
}

}
