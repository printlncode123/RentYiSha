<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>个人信息</title>
<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style> 
  body,html{width:100%;height:100%;padding:0px;margin:0px;}
  table{position:relative; z-index:10; display:block;border:1px solid;width:300px;margin:auto auto;text-align:center;}
  table tr td{border:1px solid;height:40px;}
  input[type=button]{font-size:20px;margin:30px 650px;width:100px;text-align:center;height:40px;}
  .up{display:block;top:300px;width:300px;heigth:400px;position:absolute;top:50%;margin-top:-200px;
      left:50%;margin-left:-100px;background:white;
  }
  
  #zhezhao{
    width:100%;height:100%;
    position:absolute;
    display:none;
    left:0px;
    top:0px;
    z-index:100;
    background:rgba(192,192,192,0.8);  
  }
</style>

</head>
<body>
<%@include file="/../public/head.jsp" %>
  <table>
  
   <tr><td>昵称</td><td>${u.nickname }</td></tr>
   <tr><td>姓名</td><td>${u.uname }</td></tr>
   <tr><td>性别</td><td>${u.sex }</td></tr>
   <tr><td>积分</td><td>${u.credit}</td></tr>
   <tr><td>账号</td><td>${u.randomid }</td></tr>
   <tr><td>住址</td><td>${u.addr }</td></tr>
   <tr><td>注册时间</td><td>${u.date }</td></tr>
   <tr><td>头像</td><td>
   ${u.imgAddr}
   <c:choose>
     <c:when test="${imgName==null}">
       <img src="${pageContext.request.contextPath}/img/head/${u.imgAddr}"/>
     </c:when>
     <c:otherwise>
       <%-- <img src="${pageContext.request.contextPath}/jsp/person/upload/head/${imgName}"/> --%>
       <img src="${pageContext.request.contextPath}/upload/${imgName}"/>
     </c:otherwise>
   </c:choose>
    </td>
   </tr>
   <tr><td colspan="2"><button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myinfoModal">
	编辑信息
  </button></td></tr>
</table>
 
  <h2></h2>

<%@include file="../../public/bottom.jsp" %>
<!-- 模态框（Modal） -->
<div class="modal fade" id="myinfoModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title" id="myModalLabel">
					<!-- 更换头像 -->
				</h4>
			</div>
			<form action="${pageContext.request.contextPath}/userModel!updateImage.action" method="post" enctype="multipart/form-data">
			<div class="modal-body">
			<table>
			<tr><td>用户ID</td><td><input type="text" name="u.uid" value="${u.uid }"></td></tr>
   <tr><td>昵称</td><td><input type="text" name="u.nickname" value="${u.nickname }"></td></tr>
   <tr><td>姓名</td><td><input type="text" name="u.uname" value="${u.uname }" disabled></td></tr>
   <tr><td>性别</td><td>
   <input type="radio" name="u.sex" <c:if test="${u.sex eq '男'.charAt(0)}">checked='checked'</c:if>/>男
   <input type="radio" name="u.sex" <c:if test="${u.sex eq '女'.charAt(0)}">checked='checked'</c:if>/>女
   </td></tr>
   <tr><td>住址</td><td><input type="text" name="u.addr" value="${u.addr }"></td></tr>
   <tr><td>注册时间</td><td><input type="text" name="u.date" value="${u.date }" disabled></td></tr>
   <tr><td>头像</td><td><input type="file" name="f"></td></tr>	
			</table>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭
				</button>
				<button type="submit" class="btn btn-primary">
					提交更改
				</button>
			</div>
			</form>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
</div>
</body>
<script type="text/javascript">
 var z=document.getElementById("zhezhao"); 
 var u=document.getElementById("up");         
 function uu(){
   z.style.display="block";
  }
  function update(){
   var d=document.getElementsByName("up").item(0);
   d.style.display="block";
  }
  function exitzhezhao(){
       z.style.display="none";
  }
  
  u.addEventListener("click",function(e){
       e.stopPropagation();
        
  });
  
  function fun(){
   window.open("/RentYiSha/jsp/person/uploadImg.jsp");
  }
 
</script>
</html>