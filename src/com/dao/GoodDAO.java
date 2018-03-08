package com.dao;

import java.util.List;
import com.entity.Good;
import com.entity.GoodDetail;
import com.entity.Images;
import com.entity.User;

public interface GoodDAO {

	public List<Good> findAll() throws Exception;//查询所有商品
	public List<Good> findAll(int cid,int first,int count) throws Exception;//查询所有的商品
	public List<Good> findgood(int cid) throws Exception;
	public Good findgood(String gid) throws Exception;//根据id 找到某商品
	public List<Good> findgood() throws Exception;//根据时间 找到某商品
	public List<GoodDetail> findDetails(String gid) throws Exception;//根据商品id 查询商品 详情
    public Images findImages(String gid)throws Exception;//通过gid找到关联的图片
    public List<Good> findGoodsByKey(String key)throws Exception;//根据关键字查询（商品名,种类）
    public GoodDetail findDetail(String size,String gid)throws Exception;//根据尺寸和商品id拿到指定详情记录
    public List<GoodDetail> findDetails()throws Exception;
    public List<Good> findgood(int page,int count)throws Exception;
    public int coun()throws Exception;
    public void add(Good g) throws Exception;
    public void add(GoodDetail g)throws Exception;
}
