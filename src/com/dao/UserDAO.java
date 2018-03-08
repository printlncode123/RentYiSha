package com.dao;

import java.util.List;

import com.entity.User;

public interface UserDAO{
  public void save(User user) throws Exception;
  public User findOne(String nickname,String pass)throws Exception;
  public User findUser(int uid)throws Exception;
  /*public void updateHead(String img,int id)throws Exception;*/
  public void updateInfo(User u)throws Exception;//�޸ĸ�����Ϣ
  public List<User> queryUsers(int page,int count)throws Exception;//���ݵڼ�ҳ��ÿҳ��ʾ�ļ�¼����ѯ����ҳ��
  public int queryusercount()throws Exception;//��ѯ������
  public List<User> queryUsers()throws Exception;
}
