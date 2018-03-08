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
    
    <title>My JSP 'allCatagory.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <style>
    .left{width:400px;height:100%;}
     #allCat .left{float:left;position:relative;left:100px;top:30px;}
     #allCat .left ul{list-style-type:none;}
     #allCat .left ul li{border:1px solid grey;width:100px;height:30px;line-height:30px;background:#f39;text-align:center}
     #allCat .right{float:left;position:relative;top:-580px;left:300px;}
     #allCat .right .geti{float:left;margin-right:50px;} 
     .right img {width: 220px;}
     .cafter{display:none;}
    </style>
  </head>
  <script type="text/javascript">
   function findBycid(){
     $(".cbegin").hide();
     $(".cafter").show();
   }
  </script>
  <%@include file="../public/head.jsp" %>
  <div id="allCat"> 
   <div class="left">
   <ul>
   <c:forEach items="${catagories}" var="cs">
    <li><a onclick="findBycid();" href="${pageContext.request.contextPath }/catagory!findgoodByCid.action?c.id=${cs.id }"> ${cs.name}</a></li>
    </c:forEach>
   </ul>
    
   </div>
   <div class="right">
   <!--如果点击链接就显示该分类的所有商品 ，否则显示所有商品 -->
          <div class="cbegin">
	       <c:forEach items="${goods }" var="d">
	       <div class="geti">
	          <a href="${pageContext.request.contextPath }/good!finddetails.action?good.gid=${d.gid}"><img style="width:180px;height:250px;" src="${pageContext.request.contextPath }/img/goodimg/${d.imgAddr}" /></a><!--按条件查询限制查找前4个：婚纱-->
	          <div>
	            <a href="${pageContext.request.contextPath }/good!finddetails.action?good.gid=${d.gid}"><span style="white-space:nowrap;display:block;width:220px;overflow:hidden;text-overflow:ellipsis;">${d.gname }</span></a><br>
	            <span>租金：${d.zuMoney}</span>&nbsp;&nbsp;<span>押金：${d.yaMoney }</span>
	          </div>
	       </div>
	      </c:forEach>
	      </div>
	      <div class="cafter">
	      <c:forEach items="${goods }" var="g">
	        <div class="geti">
	          <a href="${pageContext.request.contextPath }/good!finddetails.action?good.gid=${g.gid}"><img style="width:220px;height:293px;" src="${pageContext.request.contextPath }/img/goodimg/${g.imgAddr}" /></a><!--按条件查询限制查找前4个：婚纱-->
	          <div>
	            <a href="${pageContext.request.contextPath }/good!finddetails.action?good.gid=${g.gid}"><span style="white-space:nowrap;display:block;width:220px;overflow:hidden;text-overflow:ellipsis;">${g.gname }</span></a><br>
	            <span>租金：${g.zuMoney}</span>&nbsp;&nbsp;<span>押金：${g.yaMoney }</span>
	          </div>
	       </div>
	      </c:forEach>
	      </div>
   </div>
  </div> 
</html>
