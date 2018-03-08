<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'head.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="/RentYiSha/css/index.css">
    <script src="/RentYiSha/js/jquery.js" type="text/javascript"></script>
    <script src="/RentYiSha/js/index.js"></script>
    <script type="text/javascript">
 
     function se(){
       var a=document.getElementsByName("search").item(0).value;
       return a;
     }

    </script>
  </head>
  
  <body>
    <div id="noChange">
    <div class="head">
     <div class="head-one">
      <div class="">
       <img src="/RentYiSha/img/index_icon.PNG" alt="index_icon.png"/>
       <a class="index_icon" href="${pageContext.request.contextPath }/goodModel.action">伊莎首页</a>
      </div>
      <ul>
      <c:choose>
       <c:when test="${user==null}">
         <li> <a href="/RentYiSha/jsp/enter/registBefore.jsp">注册</a>&nbsp;<a href="/RentYiSha/html/login.html">登录</a></li>
       </c:when>
       <c:otherwise>
          <li style="font-size:14px">欢迎<a href="/RentYiSha/finduinfo.action?u.uid=${user.uid }">${user.nickname}</a></li>
          <li style="font-size:14px"><a href="/RentYiSha/userModel!exitLogin.action">退出登录</a>
       </c:otherwise>
    </c:choose>
       <li><a href="${pageContext.request.contextPath }/carts.action">租赁车</a></li>
       <li><a href="${pageContext.request.contextPath }/order!findorders.action">我的订单</a></li>
      </ul>
     </div>
    </div>
    <div class="top">
      <div class="logo"><img src="/RentYiSha/img/logo4.png" /></div>
      <div class="search">
        <input type="text" name="search" placeholder="搜索礼服" />
          <%-- <a onclick="window.location.href='${pageContext.request.contextPath }/good!findByKey.action?good.key='+s();" style="cursor:pointer">搜索</a> --%>
          <a onclick="window.location.href='${pageContext.request.contextPath }/good!findByKey.action?good.key='+document.getElementsByName('search').item(0).value;" style="cursor:pointer">搜索</a>
      </div>
      <div class="top-last"><a>婚纱</a><a>晚礼服</a><a>学士服</a><a>民国服</a><a>西服</a><a>民族服</a><a>古代服装</a></div>
    </div>
    <div class="nav">
     <ul>
       <li><a href="${pageContext.request.contextPath }/goodModel.action">首页</a></li>
       <li><a href="${pageContext.request.contextPath }/good!findGoodsNew.action">新品</a></li>
       <li><a href="${pageContext.request.contextPath }/orderModel!query.action">热门</a></li>
       <li><a href="${pageContext.request.contextPath }/catagory!queryAll.action">分类</a></li>
       <li><a href="#">配饰</a></li>
       <li><a href="/RentYiSha/jsp/liucheng.jsp">租赁流程</a></li>
       <li><a href="#">关于我们</a></li>                     
     </ul>
    </div>
   </div>
   
  </body>
</html>
