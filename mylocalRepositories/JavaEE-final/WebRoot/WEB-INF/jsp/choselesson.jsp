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

</script>

</head>

<body>

	<div>
		<h1>毕业设计选择</h1>
	</div>
	<font color="red">
							<span id="message">${msg}</span>
						</font>
	<form action="${pageContext.request.contextPath }/choselesson.action" method="post">
		<div>课题列表</div>
		<table>
			<tr>
				<th>课题编号（点击查看）</th>
				<th>教师id</th>
				<th>课题名称</th>
				<th>人数</th>
				<th>操作</th>
			</tr>
			<tbody>
				<c:forEach items="${page.rows}" var="row">
					<tr>
						<th><input id="lesson_id" type="submit"  name="lesson_id" value="${row.lesson_id}"/></th>
						<th>${row.teacher_id}</th>
						<th>${row.lesson_name}</th>
						<th>${row.students_number}/${row.students_max_number}</th>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</form>
</body>
</html>
