package com.action;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.struts2.interceptor.RequestAware;

import com.entity.Catagory;
import com.entity.Good;
import com.opensymphony.xwork2.ActionSupport;
import com.service.CatagoryService;
import com.service.GoodService;

public class CatagoryAction extends ActionSupport implements RequestAware{
	private static final long serialVersionUID = 1L;
	private CatagoryService catagoryService;
	private Catagory c;
	private Map<String, Object> req;
	private GoodService goodService;
    public String add(){
    	try {
			catagoryService.add(c);
			return "addSuccess";
		} catch (Exception e) {
			e.printStackTrace();
		}
    	return ERROR;
    }
    public String queryAll(){
    	try {
			List<Catagory> catagories=catagoryService.query();
			List<Good> goods=goodService.findAll();
			req.put("goods", goods);
			if (catagories!=null) {
				req.put("catagories", catagories);
				return "querySuccess";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
    	return ERROR;
    }
    
    public String findgoodByCid(){
    	try {
			List<Good> goods=goodService.findgood(c.getId());
            req.put("goods", goods);
            List<Catagory> catagories=catagoryService.query();
            req.put("catagories", catagories);
            return "findByCid";
    	} catch (Exception e) {
			e.printStackTrace();
		}
    	return ERROR;
    }
	public Catagory getC() {
		return c;
	}

	public void setC(Catagory c) {
		this.c = c;
	}

	public CatagoryService getCatagoryService() {
		return catagoryService;
	}
	@Resource
	public void setCatagoryService(CatagoryService catagoryService) {
		this.catagoryService = catagoryService;
	}
	public void setRequest(Map<String, Object> arg0) {
		this.req=arg0;
		
	}
	public GoodService getGoodService() {
		return goodService;
	}
	public void setGoodService(GoodService goodService) {
		this.goodService = goodService;
	}
    
}
