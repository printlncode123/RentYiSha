<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>My JSP 'sousuo.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <style>
    .a{width:80%;margin:50px auto;}
    .ge{float:left;margin-right:30px;margin-bottom:30px;}
    </style>
  </head>
  
  <body>
    <%@include file="../public/head.jsp" %>
     <div class="a">
        <c:forEach items="${goods}" var="g">
       <div class="ge">
          <a href="${pageContext.request.contextPath }/good!finddetails.action?good.gid=${g.gid}">
          <img style="width:200px;heigth:300px;" src="${pageContext.request.contextPath }/img/goodimg/${g.imgAddr}" /></a><!--按条件查询限制查找前4个：婚纱-->
          <div>
            <a href="${pageContext.request.contextPath }/good!finddetails.action?good.gid=${g.gid}"><span style="white-space:nowrap;display:block;width:220px;overflow:hidden;text-overflow:ellipsis;">${g.gname }</span></a><br>
            <span>租金：${g.zuMoney }</span>&nbsp;&nbsp;<span>押金：${g.yaMoney }</span>
          </div>
       </div>
       </c:forEach>
     </div>
  </body>
</html>
