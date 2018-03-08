<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'personOrder.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style type="text/css">
	 table{width:1200px;border-collapse:collapse;margin:10px auto;}
	 tr{border:1px solid grey;}
	</style>

  </head>
  
  <body>
    <%@include file="../public/head.jsp" %>
    <table>
     <tr>
      <td>
      <c:if test="${orderdetails==null }">
       <h4>您当前没有订单。。。<a href="${pageContext.request.contextPath }/carts.action">返回租赁车租赁</a></h4>
      </c:if>
      </td>
      </tr>
      <c:if test="${orderdetails!=null }">
      <tr>
      <td colspan="2" align="center">商品</td>
      <td>租金</td>
      <td>押金</td>
      <td>数量</td>
      <td>小计</td>
      <td>交易状态</td>
      <td>操作</td>
     </tr>
       <c:forEach items="${orderdetails }" var="orderdetail">
     <tr style="background:#ccc;">
       <td colspan="2" style="font-size:12px;color:#333;">订单编号:${orderdetail.order.oid}</td><td style="font-size:12px;color:#333;" colspan="6">成交时间:<c:set value="${orderdetail.date2}" var="odate2"/> ${fn:substring(odate2,0,19)}</td>
     </tr>
     <tr>
       <td style="width:150px;height:160px;"><img style="width:150px;height:160px;" src="${pageContext.request.contextPath }/img/goodimg/${orderdetail.good.imgAddr}"/></td>
       <td>${orderdetail.good.gname }<br>尺码:${orderdetail.size}码</td>
       <td>${orderdetail.good.zuMoney}</td>
       <td>${orderdetail.good.yaMoney }</td>
       <td>${orderdetail.order.count}</td> 
       <td>${orderdetail.order.money }</td>
       <td>
        <c:if test="${orderdetail.state==0 }">未发货</c:if>
        <c:if test="${orderdetail.state==1 }">已发货</c:if>
        <c:if test="${orderdetail.state==2 }">已收货</c:if>
       </td>
       <td>
        <input type="button" value="评论"><br>
        <a href="${pageContext.request.contextPath }/orderModel!delete.action?order.id=${orderdetail.order.id}">删除</a>
       </td>      
     </tr>
     </c:forEach>      
      </c:if>
    </table>
    <%@include file="../public/bottom.jsp" %>
  </body>
</html>
