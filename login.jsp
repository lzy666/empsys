<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%@ page isELIgnored="false"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>员工管理系统--登录界面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <style>
  input,td{
  	height:40px;
  }  
  input{
  	width:210px;
  }
  td{
  	text-align:center;
  }
  input[type=submit]{
  	width:90px;
  	height:40px;
  	cursor:pointer;
  }
  </style>
  
  <body>
  <%
  	session.invalidate();
  	Cookie[] cookies=request.getCookies();
  	for(Cookie c:cookies){
  		if("cookie_name".equals(c.getName())){
			pageContext.setAttribute("cookie_name", c.getValue());
		}
		if("cookie_pwd".equals(c.getName())){
			pageContext.setAttribute("cookie_pwd", c.getValue());
		}  		
  	}
  	
  
  %>
    <div style="text-align:center;margin-top:5%;">
    	<h3>欢迎登录</h3>
    	<h3>BWIE员工管理系统</h3>
    	<form action="loginServlet">
    		<table border="1" align="center">
    			<tr>
    				<td width="70">用户名:</td>
    				<td><input type="text" name="loginName" value="${pageScope.cookie_name}" autofocus="true"></td>
    			</tr>
    			<tr>
    				<td>密码:</td>
    				<td><input type="password" name="loginPwd" value="${pageScope.cookie_pwd}"></td>
    			</tr>
    			<tr>
    				<td colspan="2" align="center" style="height:50px;">
    					<input type="submit" value="登录">
    				</td>
    			</tr>
    		</table>
    	</form>
    </div>
    
    
  </body>
</html>
