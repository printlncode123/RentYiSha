<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'up.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <style>
      *{margin:0px;padding:0px;}
      .upaf{background:#ccc;height:20%;margin-top:-49px;line-height:140px;}
      .zuo{width:250px;height:80%;background:#fdf;}
      .zuo ul li{text-align:center;width:250px;height:30px;line-height:30px;list-style-type:none;}
      .zuo ul li:hover{background:#f3f;}
      .zuo ul li a{text-decoration:none;}
    </style>
  </head>
  <div class="upaf">
    <p align="center" style="font-size:24px;font-weight:500px;letter-spacing;margin-top:50px;"><i>伊莎礼服租赁网站</i></p>
    <p style="margin-left:1200px;margin-top:-110px">欢迎${admin.name }</p>
  </div>
  <div class="zuo">
      <ul>
        <li><a href="/RentYiSha/adminModel!findAfter.action">用户管理</a></li>
        <li><a href="/RentYiSha/adminnewModel.action" >商品管理</a></li>
        <li><a href="/RentYiSha/adminnew!findcart.action" >租赁车管理</a></li>
        <li><a href="">订单管理</a></li>
      </ul>
    </div>
</html>
