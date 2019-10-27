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
</head>

<body>

	<div>
		<h1>创建毕业设计</h1>
		<form
			action="${pageContext.request.contextPath }/confirmlesson.action"
			method="post">
			课题id：<input id="lesson_id" type="text" name="lesson_id" /><br /> 
			课程名称：<input id="lesson_name" type="text" name="lesson_name" /><br /> 
			最大学生数量：<input id="students_max_number" type="text" name="students_max_number" /><br /> 
			初始学生数量：<input id="students_number" type="text" name="students_number" /><br /> 
			课题性质：<input id="lesson_properties" type="text" name="lesson_properties" /><br /> 
			课题目的：<input id="lesson_objective" type="text" name="lesson_objective" /><br /> 
			详细描述：<input id="lesson_details" type="text" name="lesson_details" /><br /> 
			社会性：<input id="is_insocial" type="text" name="is_insocial" /><br />  
			<center>
				<input type="submit" value="创建" />
			</center>
		</form>
	</div>
</body>
</html>
