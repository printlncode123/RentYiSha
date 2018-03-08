<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'regist.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <style>
      *{margin:0;padding:0;}
      .logo{margin:20px 50px;}
      .form1{height:400px;background:url('/RentYiSha/img/login.png');}
      form{margin:50px 300px;}
      table{border:1px solid;background:white}
      caption{font-family:"微软雅黑";letter-spacing:3px;color:white;font-size:26px;font-weight:bold;margin-bottom:20px}
      table{width:300px;}
      input[type=text]{border:0px}
      input[type=password]{border:0px}
      table tr td{height:20px;text-align:center;border:1px solid;border-collapse:collapse;}
       .down{float:left;margin:30px 150px;}
   .down ul{list-style-type:none;}
   #down{background:grey;}
    </style>
  </head>
  
  <body>
    <div class="logo"><img src="/RentYiSha/img/logo4.png" /></div>
    <div class="form1">
    <form action="/RentYiSha/userModel!add.do" method="post">
    <table>
    <caption>填写资料</caption>
 <%-- <tr><td colspan="2"><input type="text" name="u.tel" value="${param.tel}"/></td></tr>
 <tr><td colspan="2"><input type="text" name="u.yanzhengma" value="${param.validate}"/></td></tr>
 <tr><td colspan="2"><input type="text" name="u.role" value="0"/><!--0表示用虎注册  --></td></tr>    --%>
 <tr style="display:none;"><td><input type="hidden" name="u.tel" value="${param.tel}"/></td></tr>
 <tr style="display:none;"><td><input type="hidden" name="u.yanzhengma" value="${param.validate}"/></td></tr>
 <tr style="display:none;"><td><input type="hidden" name="u.role" value="0"/><!--0表示用虎注册  --></td></tr>
 <tr><td>昵称</td><td><input type="text" name="u.nickname"></td></tr>
 <tr><td>姓名</td><td><input type="text" name="u.uname"></td></tr>
 <tr><td>密码</td><td><input type="password" name="u.pass"></td></tr>
<tr><td>确认密码</td><td><input type="password" name="conpass"></td></tr>
 <tr><td>住址</td><td><input type="text" name="u.addr"></td></tr>
<tr><td> 性别</td><td><input type="radio" name="u.sex" value="男" checked="checked">男
    <input type="radio" name="u.sex" value="女">女</td></tr>
 <tr><td>邮箱</td><td><input type="text" name="u.email"></td></tr> 
 <tr><td colspan="2"><input type="submit" value="注册">
   <input type="reset" value="重置"></td></tr>
</table>
  </form>
</div>

<div class="down">
   <ul> 
    <li>新手帮助</li>
    <li> 常见问题</li>
    <li> 自助服务</li>
    <li> 联系客服</li>
    <li> 意见反馈</li>
   </ul>
  </div>
  <div class="down">
   <ul>
    <li>权益保障 
    </li>
    <li>全国包邮</li>
    <li> 7天无理由退货</li>
    <li> 退货运费补贴</li>
    <li>限时发货</li>
   </ul>
  </div>
  <div id="down">
  <div class="down">
    <ul>
     <li>  支付方式 </li>
     <li> 微信支付</li>
     <li>支付宝</li>
     <li> 白付美支付</li>
     
    </ul>
 </div>
</div>
  </body>
</html>
