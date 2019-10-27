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
<title>作业下载</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta content="MSHTML 6.00.2600.0" name=GENERATOR>
<link href="${pageContext.request.contextPath }/css/style.css"
	type=text/css rel=stylesheet>
<link href="${pageContext.request.contextPath }/css/booy-crm.css"
	type=text/css rel=stylesheet>
<script src="{pageContext.request.contextPath }/js/jquery-1.11.3.min.js">
	</script>
<script>

</script>

</head>

<body>

	<div>
		<h1>作业下载</h1>
	</div>
	<font color="red"> <span id="message">${msg}</span>
	</font>
	<form action="${pageContext.request.contextPath }/download.action" method="post">
		<div>已提交列表</div>
		<table>
			<tr>
				<th>学生id</th>
				<th>学生姓名</th>
			</tr>
			<tbody>
				<c:forEach items="${page.rows}" var="row">
					<tr>
						<c:if test="${USER_SESSION.lesson_id == 0}">
						<th bgcolor="red"><input id="student_id" type="submit" name="student_id" value="${row.student_id}" /></th>
						</c:if>
						<c:if test="${USER_SESSION.lesson_id != 0}">
						<th><input id="student_id" type="submit" name="student_id" value="${row.student_id}" /></th>
						</c:if>
						<th>${row.real_name}</th>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</form>
	<form  action="${pageContext.request.contextPath }/addstudent.action" method="post">
		直接添加学生id：<input id="student_id" type="text" name="student_id"/>
		<input type="submit" value="添加"/>
	</form>
	<form  action="${pageContext.request.contextPath }/addstudent.action" method="post">
		直接删除学生id：<input id="student_id" type="text" name="student_id"/>
		<input type="submit" value="删除"/>
	</form>
</body>
</html>
