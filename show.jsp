<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!-- 让jsp页面支持EL表达式 -->
<%@ page isELIgnored="false"%>
<!-- 让jsp页面支持JSTL表达式 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 将列表中的爱好改为用复选框显示,需要用到jstl标签的fn函数 -->
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>员工管理系统--管理信息</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
-->
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
</head>

<style>
table {
	text-align: center;
}

h2 {
	text-align: center;
	margin-top: 2%;
}

h3,h4 {
	text-align: right;
	margin-right: 12.5%;
}

input[type=submit] {
	cursor: pointer;
}

input,p {
	text-align: center;
}
a:active{
	text-decoration:none; 
	disabled:true
	}
</style>
<!-- <script type="text/javascript">
	window.onload=function(){
		/* 用于监测浏览器是否关闭;若浏览器关闭,则销毁当前的session */
		setInterval(function(){
			$.post("aliveServlet",{},null)
		},1000);
	}
</script> -->
<%	
	String sessionID_old=session.getId();
	System.out.println(sessionID_old);
%>

<body>
	<h2>BWIE员工管理系统</h2>
	<h4>
		---欢迎用户&nbsp;<span style="color:green;"> ${loginName }</span>&nbsp;&nbsp;&nbsp;<span>在线人数:&nbsp;${totalOnLine}</span>
	</h4>
	<h3>
		<a href="add.jsp" target="_self">添加员工信息</a>
	</h3>

	<table border="1" align="center">
		<tr>
			<td>编号</td>
			<td>姓名</td>
			<td>性别</td>
			<td>出生日期</td>
			<td>爱好</td>
			<td>家庭住址</td>
			<td>操作1</td>
			<td>操作2</td>
		</tr>
		<!-- page,request,session,application -->
		<c:forEach var="t" items="${teachers}">
			<tr>
				<form action="panduanServlet">
					<td><input type="text" name="id" value="${t.id}" readonly></td>
					<td><input type="text" name="name" value="${t.name}"></td>
					<td>
						<%-- <input type="text" name="sex" value="${t.sex}" > --%> <input
						type="radio" name="sex" value="男"
						<c:if test="${fn:contains(t.sex,\"男\")}">checked</c:if>> 男
						&nbsp; <input type="radio" name="sex" value="女"
						<c:if test="${fn:contains(t.sex,\"女\")}">checked</c:if>> 女
					</td>
					<td><input type="date" name="birth" value="${t.birth}"></td>
					<td>
						<%-- <input type="text" name="hobby"  value="${t.hobby}" > --%> 
						<input	type="checkbox" name="hobby" value="唱歌"
						<c:if test="${fn:contains(t.hobby,\"唱歌\")}">checked</c:if>>唱歌
						&nbsp; 
						<input type="checkbox" name="hobby" value="跳舞"
						<c:if test="${fn:contains(t.hobby,\"跳舞\")}">checked</c:if>>跳舞
						&nbsp; <input type="checkbox" name="hobby" value="爬山"
						<c:if test="${fn:contains(t.hobby,\"爬山\")}">checked</c:if>>爬山
						&nbsp; <input type="checkbox" name="hobby" value="读书"
						<c:if test="${fn:contains(t.hobby,\"读书\")}">checked</c:if>>读书
						&nbsp; <input type="checkbox" name="hobby" value="其他"
						<c:if test="${fn:contains(t.hobby,\"其他\")}">checked</c:if>>其他
					</td>
					<td><input type="text" name="address" value="${t.address}"></td>
					<td><input type="submit" value="修改" name="xiugai"></td>
					<td><input type="submit" value="删除" name="shanchu"></td>
				</form>
			</tr>

		</c:forEach>


	</table>
	<p>
		第${pageBean.currentPage}页/共${pageBean.totalPageNum}页&nbsp;&nbsp;
		<c:if test="${pageBean.currentPage>1 }">
			<a href="${pageBean.url}">首页</a>
			&nbsp;&nbsp; 
			<a href="${pageBean.url}?targetPage=${pageBean.currentPage-1}">
			上一页</a>
			&nbsp;&nbsp;
		</c:if>
		
		<c:forEach var="p" begin="1" end="${pageBean.totalPageNum}" step="1">
			<a href="${pageBean.url}?targetPage=${p}">
			${p}</a>
			&nbsp;&nbsp;
		</c:forEach>

		<c:if test="${pageBean.currentPage<pageBean.totalPageNum}">
			<a href="${pageBean.url}?targetPage=${pageBean.currentPage+1}">
			下一页</a>
			&nbsp;&nbsp; 
			<a href="${pageBean.url}?targetPage=${pageBean.totalPageNum}">尾页</a>
		</c:if>

	</p>
<p style="margin-bottom: 2%;text-align:left;text-indent:7em;font-weight:bold;">
	<a href="login.jsp">退出登录</a>
</p>
</body>
</html>
