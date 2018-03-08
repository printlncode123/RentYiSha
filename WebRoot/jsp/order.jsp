<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'order.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <style>
    
     .orderContainer{width:90%;margin:10px auto;background:#f4f4f4;}
     #orderaddr{background:white;}
     #ordermain{margin-top:10px;margin-left:50px;}
     #orginal{margin:5px 10px;width:200px;height:100px;border-radius:5%;border:1px solid #f3f;}
     #myform{display:none;margin:20px 50px;}
    </style>
    <script type="text/javascript">
     function newAddr(){
      $("#myform").show();
     }
     function cancel(){
      $("#myform").hide();
     }
    </script>
  </head>  
  
  <body>
    <%@include file="../public/head.jsp" %>
    
    <div class="orderContainer">
    <div class="ordermain">
    <form action="${pageContext.request.contextPath }/orderModel!add.action" method="post">
     <div id="orderaddr">
     <span>选择收获地址</span>
     
      <div id="orginal">
      <div>
        <input style="border:0px;font-style:bold;" class="onew" value="${user.uname}" name="order.name">
        <input style="width:100px;border:0px;color:grey;font-size:14px;margin:10px 50px;" class="onew" value="${user.addr}" name="order.songhuoaddr"><br>
        <input style="width:100px;border:0px;color:grey;font-size:14px;margin-left:50px;" class="onew" value="${user.tel }" name="order.tel"><br>
        <span style="display:inline-block;font-size:12px;position:relative;top:5px;left:100px;"><a>修改</a></span></div>
      </div>
      <span onclick="newAddr();" style="cursor:pointer;display:inline-block;font-size:14px;color:grey;">使用新地址</span>
      <div id="myform">
                   地&nbsp;&nbsp;址：<input type="text" name="order.songhuoaddr"><br><br>
                   收货人：<input type="text" name="order.name"><br><br>
                   手机号：<input type="text" name="order.tel"><br>
            <input style="width:80px;height:40px;background:orange" type="submit" value="确认">
            <input style="width:80px;height:40px;background:orange;margin:0px 40px;" type="button" onclick="cancel()" value="取消">               
      </div>
     </div>
     <div id="ordergood">
      <h5>确认商品信息</h5>
      
      <table style="width:1200px;text-align:center;">
       <tr>
        <td colspan="2">商品</td>
        <td>商品信息</td>
        <td>租金</td>
        <td>押金</td>
        <td>数量</td>
        <td>小计</td>
       </tr>
       <c:forEach items="${cartdetails}" var="cartdetail">
        <tr style="margin-bottom:5px;">
         <td><img style="width:120px;height:130px;" src="${pageContext.request.contextPath}/img/goodimg/${cartdetail.good.imgAddr }"/></td>
         <td><input name="cdetail.good.gname" style="width:400px;background:#f4f4f4;border:0px;" type="text" value="${cartdetail.good.gname }"></td>
         <td><input name="orderDetail.size" style="width:40px;background:#f4f4f4;border:0px;" type="text" value="${cartdetail.size }"></td>
         <td><input name="cdetail.good.zuMoney" style="width:40px;background:#f4f4f4;border:0px;" type="text" value="${cartdetail.good.zuMoney }"></td>
         <td><input name="cdetail.good.yaMoney" style="width:40px;background:#f4f4f4;border:0px;" type="text" value="${cartdetail.good.yaMoney }"></td>
         <td><input name="cdetail.cart.goodCount" style="width:40px;background:#f4f4f4;border:0px;" type="text" value="${cartdetail.cart.goodCount }"><c:set value="${cartdetail.cart.goodCount }" var="goodCount"/></td>
         <td><input name="cdetail.cart.sumprice" style="width:40px;background:#f4f4f4;border:0px;" type="text" value="${cartdetail.cart.sumprice }"><c:set value="${cartdetail.cart.sumprice }" var="sumprice"/></td>
         <td><input name="gid"  type="hidden" value="${cartdetail.good.gid }"></td>
         <td><input type="hidden" name="cart.id" value="${cartdetail.cart.id }"></td>
         <td><input type="hidden" name="cdetail.good.imgAddr" value="${cartdetail.good.imgAddr}"></td>
         <td><input type="hidden" name="cdetail.good.c.id" value="${cartdetail.good.c.id}"></td>        
         
         <td><input type="hidden" name="cdetail.good.date" value="${cartdetail.good.date }"></td>
         <td><input type="hidden" name="cdetail.good.detail" value="${cartdetail.good.detail}"></td>
         <td><input type="hidden" name="cdetail.good.proAddr" value="${cartdetail.good.proAddr}"></td>        
         <td><input type="hidden" name="cdetail.good.rest" value="${cartdetail.good.rest}"></td>
         <td><input type="hidden" name="cdetail.good.money" value="${cartdetail.good.money}"></td>        
        </tr>
       </c:forEach>
       <tr>
        <td><a href="${pageContext.request.contextPath }/carts.action">返回租赁车</a></td>
        <td colspan="3"></td>
        <td colspan="2">共<input name="order.count" style="width:10px;background:#f4f4f4;border:0px;" type="text" value="${goodCount }">件商品,
        总计:￥<input name="order.money" style="font-size:18px;color:#f3f;width:60px;background:#f4f4f4;border:0px;" type="text" value="${sumprice }"></td>
        <td><input style="width:100px;height:50px;background:orange;" type="submit" value="提交订单付款"/></td>
       </tr>
      </table>
      </form>
      </div>
     </div>
     </div>
    <%@include file="../public/bottom.jsp" %>
  </body>
</html>
