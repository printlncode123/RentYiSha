package com.action;

import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import net.sf.json.JSONObject;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;
import com.entity.Cart;
import com.entity.CartDetail;
import com.entity.Good;
import com.entity.User;
import com.opensymphony.xwork2.ActionSupport;
import com.service.CartService;
import com.service.GoodService;

public class CartAction extends ActionSupport implements SessionAware,
		RequestAware {

	private static final long serialVersionUID = 1L;
	private CartService cartService;
	private Cart cart;
	private Map<String, Object> sessionMap;
	private Map<String, Object> requestMap;
	private String gid;
	private String detail;// 接受前台页面传过来的尺寸
	private GoodService goodService;
    private CartDetail cadetail;
	public String add() {
		try {
			Good good = goodService.findGood(gid);
			User user=(User) (sessionMap.get("user"));
			if (user==null) {
				return "login";
			}else{
			cart.setUser(user);
			cart.setSumprice((good.getZuMoney() + good.getYaMoney())
					* cart.getGoodCount());
			cartService.add(cart);
			CartDetail cartDetail = new CartDetail();
				cartDetail.setCart(cart);
				cartDetail.setGood(good);
				cartDetail.setSize(detail);
				cartService.add(cartDetail);
			return "success";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ERROR;
	}

	public String findcarts() {
		try {
			User user = (User) sessionMap.get("user");
			if(user==null){
				return "login";
			}
			else{
			int id = user.getUid();
			List<CartDetail> cartDetails = cartService.findcCartdetails(id);
			requestMap.put("cartdetails", cartDetails);
			int sumcount=cartService.goodCount(id);
			requestMap.put("sumcount", sumcount);
			return "findcarts";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ERROR;
	}

	public String addCount() {
		try {
			CartDetail cartDetail = cartService.findCartDetail(gid, detail,cart.getId());
			if (cartDetail != null) {
				cart = cartDetail.getCart();
				int coun = cart.getGoodCount();coun++;
				double sumprice = cartDetail.getCart().getSumprice();
				sumprice += cartDetail.getGood().getYaMoney()
						+ cartDetail.getGood().getZuMoney();
				cart.setGoodCount(coun);
				cart.setSumprice(sumprice);
				cart.setUser((User) (sessionMap.get("user")));
				cartService.update(cart);
				String json = JSONObject.fromObject(cart).toString();
				HttpServletResponse response = ServletActionContext
						.getResponse();
				response.getWriter().print(json);
				response.setContentType("text/html;charset=UTF-8");
				return NONE;
			}} catch (Exception e) {
			e.printStackTrace();}
		return ERROR;
	}

	public String deleteCount() {
		try {
			CartDetail cartDetail = cartService.findCartDetail(gid, detail,cart.getId());
			if (cartDetail != null) {
				cart = cartDetail.getCart();
				int coun = cart.getGoodCount();
				double sumprice = cartDetail.getCart().getSumprice();
				if (coun <= 1) {
					coun = 1;
				} else {
					coun--;
					sumprice -= cartDetail.getGood().getYaMoney()
							+ cartDetail.getGood().getZuMoney();
					cart.setGoodCount(coun);
					cart.setSumprice(sumprice);
					cart.setUser((User) (sessionMap.get("user")));
					cartService.update(cart);
					String json = JSONObject.fromObject(cart).toString();
					HttpServletResponse response = ServletActionContext
							.getResponse();
					response.getWriter().print(json);
					response.setContentType("text/html;charset=UTF-8");
				}
				return NONE;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return ERROR;
	}
    
	public String delete(){
		try {
			cadetail=cartService.findCartDetail(cadetail.getId());
			cartService.delete(cadetail);
            	cart=cartService.findCart(cart.getId());
				cartService.delete(cart);
            return "deleteSuccess";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ERROR;
	}
	
	public String checkone(){
		try {
			cart=cartService.findCart(cart.getId());
			String json=JSONObject.fromObject(cart).toString();
			ServletActionContext.getResponse().getWriter().print(json);
			return NONE;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ERROR;
	}
	//根据购物车id获取购物项
	public String finddetail(){
		try {
			List<CartDetail> cartDetails=cartService.finDetails2(cart.getId());
			requestMap.put("cartdetails", cartDetails);
			return "order";
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

	public Cart getCart() {
		return cart;
	}

	public void setCart(Cart cart) {
		this.cart = cart;
	}

	public void setSession(Map<String, Object> arg0) {
		sessionMap = arg0;
	}

	public Map<String, Object> getSessionMap() {
		return sessionMap;
	}

	public Map<String, Object> getRequestMap() {
		return requestMap;
	}

	public void setRequest(Map<String, Object> arg0) {
		requestMap = arg0;
	}

	public String getGid() {
		return gid;
	}

	public void setGid(String gid) {
		this.gid = gid;
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public GoodService getGoodService() {
		return goodService;
	}

	public void setGoodService(GoodService goodService) {
		this.goodService = goodService;
	}

	public CartDetail getCadetail() {
		return cadetail;
	}

	public void setCadetail(CartDetail cadetail) {
		this.cadetail = cadetail;
	}

	
}
