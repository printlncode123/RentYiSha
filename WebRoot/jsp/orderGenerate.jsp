<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'orderGenerate.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style>
	 .og_container{width:1200px;margin:15px auto;}
	 #ogstate{margin-left:150px;}
	 .ogstate{float:left;margin-left:30px;}
	 #detailinfo{clear:both;margin-left:150px;}
	 #menu{margin-left:150px;margin-bottom:20px;}
	 .unhr{clear:both;}
	 hr{width:1000px;margin-left:150px;color:#ccc;}
	</style>

  </head>
  
  <body>
    <%@include file="../public/head.jsp" %>
     <div id="og_container">
      <h1 style="margin:10px 100px">订单详情</h1><hr>
      <div id="ogstate">
      <h4><span>订单编号:${order.oid }</span>&nbsp;&nbsp;&nbsp;&nbsp;
      <span>当前状态:未发货
         <c:if test="${ordertail.state==0 }">未发货</c:if>
         <c:if test="${ordertail.state==1 }">已发货</c:if>
         <c:if test="${ordertail.state==2 }">收货</c:if>
      </span></h4><br>
      <div class="ogstate"><span>提交订单</span><br><span>${orderDetail.date }</span></div>
      <div class="ogstate"><span>已发货</span><br><span>${orderDetail.date1 }</span></div>
      <div class="ogstate"><span>收货</span><br><span>${orderDetail.date2 }</span></div>
      </div><hr class="unhr">
      <div id="detailinfo">
       <h4>详细信息</h4><br>
       <span>收货人:${order.name }</span><br>
       <span>收货地址:${order.songhuoaddr }</span><br>
       <span>联系电话:${order.tel }</span>
      </div><hr>
      <div id="menu">
       <h4>清单</h4><br>
       <table style="border:1px solid #ccc;">
        <tr>
         <td colspan="2">商品信息</td>
         <td style="width:80px">租金</td>
         <td style="width:80px">押金</td>
         <td style="width:80px">数量</td>
         <td style="width:80px">订单状态</td>
         <td style="width:80px">订单额</td>
        </tr>
        <tr>
         <td><img style="width:150px;height:160px;" src="${pageContext.request.contextPath}/img/goodimg/${orderDetail.good.imgAddr}"></td>
         <td><span>${orderDetail.good.gname }</span><br><span>尺码:${orderDetail.size }</span></td>
         <td style="width:80px">${orderDetail.good.zuMoney }</td>
         <td style="width:80px">${orderDetail.good.yaMoney }</td>
         <td style="width:80px">${order.count }</td>
         <td style="width:80px">
         <c:if test="${ordertail.state==0 }">未发货</c:if>
         <c:if test="${ordertail.state==1 }">已发货</c:if>
         <c:if test="${ordertail.state==2 }">收货</c:if>
         未发货
         </td>
         <td style="width:80px">${order.money }</td>
        </tr>
       </table>
      </div>
     </div>
    <%@include file="../public/bottom.jsp" %>
  </body>
</html>
