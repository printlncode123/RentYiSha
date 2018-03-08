<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'cart.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style>
	table{border-collapse:collapse;width:1200px;text-align:center;}
	table tr {border:1px solid;}
	 #jian{display:inline-block;width:20px;height:20px;border:1px solid grey;text-align:center;}
	 #num{display:inline-block;width:20px;height:20px;border:1px solid grey;text-align:center;}
	 #jia{display:inline-block;width:20px;height:20px;border:1px solid grey;text-align:center;}
	</style>
    <script type="text/javascript">
    function jian(){
     var describe=$("#size").html();
     var goodid=$("#hiddgid").val();
     var cartid=$("#hiddcartid").val();
     $.ajax({
      url:"/RentYiSha/cartModel!deleteCount.action",
      data:{"gid":goodid,"detail":describe,"cart.id":cartid},
      type:"post",
      success:function(data){
        var json=JSON.parse(data);
        $("#num").html(json.goodCount);
        $("#sumprice").html(json.sumprice);
      }
     });
     
     }
     function jia(){
     var describe=$("#size").html();
     var goodid=$("#hiddgid").val();
     var cartid=$("#hiddcartid").val();
     $.ajax({
      url:"/RentYiSha/cartModel!addCount.action",
      data:{"gid":goodid,"detail":describe,"cart.id":cartid},
      type:"post",
      success:function(data){
        var json=JSON.parse(data);
        $("#num").html(json.goodCount);
        $("#sumprice").html(json.sumprice);
      }
     });
     
     }
     function checkone(info){
      var count=$("#num").html();
      var price=$("#sumprice").html();
      $.ajax({
       url:"/RentYiSha/cartModel!checkone.action",
       data:{"cart.id":info,"cart.goodCount":count,"cart.sumprice":price},
       type:"post",
       success:function(data){
        var c=JSON.parse(data);
        $("#sumjian").html(c.goodCount);
        $("#summoney").html(c.sumprice);
       }
      });
     }
    </script>
  </head>
  
  <body>
    <%@include file="../public/head.jsp" %>
    <c:choose>
    <c:when test="${cartdetails==null }">您当前租赁车没有物品，前去<a href="${pageContext.request.contextPath }/goodModel.action">添加</a></c:when>
    <c:otherwise>
    <form action="${pageContext.request.contextPath }/cartModel!finddetail.action" method="post">
    <h3 style="color:#f3f;display: inline-block;position: relative;top: 15px;left: 80px;">全部商品(<span>${sumcount }</span>)</h3>
    <table style="border:1px solid;margin:20px auto;">
    <tr>
     <td><input type="checkbox" name="check" value=""/>全选</td>
     <td colspan="3" style="text-align:right;"><span>商品信息</span></td>
     <td><span id="zu">租金</span></td>
     <td><span id="ya">押金</span></td>
     <td><span>数量</span></td>
     <td><span id="xiaoji">小计</span></td>
     <td><span>操作</span></td>
    </tr>
    <c:forEach items="${cartdetails}" var="cart">
      <tr>
        <td><input type="checkbox" name="cart.id" value="${cart.cart.id }" onclick="checkone(this.value);"></td>
        <td style="width:150px;">
        <img style="width:150px;height:180px;" src="${pageContext.request.contextPath}/img/goodimg/${cart.good.imgAddr }"/>
        </td>
        <td style="width:500px">${cart.good.gname }</td>
        <td style="width:70px">尺码:<span id="size">${cart.size }</span>
        </td>
        <td>${cart.good.zuMoney }</td>
        <td>${cart.good.yaMoney }</td>
        <td>
            <span id="jian" onclick="jian()">-</span>
            <span id="num">${cart.cart.goodCount }</span>
            <span id="jia" onclick="jia()">+</span></td>
        <td><span id="sumprice">${cart.cart.sumprice }</span></td>
        <td><a href="${pageContext.request.contextPath}/cartModel!delete.action?cadetail.id=${cart.id}&cart.id=${cart.cart.id}">删除</a></td>
        <td><input id="hiddcartid" type="hidden" value="${cart.cart.id }"></td>
        <td><input id="hiddgid" type="hidden" value="${cart.good.gid }"></td>
      </tr>
    </c:forEach>
    <tr>
        <td><input type="checkbox" value="">全选</td>
        <td><a>删除</a>
        <a>清空</a></td>
        <td colspan="4"></td>
        <td colspan="3" style="text-align:right;">共<span id="sumjian" style="color:#f3f">0</span>件,
                                    总计:<span style="color:#f3f;"><b id="summoney">￥0.00</b></span>
        <input type="submit" value="去结算" style="color:white;font-size:18px;width:100px;height:50px;background:red"></td>
    </tr>
    </table>
    </form>
    </c:otherwise>
    </c:choose>
    
    <%@include file="../public/bottom.jsp" %>
    
  </body>
</html>
