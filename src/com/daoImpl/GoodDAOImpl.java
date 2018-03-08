package com.daoImpl;

import java.sql.Timestamp;
import java.util.List;
import javax.annotation.Resource;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Component;
import com.dao.GoodDAO;
import com.entity.Good;
import com.entity.GoodDetail;
import com.entity.Images;
import com.entity.User;
@Component
public class GoodDAOImpl implements GoodDAO{
    private SessionFactory sessionFactory;
	
    public List<Good> findAll(int cid,int first,int count) throws Exception {
    	Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery("from Good g where g.c.id="+cid);
		query.setFirstResult(first);
		query.setMaxResults(count);
		List<Good> goods=query.list(); 
		return goods;
	}

	public Good findgood(String gid) throws Exception {
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery("from Good g where g.gid=?");
		query.setParameter(0, gid);
		return (Good) query.uniqueResult();
	}

	public List<GoodDetail> findDetails(String gid) throws Exception {
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery("from GoodDetail detail where detail.good.gid="+gid);
		return query.list();
		
	}
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	@Resource
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public Images findImages(String gid) throws Exception {
        Session session=sessionFactory.getCurrentSession();
        Query query=session.createQuery("from Images img where img.good.gid="+gid);
		return (Images) query.uniqueResult();
	}

	public List<Good> findGoodsByKey(String key) throws Exception {
        Session session=sessionFactory.getCurrentSession();
        Query query=session.createQuery("from Good g where g.gname like '%"+key+"%' or g.c.name like'%"+key+"%'");
		return query.list();
	}

	public GoodDetail findDetail(String size,String gid) throws Exception {
        Session session=sessionFactory.getCurrentSession();
        Query query=session.createQuery("from GoodDetail detail where detail.size="+size+" and detail.good.gid="+gid);
		return (GoodDetail) query.uniqueResult();
	}

	public List<Good> findgood() throws Exception {
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery("from Good g order by g.date desc");
		return query.list();
	}

	public List<Good> findAll() throws Exception {
		Session session=sessionFactory.getCurrentSession();
        Query query=session.createQuery("from Good g");
		return query.list();
	}

	public List<Good> findgood(int cid) throws Exception {
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery("from Good g where g.c.id="+cid);
		return query.list(); 
	}

	public List<GoodDetail> findDetails() throws Exception {
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery("from GoodDetail g");
		return query.list();
		
	}

	public List<Good> findgood(int page, int count) throws Exception {
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery("from Good g");
		if(page>=1){
		query.setFirstResult((page-1)*count);
		query.setMaxResults(count);
		
		}
		return query.list();
		
	}

	public int coun() throws Exception {
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery("select count(gid) from Good g");
		return ((Number)query.uniqueResult()).intValue();
	}

	public void add(Good g) throws Exception {
		Session session=sessionFactory.getCurrentSession();
		session.save(g);
		
	}

	public void add(GoodDetail g) throws Exception {
		Session session=sessionFactory.getCurrentSession();
		session.save(g);
		
	}


}
