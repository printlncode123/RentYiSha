<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'detail.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="/RentYiSha/css/index.css">
    <script src="/RentYiSha/js/jquery.js" type="text/javascript"></script>
    <script src="/RentYiSha/js/index.js"></script>
    <style>
      .head-one .index_icon{top: -10px;}
      .mainly{margin-top:20px;}
      .ig{float:left;}
      .ig img{margin-left:200px;width:300px;height:450px;}
      .rig{float:left;margin:20px 50px;}
      #size{display:inline-block;text-align:center;line-height:20px;width:35px;height:20px;border:1px solid grey;margin-right:5px;}
      #cart{cursor:pointer;width:130px;height:40px;line-height:40px;text-align:center;background:red;color:white;}
      #rent{width:130px;height:40px;line-height:40px;text-align:center;background:red;margin:-40px 150px;color:white;}
      #jian{display:inline-block;width:20px;height:20px;border:1px solid grey;text-align:center;}
      #num{display:inline-block;width:20px;height:20px;border:1px solid grey;text-align:center;}
      #jia{display:inline-block;width:20px;height:20px;border:1px solid grey;text-align:center;}
      .down{clear:both;}
      .down .xian{position:relative;top:20px;margin:0px auto;height:1px;width:1000px;background:orange}
      .down .sec{margin:20px 200px;}
      .down .sec ul{list-style-type:none;}
      .down .sec ul li{border:1px solid grey;text-align:center;float:left;background:red;width:100px;height:30px;line-height:30px;}
      .sizeStyle{border:1px solid red;}
    </style>
    <script type="text/javascript">
     function size(){
      $("#size").css({"border":"1px solid red"});
     }
     function jian(){
     var c=document.getElementById("num").innerHTML;
      if(c==1){
       document.getElementById("num").innerHTML=c;
      }
      document.getElementById("num").innerHTML=c-1;
     }
     function jia(){
      var c=document.getElementById("num").innerHTML;
      c++;
      document.getElementById("num").innerHTML=c;
      
     }
     function cart(){
       var gid=$('#goodid').val();
       var detail=$('#size').html();
       var goodCount=$('#num').html();
       window.location.href="/RentYiSha/cartModel!add.action?gid="+gid+
       "&detail="+detail+"&cart.goodCount="+goodCount;
     }
    </script>
  </head>
  
  <body>
    <%@include file="../public/head.jsp" %>
   <div class="mainly">
      <div class="ig"><img id="gooig" src="${pageContext.request.contextPath}/img/goodimg/${good.imgAddr}" alt="none"></div>
       <div class="rig">
         <input type="hidden" value="${good.gid }" id="goodid"/>
         <span style="display:block;width:400px;font-size:20px"><b>${good.gname}</b></span><br><br>
         <span>租赁方式：</span>&nbsp;&nbsp;<span>限租一周</span><br><br>
         <span>单价：</span><span style="color:red;font-size:18px;font-weight:bold">${good.money}</span><br><br>
         <span>押金：</span><span style="color:red;font-size:18px;font-weight:bold">${good.yaMoney}</span><br><br>
         <span>租金：</span><span style="color:red;font-size:18px;font-weight:bold">${good.zuMoney}</span><br><br>
         <span>尺寸选择:</span>&nbsp;&nbsp;
         <c:forEach items="${details}" var="gdetail">
         <span id="size" onclick="size()">${gdetail.size}</span>
         </c:forEach><br><br>
         <span>数量：</span>
           <span id="jian" onclick="jian('-');">-</span>
             <%--  <c:if test="">
              </c:if> --%>
              <span id="num">1</span>
           <span id="jia" onclick="jia()">+</span><br><br>
         <div id="cart" onclick="cart();">添加到租赁车</div>
         <div id="rent">租赁</div>
         
       </div>
       <div class="down">
     <div class="xian"></div>
     <div class="sec">
     <ul>
       <li><a>商品介绍</a></li>
       <li><a>商品评论</a></li>
     </ul>
     <br>
     <br>
     <br>
     <br>
     <h3>本款简介</h3>
     <c:choose>
     <c:when test="${fn:contains(good.detail,'jpg')}">
     <c:set value="${good.detail}" var="gdetail"/>
       <c:set value="${fn:split(gdetail,',')}" var="des"/>
        <c:forEach var="de" items="${des}">
          <img src="/RentYiSha/img/detail/${de}"><br>
        </c:forEach>
     </c:when>
     <c:otherwise>
       <span style="display:block;font-size:16px;margin-top:20px">${good.detail}</span><br>
     </c:otherwise>
     </c:choose>
     <img style="width:790px;height:956px;margin-top:20px;"src="${pageContext.request.contextPath }/img/detail/${images.imgAddr1}"><br>
     <img style="width:790px;height:956px;margin-left:200px;margin-top:20px;"src="${pageContext.request.contextPath }/img/detail/${images.imgAddr2}"><br>
     <img style="width:790px;height:956px;margin-top:20px;margin-top:20px;"src="${pageContext.request.contextPath }/img/detail/${images.imgAddr3}">
     </div>
     </div>
   </div>
  </body>
</html>
