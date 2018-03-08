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
    
    <title>My JSP 'right.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>   
    <style>
      table{width:1100px;margin:-507px 245px;}
      table tr td{border:1px solid;}
    </style>
  </head>
  
  <body>
    <%@include file="public/up.jsp" %>
    <div class="right">
        <div class="good">
         <table style="border:1px solid;border-collapse:collapse;">
         <tr>
          <td>商品编号</td><td>商品名称</td><td>商品图片 </td><td>押金 </td><td>租金</td>
          <td>发布时间</td><td>发源地</td><td>操作</td>
         </tr>
         <c:forEach items="${goods}" var="g">
            <tr><td>${g.gid }</td>
            <td>${g.gname }</td>
            <td><img style="width:100px;height:100px;" src="/RentYiSha/img/goodimg/${g.imgAddr }"></td>
            <td>${g.yaMoney}</td>
            <td>${g.zuMoney}</td>
            <td>${g.date }</td>
            <td>${g.proAddr }</td>
            <td><a href="">删除</a></td>
            </tr>
         </c:forEach>
         <tr><td colspan="8">
          <input type="button" value="发布商品">
         </td></tr>
         <tr><td colspan="8">
           当前第 ${currentPage }页<a href="/RentYiSha/adminnewModel.action?page=1">首页</a>
           <a href="/RentYiSha/adminnewModel.action?page=${before }">上一页</a><a href="/RentYiSha/adminnewModel.action?page=${after }">下一页</a>
           <a href="/RentYiSha/adminnewModel.action?page=${pages }">尾页</a>共${pages }页 
         </td></tr>
         </table>
        
       </div>
    </div>
    <script>
      $(function(){
       $("input[type='button']").click(function(){
        window.location.href="/RentYiSha/adminnew!allCatagory.action";
       });
      }); 
    </script> 
   <!--  <script>
     $(function(){
      $("input[type='button']").click(function(){
       $.ajax({
        url:"",
        type:"post",
        data:{},
        success:function(data){}
       });
      });
     });
    </script> -->
   
  </body>
  
</html>
