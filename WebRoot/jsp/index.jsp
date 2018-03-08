<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>首页</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!-- <link rel="stylesheet" type="text/css" href="/RentYiSha/css/bootstrap.min.css">
	<script type="text/javascript" src="/RentYiSha/js/bootstrap.min.js"></script>
    <script src="/RentYiSha/js/jquery.js" type="text/javascript"></script> -->
<link rel="stylesheet"
	href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script
	src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="/RentYiSha/css/index.css">
<script src="/RentYiSha/index.js"></script>
<style>
.container #fenlei li {
	height: 50px;
	line-height: 50px;
}
.container #fenlei li:hover {
	background: grey;
}
#fenlei {
	float: left;
}
#carousel-example-generic {
	margin: 0px 10px;
	float: left;
	width: 910px;
	height: 393px;
}
.main {
	clear: both;
	margin: 30px 105px;
}
#gonggao {
	width: 208px;
}
#gonggao ul {
	border: 1px solid blue;
	list-style-type: none
}
#gonggao li {
    text-indent:10px;
	height: 43px;
	line-height: 43px;
	border-bottom:1px solid #CCC;
}
#gonggao li:hover {
	background: grey;
}
#firline .row {
	margin-left: 10px
}
#firline .row .col-md-2 {
	margin-right: 26px;
}
#firline .row .col-md-2 img {
	width: 170px;
	height: 220px;
}
#firline .row .col-md-2 span {
	width: 170px;
	color: red;
	display: inline-block;
	font-size: 13px;
	text-align: center;
}
#rezu {
	width: 208px;
	margin: 25px 0px;
}
#rezu ul {
	border: 1px solid blue;
	list-style-type: none
}
#rezu li {
	height: 37px;
	line-height: 37px;
	text-overflow:ellipsis;
	overflow:hidden;
	white-space:nowrap;
	
}
#rezu li a{color:red;}
#rezu li:hover {
	background: grey;
}
#secline .row {
	margin-left: 10px;
	margin-top: 20px;
}
#secline .row .col-md-2 {
	margin-right: 26px;
	margin-top: 10px;
}
#secline .row .col-md-2 img {
	width: 170px;
}
#secline .row .col-md-2 span {
	margin: -20px auto;
	width: 170px;
	color: red;
	display: inline-block;
	font-size: 13px;
	text-align: center;
}
#twokind {
	clear: both;
	margin: 30px 105px;
}
#hunli #hunlititle {
	text-align: center;
	width: 100px;
	height: 30px;
	line-height: 30px;
	color: white;
	background: #f39;
}
#hunli .col-md-4 img {
	width: 400px;
	height: 510px;
}
#hunli .col-md-2 {
	margin: 0px 25px;
}
#hunli .col-md-2 img {
	width: 210px;
	height: 245px;
	margin: 0px 35px;
}
#xueshi {
	clear: both;
	margin: 30px 105px;
}
#xueshi #xueshititle {
	text-align: center;
	width: 100px;
	height: 30px;
	line-height: 30px;
	color: white;
	background: #f39;
}
#xueshi .col-md-4 img {
	width: 400px;
	height: 510px;
}
#xueshi .col-md-2 {
	margin: 0px 25px;
}
#xueshi .col-md-2 img {
	width: 200px;
	height: 240px;
	margin: 10px 35px;
}
</style>
<script type="text/javascript">
</script>
</head>

<body>
	<div class="all">
		<%@include file="../public/head.jsp"%>

		<div class="container">
			<!--分类  -->
			<div id="fenlei">
				<div style="background-color:#F3F;width:208px;height:40px;">
					<span style="color:white;display:inline-block;margin:10px 76px;">所有分类</span>
				</div>
				<ul
					style="list-style-type:none;margin:1px 0px;text-align:center;width:208px;border:1px blue solid;">
					<c:forEach items="${catagories }" var="catas">
					  <li style="border-bottom:1px solid #ccc;"><a href="${pageContext.request.contextPath }/catagory!findgoodByCid.action?c.id=${catas.id}">${catas.name}</a></li>
					</c:forEach>

				</ul>
			</div>
			<!-- 轮播图 -->
			<div id="carousel-example-generic" class="carousel slide"
				data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#carousel-example-generic" data-slide-to="0"
						class="active"></li>
					<li data-target="#carousel-example-generic" data-slide-to="1"></li>
					<!--  <li data-target="#carousel-example-generic" data-slide-to="2"></li> -->
				</ol>

				<!-- Wrapper for slides -->
				<div class="carousel-inner" role="listbox">
					<div class="item active">
						<img style="height:393px;" src="/RentYiSha/img/banner/hunsha1.jpg"
							alt="hunsha1.jpg">
					</div>
					<div class="item">
						<img style="height:393px;" src="/RentYiSha/img/banner/huasha2.jpg"
							alt="hunsha2.jpg">
					</div>
				</div>

				<!-- Controls -->
				<a class="left carousel-control" href="#carousel-example-generic"
					role="button" data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					<span class="sr-only">Previous</span> </a> <a
					class="right carousel-control" href="#carousel-example-generic"
					role="button" data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					<span class="sr-only">Next</span> </a>
			</div>
		</div>
		<!-- 主要内容 -->
		<div class="main">
			<div class="row">
				<div class="col-md-2">
					<div id="gonggao">
					    <div class="gonggao" style="height:43px;background:#f3f;color:white;text-align:center;line-height:43px;">公告</div>
						<ul>
							<!--5个公告  -->
							<li>如何租赁</li>
							<li>常见问题</li>
							<li><span style="color:red;">新增情侣服闺蜜服</span></li>
							<li><span style="color:red;">名门婚纱西服出租优惠</span></li>
							<li><span style="color:red;">新娘婚纱新款首席设计师设计</span></li>
						</ul>
					</div>
					<div id="rezu">
					    <div class="rezu" style="height:37px;background:#f3f;color:white;text-align:center;line-height:37px;">热租</div>
						<ul>
						<c:forEach items="${os }" var="odetail">
                         	<li><a href="/RentYiSha/good!finddetails.action?good.gid=${odetail.good.gid }">${odetail.good.gname }</a></li>						 
						</c:forEach>
						</ul>
					</div>
				</div>
				<div class="col-md-10">
					<div id="firline">
						<!-- 每个种类的第一个商品，5个商品 -->
						<div class="row">
							<c:forEach items="${goods}" var="g">
								<div class="col-md-2">
									<a href="/RentYiSha/good!finddetails.action?good.gid=${g.gid }">
										<img id="gg" src="/RentYiSha/img/goodimg/${g.imgAddr }"
										title="${g.gid }"> </a><br> <span>租金：${g.zuMoney
										}&nbsp;&nbsp;押金：${g.yaMoney }</span>
								</div>
							</c:forEach>
						</div>
						<div id="secline">
							<!-- 每个种类的第二个商品再加任意三个商品，10个商品 -->
							<div class="row">
								<c:forEach items="${goods1 }" var="g1">
									<div class="col-md-2">
										<a
											href="/RentYiSha/good!finddetails.action?good.gid=${g1.gid }">
											<img src="/RentYiSha/img/goodimg/${g1.imgAddr }"
											title="${g1.gid }"> </a><br> <span>租金：${g1.zuMoney
											}&nbsp;&nbsp;押金：${g1.yaMoney }</span>
									</div>
								</c:forEach>
							</div>
						</div>
					</div>

				</div>


				<!-- 两个种类 -->
				<div id="twokind" style="margin-left:15px;">
					<!-- 婚纱西装 -->
					<div id="hunli">
						<!-- 婚礼前4个 -->
						<div id="hunlititle">婚纱</div>
						<div class="row">
							<div class="col-md-4">
								<!-- 一张大图 -->
								<img src="/RentYiSha/img/indexBig/indexHunSha.png">
							</div>
							<c:forEach items="${goods2 }" var="g2">
								<div class="col-md-2">
									<a
										href="/RentYiSha/good!finddetails.action?good.gid=${g2.gid }">
										<img src="/RentYiSha/img/goodimg/${g2.imgAddr }"
										title="${g2.gid }"> </a><br>
								</div>
							</c:forEach>
						</div>
					</div>
				</div>
				<!-- 学士服 -->
				<div id="xueshi" style="margin-left:15px;">
					<!-- 学士前四个 -->
					<div id="xueshititle">西服</div>
					<div class="row">
						<div class="col-md-4">
							<!-- 一张大图 -->
							<img src="/RentYiSha/img/indexBig/indexXiFu.png">
						</div>
						<c:forEach var="goods3" items="${goods3 }">
						 <div class="col-md-2">
						 <a href="/RentYiSha/good!finddetails.action?good.gid=${goods3.gid }">
							<img src="/RentYiSha/img/goodimg/${goods3.imgAddr }" title="${goods3.gid }" alt="error">
						 </a>	
						</div>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="../public/bottom.jsp" %>
</body>
</html>