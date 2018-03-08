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

<title>My JSP 'liucheng.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<style>
.con {
	width: 80%;
	margin: 10px auto;
}

h1 {
	color: red;
}
</style>
</head>

<body>
	<%@include file="../public/head.jsp"%>
	<div class="con">
		<div class="li">
			<h1>租赁流程</h1>
			1. 在官网( www.yisha.com )选好款，并量好身高体重三围（以CM和斤为单位），用旺旺发给我们，或直接在提交订单内填写。<br>
			我们礼服师根据您提供的三围信息搭配适合您的尺码，上身效果更好，和到店试穿效果一样。 2.
			在订单填写好婚礼时间，或通过旺旺发给我们，我们给您查看婚纱档期是否空余。<br> 3.
			确认订单婚礼时间、身高体重三围信息、婚纱款式，预付定金或付全款。<br> 4.
			我们在您婚礼前10天发货，并跟进快递进度，快递3-4天能到全国各地。您收到婚纱后，如有尺码不合适、款式不喜欢等问题，及时联系我们，协商及时换货。
			换货流程：亲直接付第二款的租金和押金，我们直接发货，待您婚礼结束后，与第一款一同退回，两件我们只收第二款租金，第一款租金和押金全额退还。<br>
			5. 婚礼结束后，把婚纱退回给我们（无需清洗），并提交或告诉我们快递单号，快递返回延误时间不算，我们跟进快递进度。<br> 6.
			我们收到婚纱，将与您联系，将押金转到您支付宝账号、或银行卡账号。
		</div>
		<div class="li">
			<h1>租赁优势</h1>
			1.伊莎婚纱团购，保证出租的每件婚纱都9成新以上，保证每件婚纱都干净卫生。<br>
			2.伊莎可以以最低的价格，租到任意风格婚纱，并保证9成新以上。<br>
			3.伊莎的全新婚纱的价格甚至低至3折，就可以租10-15天。其他店铺只能租1天或2天，而且价格高。<br>
			4.租婚纱，可以降低结婚成本，市场上买一件婚纱，价格上千，甚至几千。<br>
			5.在市场上租一件婚纱价格都是几百，比网上买一件婚纱还贵。<br>
			6.伊莎通过和厂家合作批量批发婚纱，再由薇好检查、保养，保证您租到的婚纱比在网上买还便宜6折以上，3-5折即可租到。<br>
			7.伊莎保证每一件婚纱都是全新、干净、卫生的。<br> 8.在伊莎租婚纱，对发回快递无任何要求、只需婚礼后2天内发出即可。<br>
			9.伊莎婚纱租赁，无任何隐形费用，全程打印消费单据，价格官网透明标价，不看人定价。
		</div>
		<div class="li">

			<h1>租赁规则</h1>
			1、请提前填写您的婚期、身高、体重、三围，我们将根据您提供的信息安排婚纱档期。<br>
			2、我们会在您备注的婚期前10天用快递发出（3-4天可到全国各地），婚礼后2天内需要用快递寄回（本店婚纱是按次计算租金，婚礼后2天内寄出，婚礼后2天不寄出视为超时），本店婚纱礼服仅包发货单程邮费，退货快递不限。<br>
			3、本店婚纱全部现货，婚礼旺季部分款式婚纱需要提前60天预定。可以付全款，也可付定金预定。付定金用户：每款预定金额为租金总额40%（定金不退还，直接抵租金），请按照约定发货时间前补齐租金和押金（付定金用户，定金不是押金，定金抵扣租金）。<br>
			4、婚纱返回后本店检查没有人为蓄意损坏，立刻返还您的押金，使用过程中请爱护好婚纱。无其他 任何清洗费用，以及无任何维护费用。<br>
			5、如对婚纱款式不喜欢，请收到婚纱后次日将婚纱寄回，往返运费由亲自行承担。婚礼过后寄回婚纱，视为租赁成功，租金不做退还，只退押金。
		</div>
	</div>
	<%@include file="../public/bottom.jsp"%>
</body>
</html>
