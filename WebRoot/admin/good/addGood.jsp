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
    
    <title>My JSP 'addGood.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style>
     form{border:1px solid;}
     .right{margin:-507px 245px;}
    </style>

  </head>
  
  <body>
  <%@include file="../public/up.jsp" %>
  <div class="right">
    <form action="${pageContext.request.contextPath }/adminnew!addGood.action" method="post" enctype="multipart/form-data">
      分类 :<select name="good.c.id">
        <c:forEach items="${cas}" var="c">
          <option value="${c.id }">${c.name }</option>
        </c:forEach>
      </select>
      商品编号:<input type="text" name="good.gid">    
      商品名称:<input type="text" name="good.gname"><br><br>
      押金:<input type="text" name="good.yaMoney">
      租金:<input type="text" name="good.zuMoney">
      品牌:<input type="text" name="good.brand"><br><br>
  <!-- 发布日期:<input type="text" name="good.date"><br><br> -->
      详情:<textarea rows="5" cols="50" name="good.detail"></textarea><br><br>
      发源地:<input type="text" name="good.proAddr">
      库存:<input type="text" name="good.rest"><br><br>
      单价:<input type="text" name="good.money">
      尺寸:<input type="text" name="gdetail.size"><br><br>
      图片:<input type="file" name="f"><br>
      <input style="width:120px;height:60px;background:#ccc;font-size:18px;margin-left:50px;" type="submit" value="添加">
    </form>
    </div>
  </body>
</html>
