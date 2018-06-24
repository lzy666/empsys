<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>员工管理系统--添加信息</title>
    
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
  	table{  	
  	text-align:center;
  }
  h2{
  	text-align:center;
  	margin-top:2%;
  }
  h4{
  	text-align:right;
  	margin-right:12.5%;
  }
  h3{
  	text-align:center;
  }
  input[type=submit]{
  	width:90px;
  	height:40px;
  	cursor:pointer;
  }
  input[type=text]{
  	width:100%;
  	height:35px;
  }
  input[type=radio]{
  	height:27px;
  }
  </style>
  <body>
  <h2>
  	BWIE员工管理系统
  </h2>
  <h4>-----欢迎用户&nbsp;<span style="color:green;"> ${loginName }</span></h4>
    
    <form action="addServlet">
    	
    	<table align="center" border="1">
    	
    		<tr>
    			<td width="90">姓名:</td>
    			<td><input type="text" name="name" autofocus="true"></td>
    		</tr>
    		<tr>
    			<td>性别:</td>
    			<td>    			
    			<!-- <input type="text" name="sex"> -->
    			<input type="radio" name="sex" value="男">男
    			&nbsp;
    			<input type="radio" name="sex" value="女">女
    			</td>
    		</tr>
    		<tr>
    			<td>出生日期:</td>
    			<td><input type="date" name="birth"></td>
    		</tr>
    		<tr>
    			<td>业余爱好:</td>
    			<td>    			
    			<!-- <input type="text" name="hobby"> -->
    			<input	type="checkbox" name="hobby" value="唱歌">唱歌
				&nbsp; <input type="checkbox" name="hobby" value="跳舞">跳舞
				&nbsp; <input type="checkbox" name="hobby" value="爬山">爬山
				&nbsp; <input type="checkbox" name="hobby" value="读书">读书
				&nbsp; <input type="checkbox" name="hobby" value="其他">其他
    			</td>
    		</tr>
    		<tr>
    			<td>地址:</td>
    			<td><input type="text" name="address"></td>
    		</tr>
    		<tr>
    			<td colspan="2" align="center" height="50">
    				<input type="submit" value="提交">
    			</td>
    		</tr>
    	
    	</table>
    	
    	
    </form>
    <h3>
    	<a href="showServlet" target="_self">跳转到列表显示页</a>
    </h3>
    
  </body>
</html>
