package com.dao;

import java.util.List;

import com.entity.Catagory;

public interface CatagoryDAO {
 public void add(Catagory c) throws Exception;
 public void delete(int id)throws Exception;
 public List<Catagory> queryAll() throws Exception;
 public void update(int id) throws Exception;
}
