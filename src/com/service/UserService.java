package com.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;
import com.dao.UserDAO;
import com.entity.User;
@Component
public class UserService {
 private UserDAO userDAO;

 @Transactional
 public void save(User u) throws Exception{
	 u.setImgAddr("default.jpg");
	 userDAO.save(u);
 }
 @Transactional//查询可不加
 public User findOne(String nickname,String pass)throws Exception{
	 User user=userDAO.findOne(nickname, pass);
	 user.setCredit(1+user.getCredit());
	 return user;
 }
 
 @Transactional
 public User finUser(int uid)throws Exception{
	 User user=userDAO.findUser(uid);
	 return user;
 }
 /*@Transactional
 public void updateHead(String img,int id) throws Exception{
	 userDAO.updateHead(img,id);
 }*/
 @Transactional//只有在事物的操作下才能将修改后的数据真正保存到数据库
 public void updateInfo(User u) throws Exception{
	 userDAO.updateInfo(u);
 }
 
 @Transactional
 public List<User> querUsers(int page,int count) throws Exception{
	 return userDAO.queryUsers(page,count);
 }
 @Transactional
 public List<User> querUsers() throws Exception{
	 return userDAO.queryUsers();
 }
 @Transactional
 public int querycount() throws Exception{
	 return userDAO.queryusercount();
 }
public UserDAO getUserDAO() {
	return userDAO;
}
@Resource
public void setUserDAO(UserDAO userDAO) {
	this.userDAO = userDAO;
}
}
