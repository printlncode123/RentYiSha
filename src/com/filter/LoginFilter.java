package com.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

public class LoginFilter implements Filter {

	public void destroy() {
		System.out.println("destory");

	}

	public void doFilter(ServletRequest req, ServletResponse reps,
			FilterChain chain) throws IOException, ServletException {
		if (ServletActionContext.getRequest().getRequestURI().indexOf("userModel!findOne.action")>0||ServletActionContext.getRequest().getRequestURI().indexOf("login.html")>0) {
			chain.doFilter(req, reps);
		}else{
			HttpServletRequest request=(HttpServletRequest) req;
			request.getRequestDispatcher("/RentYiSha/html/login.html").forward(request, (HttpServletResponse)reps);
			
		}

	}

	public void init(FilterConfig arg0) throws ServletException {
        System.out.println("init");
	}

}
