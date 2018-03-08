package com.dao;

import java.util.List;

import com.entity.User;

public interface UserDAO{
  public void save(User user) throws Exception;
  public User findOne(String nickname,String pass)throws Exception;
  public User findUser(int uid)throws Exception;
  /*public void updateHead(String img,int id)throws Exception;*/
  public void updateInfo(User u)throws Exception;//修改个人信息
  public List<User> queryUsers(int page,int count)throws Exception;//根据第几页和每页显示的记录数查询（分页）
  public int queryusercount()throws Exception;//查询总人数
  public List<User> queryUsers()throws Exception;
}
