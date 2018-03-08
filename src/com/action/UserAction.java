package com.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;
import javax.annotation.Resource;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;
import org.hibernate.cache.OSCache;

import com.entity.Admin;
import com.entity.Cart;
import com.entity.CartDetail;
import com.entity.Good;
import com.entity.GoodDetail;
import com.entity.Orderdetail;
import com.entity.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.service.AdminService;
import com.service.CartService;
import com.service.GoodService;
import com.service.OrderService;
import com.service.UserService;
import com.sun.corba.se.spi.orbutil.fsm.Input;
import com.sun.org.apache.bcel.internal.generic.NEW;
import com.util.RandomUid;

public class UserAction extends ActionSupport implements SessionAware,RequestAware{
 
private static final long serialVersionUID = 1L;
private UserService userService;
  private User u;
  private String conpass;
  private String validate;
  private Admin a;
  private AdminService adminService;
  private CartService cartService;
  private OrderService orderService;
  private GoodService goodService;
  private int page;
  public AdminService getAdminService() {
	return adminService;
}
  @Resource
public void setAdminService(AdminService adminService) {
	this.adminService = adminService;
}
private Map<String, Object> sessionMap;
  private Map<String, Object> requetMap;
  //用户注册
  public String add(){
	  try {
		if (conpass.equals(u.getPass())) {
			SimpleDateFormat s=new SimpleDateFormat("yyyy-MM-dd");
			String ss=s.format(new Date());
			u.setDate(ss);
			u.setRandomid(RandomUid.random());
			userService.save(u);
			return "login";
		}
	} catch (Exception e) {
		e.printStackTrace();
		
	}
	  return "input";
  }
  
  //对验证码校验
  public String valid() throws IOException{
	  String code=(String) ServletActionContext.getRequest().getSession(false).
			  getAttribute("checkcode");
	  System.out.println(code);
	  PrintWriter out=ServletActionContext.getResponse().getWriter();
	  if (!code.equals(validate)) {
		out.print("false");
	}else {
		out.print("true");
	}
	  return NONE;
  }
  
  //登录
  public String findOne(){
	  try {
		User user=userService.findOne(u.getNickname(),u.getPass());
		if (user!=null) {
				sessionMap.put("user", user);//将用户对象保存在session作用域中
			    return "index";
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
	  return "login";
  }
  public String find(){
	  try {
		a=adminService.find(a.getName(), a.getPass());
		if (a!=null) {
			sessionMap.put("admin", a);//将用户对象保存在session作用域中
		    return "indexac";
	}
	} catch (Exception e) {
		e.printStackTrace();
	}
	  return "login";
  }
  public String findAfter(){
	  try {
		/*List<Cart> carts=cartService.findcCarts();
		requetMap.put("carts", carts);
		List<CartDetail> cds=cartService.findDetails1();
		System.out.println(cds);
		requetMap.put("cds", cds);*/
		int ucount=userService.querycount();
		System.out.println(ucount);
		int pages=(ucount%8==0)?ucount/8:(ucount/8+1);//总页数
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
		List<User> ursList=userService.querUsers(currenPage,8);
		requetMap.put("urs", ursList);
		/*List<Orderdetail> osList=orderService.query();
		requetMap.put("os", osList);
		List<GoodDetail> gs=goodService.querGoodDetails();
		requetMap.put("gs", gs);
		List<Good> goods=goodService.findGoods();
		requetMap.put("goods", goods);*/
        return "users";
	} catch (Exception e) {
		e.printStackTrace();
	}
	  return ERROR;
  }
  //查询个人信息，在个人信息页面显示信息
  public String findUserInfo(){
	  try {
		 u=userService.finUser(u.getUid());
		if (u!=null) {
			return "MyInfo";
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
	  return ERROR;
  }
  
  public String exitLogin(){
	  sessionMap.remove("user");
	  return "exit";
  }
  private File f;
  private String imgName;
  private String imageContentType;//上传文件类型
  public File getF() {
	return f;
}

public void setF(File f) {
	this.f = f;
}

public String getImgName() {
	return imgName;
}

public void setImgName(String imgName) {
	this.imgName = imgName;
}

public String getImageContentType() {
	return imageContentType;
}

public void setImageContentType(String imageContentType) {
	this.imageContentType = imageContentType;
}

//更改用户头像
  public String updateImage(){
	  User user=new User();
	  InputStream iStream=null;
	  OutputStream os=null;
	 try {
		 user=userService.finUser(u.getUid());
	    //上传到服务器
	    iStream=new FileInputStream(f);//f表示图片文件对象，上传的图片以File的形式封装
		String p1= ServletActionContext.getServletContext().getRealPath("/upload");//文件要上传到服务器具体的哪个文件夹下
		String path=p1+"/"+imgName;//图片上传到服务器的具体路径
		File pname=new File(p1+"/"+imgName);
		/*System.out.println(f);
		System.out.println(p1);
		System.out.println(imgName);
		FileUtils.copyFile(f, new File(p1, imgName));*/
		System.out.println(f);
		System.out.println(pname);
		System.out.println(imgName);
	    os=new FileOutputStream(pname);
		byte b[]=new byte[1024];
	    int len=0;
		while((len=iStream.read())!=-1){
			System.out.println(len);
			os.write(b, 0, len);
		}
		os.flush();
		os.close();
		iStream.close();
		user.setImgAddr(imgName);
		user.setAddr(u.getAddr());
		requetMap.put("u", user);
		return "ok";
	 }catch (IOException e) {
		e.printStackTrace();
	} catch (Exception e) {
		e.printStackTrace();
	} 
	  return ERROR;
  }
  
  //修改个人信息
  public String updateInfo(){
	  User user=null;
	try {
		user = (User) requetMap.get("u");
		userService.updateInfo(user);
		return "upsuccess";
	} catch (Exception e) {
		e.printStackTrace();
	}
	  return ERROR;
  }
public UserService getUserService() {
	return userService;
}

public User getU() {
	return u;
}
public void setU(User u) {
	this.u = u;
}

public String getConpass() {
	return conpass;
}
public void setConpass(String conpass) {
	this.conpass = conpass;
}

public String getValidate() {
	return validate;
}
public void setValidate(String validate) {
	this.validate = validate;
}
public int getPage() {
	return page;
}
public void setPage(int page) {
	this.page = page;
}
public CartService getCartService() {
	return cartService;
}
public void setCartService(CartService cartService) {
	this.cartService = cartService;
}
@Resource
public void setUserService(UserService userService) {
	this.userService = userService;
}

public void setSession(Map<String, Object> arg0) {
	this.sessionMap=arg0;
	
}

public void setRequest(Map<String, Object> arg0) {

	this.requetMap=arg0;
}

public Admin getA() {
	return a;
}

public void setA(Admin a) {
	this.a = a;
}
public OrderService getOrderService() {
	return orderService;
}
public void setOrderService(OrderService orderService) {
	this.orderService = orderService;
}
public GoodService getGoodService() {
	return goodService;
}
public void setGoodService(GoodService goodService) {
	this.goodService = goodService;
}
  
  
}
