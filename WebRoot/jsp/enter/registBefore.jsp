<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'registBefore.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="/RentYiSha/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <style>
   *{margin:0;padding:0;}
  .logo{margin:20px 50px;}
  .main{position:relative;margin-top:20px;width:100%;height:500px;background-repeat:no-repeat;background:url('/RentYiSha/img/login.png')}
   form{width:700px;position:absolute;bottom:80px;left:-90px;}
  .one{width:400px;height:400px;background:white;border:1px solid #ccc;margin:0px 50px;position:absolute;top:40px;}
   #u{position:absolute;top:70px;left:140px;font-size:20px;letter-spacing:3px;color:#F39;}
   form input[type=text]{height:30px;width:180px;}   
   form .form-group button.btn-lg{background:#F39;height:50px;width:308px;}
   select{width:120px;height:30px;position:relative;top:-30px;left:190px;}
   #tu{position:relative;top:-30px;left:190px;} 
   .down{float:left;margin:30px 150px;}
   .down ul{list-style-type:none;}
   #down{background:grey;}
   .yanerror{color:red;font-size:14px;display:inline-block;margin-left:-120px;letter-spacing:3px}
    </style>
    
  </head>
  
  <body>
  <div class="logo"><img src="/RentYiSha/img/logo4.png" /></div>
  <div class="main">
  <div class="one">
   <span id="u">用户注册</span>
  <form class="form-horizontal" action="/RentYiSha/jsp/enter/regist.jsp">
  <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label"></label>
    <div class="col-sm-6">
     
      <input type="text" name="tel" class="form-control" id="inputEmail3" placeholder="手机号">
      <!--  <select name="country">
        <option>中国</option>
        <option>美国</option>
      </select> -->
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label"></label>
    <div class="col-sm-6">
      <input type="text" name="validate" class="form-control" id="inputPassword3" placeholder="验证码" onblur="checkValidate(this.value)">
       <img id="tu" src="/RentYiSha/yanzheng!execute.action" alt="点击换一张" onclick="fun(this);" title="看不清换一张"/>
       <span id="yanzheng"></span>
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-lg">下一步</button>
    </div>
  </div>
</form>
</div>
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
    <script type="text/javascript" src="/RentYiSha/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/RentYiSha/js/jquery.js"></script>
    <script type="text/javascript">
     function fun(im){
       var yuansu=document.getElementById("tu");
       yuansu.src=im.src+"?"+new Date().getTime();
     }
     function checkValidate(vali){
        $.ajax({
         type:'post',
         data:{'validate':vali},
         url:'/RentYiSha/userModel!valid.action',
         success:function(data){
         /* alert(data); */
         if(data=='false'){
          $("span#yanzheng").removeClass("yanerror").text();
          $("span#yanzheng").addClass("yanerror").text("验证码不匹配!");
          }
         }
       });
       
     }
     
    </script>
</html>
	