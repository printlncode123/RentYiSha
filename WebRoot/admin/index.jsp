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
    
    <title>My JSP 'index.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="/RentYiSha/js/jquery.js"></script>
	<style>
	.system{margin:-507px 250px;}
	/* .container{margin-top:-50px;}
	*{margin:0px;padding:0px;}
	 .up{background:#ccc}
	 .down{margin-top:-10px;}
	 .lef{background:#fdf;float:left;width:20%;height:100%;}
	 .rig{float:left;width:80%;height:100%;}
	 .cart{display:none;}
	 .or{display:none;}
	 .good{display:none;}
	 .use{display:none;}
	 .use table tr td{border:1px solid;}
	 .good table tr td{border:1px solid;}
	 .cart table tr td{border:1px solid;}
	.lef ul li{border:1px solid;list-style-type:none;}
	 .or table tr td{border:1px solid;} */
	</style>
   
    <script>
     function ca(){
      $(".cart").show();
      $(".or").hide();
      $(".good").hide();
      $(".use").hide();
      $(".imgc").hide();
     }
     function or(){
      $(".or").show();
      $(".cart").hide();
      $(".good").hide();
      $(".use").hide();
      $(".imgc").hide();
     }
     function use(){
      $(".use").show();
      $(".or").hide();
      $(".cart").hide();
      $(".good").hide();
      $(".imgc").hide();
     }
     function good(){
      $(".good").show();
      $(".cart").hide();
      $(".use").hide();
      $(".or").hide();
      $(".imgc").hide();
     }
     </script>
   
  </head>
  
 <!--  <frameset rows="25%,*" border="1px solid #F39">
    <frame src="/RentYiSha/admin/up.jsp">
    <frameset cols="20%,*" border="1px solid #F39">
      <frame src="/RentYiSha/admin/left.html">
      <frame src="/RentYiSha/admin/right.jsp" name="right">
    </frameset>
  </frameset> -->
  
  <%@include file="public/up.jsp" %>
  <div class="container">
   <%-- <div class="up">
    <p align="center" style="font-size:24px;font-weight:500px;letter-spacing;margin-top:50px;"><i>伊莎礼服租赁网站</i></p>
    <p style="margin-left:1200px;margin-bottom:10px;">欢迎${admin.name }登录</p>
   </div> --%>
   <div class="down">
    <!--  
     <div class="lef">
      <ul>
        <li onclick="use();">用户管理</li>
        <li onclick="good();">商品管理</li>
        <li onclick="ca();">租赁车管理</li>
        <li onclick="or();">订单管理</li>
      </ul>
     </div> -->
     <div class="rig">
       <div class="system">
        <img class="imgc" style="height:507px;width:1100px;" src="/RentYiSha/admin/adminbg.jpg"/>
       </div>
       <%-- <div class="us e">
        <table style="border:1px solid;border-collapse:collapse;width:1000px;">
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
         </table>
         当前第${currentPage }页&nbsp;&nbsp;<a href="/RentYiSha/admin.action?page=1">首页</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="">上一页</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="">下一页</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="">尾页</a>&nbsp;&nbsp;共${pages }页
       </div>
       <div class="good">
         <table style="border:1px solid;border-collapse:collapse;">
         <tr>
          <td>商品编号</td><td>商品名称</td><td>商品图片 </td><td>押金 </td><td>租金</td>
          <td>发布时间</td><td>发源地</td><td>操作</td>
         </tr>
         <c:forEach items="${goods}" var="g">
            <tr><td>${g.gid }</td>
            <td>${g.gname }</td>
            <td><img style="width:120px;height:120px;" src="/RentYiSha/img/goodimg/${g.imgAddr }"></td>
            <td>${g.yaMoney}</td>
            <td>${g.zuMoney}</td>
            <td>${g.date }</td>
            <td>${g.proAddr }</td>
            <td><a href="">删除</a></td>
            </tr>
         </c:forEach>
         </table>
         <!-- <a href="">当前第？页</a><a href="">首页</a><a href="">上一页</a><a href="">下一页</a><a href="">尾页</a>共？页 -->
       </div>
       <div class="cart">
         <table style="border:1px solid;border-collapse:collapse;width:1000px;">
         <tr>
          <td>用户 </td><td>商品图片</td><td>商品数量</td><td>商品总价 </td><td>尺寸大小</td>
          <td>操作</td>
         </tr>
         <c:forEach items="${cds}" var="cd">
            <tr><td>${cd.cart.user.uname }</td>
            <td><img style="width:120px;height:120px;" src="/RentYiSha/img/goodimg/${cd.good.imgAddr }"></td>
            <td>${cd.cart.goodCount}</td>
            <td>${cd.cart.sumprice}</td>
            <td>${cd.size }</td>
            <td><a href="">删除</a></td>
            </tr>
         </c:forEach>
         </table>
         <!-- <a href="">当前第？页</a><a href="">首页</a><a href="">上一页</a><a href="">下一页</a><a href="">尾页</a>共？页 -->
       </div>
       <div class="or">
          <table style="border:1px solid;border-collapse:collapse;">
         <tr>
          <td>订单编号</td><td>用户名</td><td>商品图片</td><td>商品数量</td><td>商品总价 </td><td>尺寸大小</td><td>送货地址</td><td>收货人</td><td>手机号</td><td>订单状态</td>
          <td>操作</td>
         </tr>
         <c:forEach items="${os}" var="o">
            <tr><td>${o.order.oid }</td>
            <td>${o.order.user.uname }</td>
            <td><img style="width:120px;height:120px;" src="/RentYiSha/img/goodimg/${o.good.imgAddr }"></td>
            <td>${o.order.count}</td>
            <td>${o.order.money}</td>
            <td>${o.size }</td>
            <td>${o.order.songhuoaddr }</td>
            <td>${o.order.name }</td>
            <td>${o.order.tel }</td>
            <td>${o.state }</td>
            <td><a href="">删除</a></td>
            </tr>
         </c:forEach>
         </table>
       </div>--%>
     </div>
   </div> 
  </div>
</html>
