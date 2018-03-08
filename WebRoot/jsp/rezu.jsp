<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'rezu.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	 <style>
     *{margin:0px;padding:0px;}
     .alld{width:95%;margin:50px 100px;}
     .alld .cc{float:left;width:250px;margin-right:30px;}
     </style>

  </head>
  
  <body>
    <%@include file="../public/head.jsp" %>
       <div class="alld">
     <div>
    <c:forEach items="${os}" var="g">
       <div class="cc">
          <a href="${pageContext.request.contextPath }/good!finddetails.action?good.gid=${g.good.gid}"><img style="width:240px;height:340px;" src="${pageContext.request.contextPath }/img/goodimg/${g.good.imgAddr}" /></a><!--按条件查询限制查找前4个：婚纱-->
          <div>
            <a href="${pageContext.request.contextPath }/good!finddetails.action?good.gid=${g.good.gid}"><span style="white-space:nowrap;display:block;width:220px;overflow:hidden;text-overflow:ellipsis;">${g.good.gname }</span></a><br>
             <span style="display:inline-block;position:relative;top:-20px;color:red;">租金：${g.good.zuMoney }</span>&nbsp;&nbsp;<span style="display:inline-block;color:red;position:relative;top:-20px;">押金：${g.good.yaMoney }</span>
          </div>
       </div>
    </c:forEach>
     </div>
    </div>
  </body>
</html>
