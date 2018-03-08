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
    
    <title>My JSP 'users.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <style>
      table{width:1100px;margin:-507px 245px;}
      table tr td{border:1px solid;}
    </style>
  </head>
  
  <body>
     <%@include file="public/up.jsp" %>
    <div class="right">
        <table style="border:1px solid;border-collapse:collapse;">
         <tr>
          <td>用户名 </td><td>密码 </td><td>手机号 </td><td>住址 </td><td>积分 </td><td>昵称 </td>
          <td>操作</td>
         </tr>
         <c:forEach items="${urs}" var="u">
            <tr><td>${u.uname }</td>
            <td>${u.pass }</td>
            <td>${u.tel }</td>
            <td>${u.addr }</td>
            <td>${u.credit }</td>
            <td>${u.nickname }</td>
            <td><a href="">删除</a></td>
            </tr>
         </c:forEach>
        <tr><td colspan="8">
           当前第 ${currentPage }页<a href="/RentYiSha/adminModel!findAfter.action?page=1">首页</a>
           <a href="/RentYiSha/adminModel!findAfter.action?page=${before }">上一页</a><a href="/RentYiSha/adminModel!findAfter.action?page=${after }">下一页</a>
           <a href="/RentYiSha/adminModel!findAfter.action?page=${pages }">尾页</a>共${pages }页 
         </td></tr>
         </table>        
       </div>
  </body>
</html>
