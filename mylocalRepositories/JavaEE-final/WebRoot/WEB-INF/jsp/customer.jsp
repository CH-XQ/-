<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML>
<html>
<head>
<title>登录页面</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta content="MSHTML 6.00.2600.0" name=GENERATOR>
<link href="${pageContext.request.contextPath }/css/style.css"
	type=text/css rel=stylesheet>
<link href="${pageContext.request.contextPath }/css/booy-crm.css"
	type=text/css rel=stylesheet>
<script src="{pageContext.request.contextPath }/js/jquery-1.11.3.min.js">
	</script>
<script>
	function clearCustomer() {
		$("#student_id").val("");
		$("#phone").val("");
		$("#status").val("");
		$("#real_name").val("");
		$("#lesson_teacher").val("");
		$("#lesson_id").val("");
		$("#design files").val("");
		$("#add_time").val("");
		$("#teacher_id").val("");
		$("#real_name").val("");
		$("#teacher_level").val("");
	}
</script>

</head>

<body>
	<div>
		<h1>用户主页</h1>
		<a href="${pageContext.request.contextPath }/logout.action"> 退出登录
		</a>
	</div>
	<c:choose>
		<c:when test="${USER_SESSION.user_level == 1}">
			<table border="3px">
				<tr>
					<td colspan=5 align="center"><h3>基础信息</h3></td>
				</tr>
				<tr>
					<th>学生编号</th>
					<th>手机号</th>
					<th>姓名</th>
					<th>教师id</th>
					<th>课题id</th>
				</tr>
				<tr>
					<th>${USER_SESSION.student_id }</th>
					<th>${USER_SESSION.phone }</th>
					<th>${USER_SESSION.real_name }</th>
					<th>${USER_SESSION.lesson_teacher }</th>
					<th>${USER_SESSION.lesson_id }</th>
				</tr>
			</table>
			<font color="red"> <span id="message">${msg}</span>
			</font>
			<c:choose>
				<c:when test="${USER_SESSION.lesson_id == 0}">
					<a href="${pageContext.request.contextPath }/showlesson.action">选择毕业设计</a>
				</c:when>
				<c:when test="${USER_SESSION.lesson_id == NULL}">
					<a href="${pageContext.request.contextPath }/showlesson.action">选择毕业设计</a>
				</c:when>
				<c:otherwise>
					<a href="${pageContext.request.contextPath }/uploadlesson.action">查看和提交毕业设计</a>
				</c:otherwise>
			</c:choose>

		</c:when>
		<c:when test="${USER_SESSION.user_level == 2}">
			<table border="3px">
				<tr>
					<td colspan=5 align="center"><h3>基础信息</h3></td>
				</tr>
				<tr>
					<th>教师id</th>
					<th>手机号</th>
					<th>姓名</th>
					<th>课题id</th>
				</tr>
				<tr>
					<th>${USER_SESSION.teacher_id }</th>
					<th>${USER_SESSION.phone }</th>
					<th>${USER_SESSION.real_name }</th>
					<th>${USER_SESSION.lesson_id }</th>
				</tr>
			</table>
			<font color="red"> <span id="message">${msg}</span>
			</font>
			<c:choose>
				<c:when test="${USER_SESSION.lesson_id == 0}">
					<a href="${pageContext.request.contextPath }/createlesson.action">创建毕业设计</a>
				</c:when>
				<c:when test="${USER_SESSION.lesson_id == NULL}">
					<a href="${pageContext.request.contextPath }/createlesson.action">创建毕业设计</a>
				</c:when>
				<c:otherwise>
					<a href="${pageContext.request.contextPath }/checklesson.action">查看毕业设计</a>
				</c:otherwise>
			</c:choose>
		</c:when>
		<c:when test="${USER_SESSION.user_level == 3}">
			<table border="3px">
				<tr>
					<td colspan=5 align="center"><h3>基础信息</h3></td>
				</tr>
				<tr>
					<th>管理员id</th>
					<th>手机号</th>
					<th>姓名</th>
				</tr>
				<tr>
					<th>${USER_SESSION.teacher_id }</th>
					<th>${USER_SESSION.phone }</th>
					<th>${USER_SESSION.real_name }</th>
				</tr>
			</table>
			<font color="red"> <span id="message">${msg}</span>
			</font>
			
			<form  action="${pageContext.request.contextPath }/adduser.action" method="post">
				username:<input id="username" type="text" name="username"/>
				userid:<input id="id" type="text" name="id"/>
				password:<input id="password" type="text" name="id">
				user:<input id="user_level" type="text" name="user_level">
				is_enable:<input id="is_enable" type="text" name="is_enable"/>
			<input type="submit" value="添加User"/>
			</form>
		</c:when>
	</c:choose>

</body>
</html>
