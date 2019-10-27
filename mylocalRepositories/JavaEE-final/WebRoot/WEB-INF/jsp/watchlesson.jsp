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
<title>查看lesson</title>
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
		<h1>选课页面</h1>
	</div>
	<form action="${pageContext.request.contextPath }/confirmchoselesson.action"  method="post">
		<table border="3px">
			<tr>
				<td colspan=9 align="center"><h3>基础信息</h3></td>
			</tr>
			<tr>
				<th>课题id</th>
				<th>教师id</th>
				<th>课程名称</th>
				<th>可选人数</th>
				<th>已选人数</th>
				<th>课程性质</th>
				<th>课程目的</th>
				<th>细节</th>
				<th>社会形</th>
			</tr>
			<tr>
				<th>${LESSON.lesson_id }</th>
				<th>${LESSON.teacher_id }</th>
				<th>${LESSON.lesson_name }</th>
				<th>${LESSON.students_max_number }</th>
				<th>${LESSON.students_number }</th>
				<th>${LESSON.lesson_properties }</th>
				<th>${LESSON.lesson_objective }</th>
				<th>${LESSON.lesson_details }</th>
				<th>${LESSON.is_insocial }</th>
			</tr>
		</table>
		<input id="lesson_id" type="submit"  name="lesson_id" value="${LESSON.lesson_id}"/>
	</form>
	<a href="${pageContext.request.contextPath }/choselesson.action">返回</a>
</body>
</html>