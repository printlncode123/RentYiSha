package com.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Timestamp;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.entity.Cart;
import com.entity.CartDetail;
import com.entity.Catagory;
import com.entity.Good;
import com.entity.GoodDetail;
import com.entity.Orderdetail;
import com.entity.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.service.CartService;
import com.service.CatagoryService;
import com.service.GoodService;
import com.service.OrderService;
import com.service.UserService;

public class AdminAction extends ActionSupport implements SessionAware,RequestAware{
	
	private static final long serialVersionUID = 1L;
	private Good good;
	private Catagory c;
	private GoodDetail gdetail;
	private CartService cartService;
	  private OrderService orderService;
	  private GoodService goodService;
	  private CatagoryService catagoryService;
	  private int page;
	  private UserService userService;
	  private Map<String, Object> sessionMap;
	  private Map<String, Object> requetMap;
	 public String findGood(){
		  try {
			int ucount=goodService.coun();
			System.out.println(ucount);
			int pages=(ucount%4==0)?ucount/4:(ucount/4+1);//总页数
			System.out.println(pages);
			requetMap.put("pages", pages);
			int currenPage=1;
			if (page>=1) {
				currenPage=page;
			}
			requetMap.put("currentPage", currenPage);
			
			int before=1;
			if (currenPage<=1) {
				before=currenPage;
			}else{
				before=currenPage-1;
			}
			requetMap.put("before", before);
			int after=1;
			if (currenPage>=pages) {
				after=pages;
			}else{
				after=currenPage+1;
			}
			requetMap.put("after", after);
			List<Good> goods=goodService.findgood(currenPage, 4);
			requetMap.put("goods", goods);
	        return "good";
		} catch (Exception e) {
			e.printStackTrace();
		}
		 return ERROR;
	  }
	 private File f;
	 private String imageName;
	 
	 public String addGood(){
		 InputStream is1=null;
		 OutputStream os1=null;
		 try {
			 is1=new FileInputStream(f);
			 String path=ServletActionContext.getServletContext().getRealPath("/upload");
			 os1=new FileOutputStream(new File(path+"/"+imageName));
			 byte b[]=new byte[1024];
			 int len=0;
			 while ((len=is1.read(b))!=-1) {
                os1.write(b, 0, len);				 
			}
			 os1.close();
			 is1.close();
			 good.setImgAddr(imageName);
			 good.setDate(new Timestamp(System.currentTimeMillis()));
			goodService.add(good);
			gdetail.setGood(good);
			goodService.add(gdetail);
			return "newQuery";
		} catch (Exception e) {
			e.printStackTrace();
		}
		 return ERROR;
	 }
	 
	 public String allCatagory(){
		 try {
			List<Catagory> cssg=catagoryService.query();
			requetMap.put("cas", cssg);
			return "allcata";
		} catch (Exception e) {
			e.printStackTrace();
		}
		 return ERROR;
	 }
	 public String findcart(){
		 int ucount;
		try {
			ucount = cartService.querycartcount();
			System.out.println(ucount);
			int pages=(ucount%5==0)?ucount/5:(ucount/5+1);//总页数
			System.out.println(pages);
			requetMap.put("pages", pages);
			int currenPage=1;
			if (page>=1) {
				currenPage=page;
			}
			requetMap.put("currentPage", currenPage);
			int before=1;
			if (currenPage>1) {
				before=currenPage-1;
			}else{
				before=currenPage;
			}
			requetMap.put("before", before);
			int after=1;
			if (currenPage>=pages) {
				after=pages;
			}else{
				after=currenPage+1;
			}
			requetMap.put("after", after);
			List<CartDetail> cds=cartService.queryCarts(currenPage, 5);
			requetMap.put("cds", cds);
			return "carts";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ERROR;
	 }
	public CartService getCartService() {
		return cartService;
	}
	@Resource
	public void setCartService(CartService cartService) {
		this.cartService = cartService;
	}
	public OrderService getOrderService() {
		return orderService;
	}
	@Resource
	public void setOrderService(OrderService orderService) {
		this.orderService = orderService;
	}
	public GoodService getGoodService() {
		return goodService;
	}
	@Resource
	public void setGoodService(GoodService goodService) {
		this.goodService = goodService;
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public void setRequest(Map<String, Object> arg0) {
		this.requetMap=arg0;
		
	}
	public void setSession(Map<String, Object> arg0) {
		this.sessionMap=arg0;
		
	}
	public UserService getUserService() {
		return userService;
	}
	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public CatagoryService getCatagoryService() {
		return catagoryService;
	}

	public void setCatagoryService(CatagoryService catagoryService) {
		this.catagoryService = catagoryService;
	}

	public Catagory getC() {
		return c;
	}

	public void setC(Catagory c) {
		this.c = c;
	}

	public Good getGood() {
		return good;
	}

	public void setGood(Good good) {
		this.good = good;
	}

	public GoodDetail getGdetail() {
		return gdetail;
	}

	public void setGdetail(GoodDetail gdetail) {
		this.gdetail = gdetail;
	}

	public File getF() {
		return f;
	}

	public void setF(File f) {
		this.f = f;
	}

	public String getImageName() {
		return imageName;
	}

	public void setImageName(String imageName) {
		this.imageName = imageName;
	}
}
