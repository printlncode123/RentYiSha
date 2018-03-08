package com.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.entity.Catagory;
import com.entity.Good;
import com.entity.GoodDetail;
import com.entity.Images;
import com.entity.Orderdetail;
import com.opensymphony.xwork2.ActionSupport;
import com.service.CatagoryService;
import com.service.GoodService;
import com.service.OrderService;

public class GoodAction extends ActionSupport implements SessionAware,RequestAware{
	private static final long serialVersionUID = 1L;
    private GoodService goodService;
    private CatagoryService catagoryService;
    private OrderService orderService;
	private List<Good> goods;
	private Good good;
	private Images images;
	List<GoodDetail> details;
	List<Catagory> catagories;
	private Map<String, Object> secMap;
	private Map<String, Object> reqMap;
	public String index(){
		return "index";
	}
	//根据婚纱id 获取前10个
	/*public String findWeddingLimit(){
		try {
			goods=goodService.findAll(2,0,10);
			return "index";
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ERROR;
	}*/
	//根据晚礼服id 获取前5个,根据婚纱id 获取前10个，根据敬酒服id 获取前6个，根据西服id获取前6个
	public String findAll(){
		try {
			goods=goodService.findAll(1,0,5);
			List<Good> goods1=goodService.findAll(2,0,10);
			reqMap.put("goods1", goods1);
			List<Good> goods2=goodService.findAll(2,10,6);
			reqMap.put("goods2", goods2);
			List<Good> goods3=goodService.findAll(3,0,6);
			reqMap.put("goods3", goods3);
			catagories=catagoryService.query();
			List<Orderdetail> orderdetails=orderService.query();
			reqMap.put("os", orderdetails);
			System.out.println(catagories);
			return "index";
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ERROR;
	}
	//根据id找到某个商品
	public String findGood(){
		try {
			good=goodService.findGood(good.getGid());
			return "";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "error";
	}
	public GoodService getGoodService() {
		return goodService;
	}
    public String finddetails(){
    	try {
			details=goodService.findDetails(good.getGid());
			good=goodService.findGood(good.getGid());
			images=goodService.findImages(good.getGid());
			return "goodDetail";
		} catch (Exception e) {
			e.printStackTrace();
		}
    	return ERROR;
    }
    /*List<String> de=new ArrayList<String>();
    String det[]=null;
		if(good.getDetail().matches("[jpg|png|gif]")) {
			det=good.getDetail().split(",");
		    for (String string : det) {
				de.add(string);
			}
		}
	reqMap.put("de", de);
	System.out.println(de);*/
    public String  findByKey(){
    
    	try {
			goods=goodService.findGoodsBykey(good.getKey());
			return "findByKey";
		} catch (Exception e) {
			e.printStackTrace();
		}
    	return ERROR ;
    }
   /* public String findImages(){
    	try {
			images=goodService.findImages(good.getGid());
		} catch (Exception e) {
			e.printStackTrace();
		}
    	return ERROR;
    }*/
    //新品
    public String findGoodsNew(){
    	try {
			goods=goodService.findGoods();
			return "findnew";
		} catch (Exception e) {
			e.printStackTrace();
		}
    	return ERROR;
    }
	@Resource
	public void setGoodService(GoodService goodService) {
		this.goodService = goodService;
	}

	public CatagoryService getCatagoryService() {
		return catagoryService;
	}
	public void setCatagoryService(CatagoryService catagoryService) {
		this.catagoryService = catagoryService;
	}
	public List<Good> getGoods() {
		return goods;
	}

	public void setGoods(List<Good> goods) {
		this.goods = goods;
	}
	

	public Good getGood() {
		return good;
	}

	public void setGood(Good good) {
		this.good = good;
	}

	
	public List<GoodDetail> getDetails() {
		return details;
	}

	public void setDetails(List<GoodDetail> details) {
		this.details = details;
	}

	
	public List<Catagory> getCatagories() {
		return catagories;
	}
	public void setCatagories(List<Catagory> catagories) {
		this.catagories = catagories;
	}
	public Images getImages() {
		return images;
	}

	public void setImages(Images images) {
		this.images = images;
	}

	public void setRequest(Map<String, Object> arg0) {

		this.secMap=arg0;
	}

	public void setSession(Map<String, Object> arg0) {
        this.reqMap=arg0;		
	}
	public OrderService getOrderService() {
		return orderService;
	}
	public void setOrderService(OrderService orderService) {
		this.orderService = orderService;
	}

}
