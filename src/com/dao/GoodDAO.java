package com.dao;

import java.util.List;
import com.entity.Good;
import com.entity.GoodDetail;
import com.entity.Images;
import com.entity.User;

public interface GoodDAO {

	public List<Good> findAll() throws Exception;//��ѯ������Ʒ
	public List<Good> findAll(int cid,int first,int count) throws Exception;//��ѯ���е���Ʒ
	public List<Good> findgood(int cid) throws Exception;
	public Good findgood(String gid) throws Exception;//����id �ҵ�ĳ��Ʒ
	public List<Good> findgood() throws Exception;//����ʱ�� �ҵ�ĳ��Ʒ
	public List<GoodDetail> findDetails(String gid) throws Exception;//������Ʒid ��ѯ��Ʒ ����
    public Images findImages(String gid)throws Exception;//ͨ��gid�ҵ�������ͼƬ
    public List<Good> findGoodsByKey(String key)throws Exception;//���ݹؼ��ֲ�ѯ����Ʒ��,���ࣩ
    public GoodDetail findDetail(String size,String gid)throws Exception;//���ݳߴ����Ʒid�õ�ָ�������¼
    public List<GoodDetail> findDetails()throws Exception;
    public List<Good> findgood(int page,int count)throws Exception;
    public int coun()throws Exception;
    public void add(Good g) throws Exception;
    public void add(GoodDetail g)throws Exception;
}
