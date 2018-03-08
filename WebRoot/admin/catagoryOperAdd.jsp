<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'dressOper.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
 
  </head>
  
  <body>
     
     <form action="/MyPro/servlet/Catagory" method="post" enctype="multipart/form-date" name="form1">
     <table>
      <tr>
          <!-- <td><input type="text" name="catagoryID">&nbsp;&nbsp;类别编号</td> -->
          <td>
              <select name="catagory">
                 <option>---</option>
                 <option value="婚纱">婚纱</option>
                 <option value="西装">西装</option>
                 <option value="晚礼服">晚礼服</option>
                 <option value="民国服">民国服</option>
                 <option value="民族服">民族服</option>
                 <option value="学士服">学士服</option>
                 <option value="古代服装">古代服装</option>
              </select>商品类别
          </td>
          
          </tr>
      <tr><td><input type="submit" value="添加"></td></tr>
      </table> 
     </form>
   
  </body>
</html>
