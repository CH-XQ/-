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
<title>上传毕业设计</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta content="MSHTML 6.00.2600.0" name=GENERATOR>
<link href="${pageContext.request.contextPath }/css/style.css"
	type=text/css rel=stylesheet>
<link href="${pageContext.request.contextPath }/css/booy-crm.css"
	type=text/css rel=stylesheet>
<script src="{pageContext.request.contextPath }/js/jquery-1.11.3.min.js">
	</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script>
	function check() {
		var file = document.getElementById("file").value;
		if (file.length == 0 || file == "") {
			alert("请填写上传文件");
			return false;
		}
		return true;
	}
</script>
</head>

<body>
<font color="red"> <span id="message">${msg}</span>
			</font>
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
	<form action="${pageContext.request.contextPath }/confirmuploadlesson.action" method="post" enctype="multipart/form-data" onsubmit="return check()">
		选择文件：<input id="file" type="file" name="uploadfile" multiple="multiple" /><br />
		<input type="submit" value="上传" />
	</form>
</body>
</html>
