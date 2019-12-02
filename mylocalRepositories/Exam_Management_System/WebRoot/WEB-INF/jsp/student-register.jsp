<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8" />
<title>学生系统页面</title>

<link rel='stylesheet' type='text/css' href='style2/public.css' />

<style>
.hidden {
	display: none;
}
</style>

<script>
	function showDiv(str) {
		var divs = [];
		for (var i = 0; i < 2; i++) {
			divs[i] = document.getElementById("div" + i);
			divs[i].style.display = "none";
		}
		document.getElementById(str).style.display = "block";
	}
</script>
</head>
<body>
	<div id="top">
		<div class="logo">学生系统</div>

		<div class="login_info">
			<a href="#" style="color:#fff;">学生首页</a>&nbsp;|&nbsp;
			学生：${USER_SESSION.name } <a
				href="${pageContext.request.contextPath }/logout.action">[安全退出]</a>
		</div>
	</div>

	<div id="sidebar">
		<ul>
			<li>
				<div class="small_title">系统</div>
				<ul class="child">
					<li><a
						href="${pageContext.request.contextPath }/student-register.action"
						class="current">考试报名</a></li>
					<li><a
						href="${pageContext.request.contextPath }/student-result.action">成绩查询</a></li>
					<li><a
						href="${pageContext.request.contextPath }/student-information.action">个人信息</a></li>
				</ul>
			</li>
		</ul>
	</div>

	<div id="main">
		<div class="title">
			<a href="#"><button class="office" style="cursor: pointer;"
					onclick="showDiv('div0');" action="${pageContext.request.contextPath }/chosetest.action"
					method="get">可报名考试</button></a> <a style="margin-left:5px;" href="#"><button
					class="office" style="cursor: pointer;" onclick="showDiv('div1');">已报名考试</button></a>
		</div>

		<div id="div0" class="hidden">
			<form>
				<table>
					<tr>
						<th>考试名称（点击查看）</th>
						<th>发起人</th>
					</tr>
					<tbody>
						<c:forEach items="${page.rows}" var="row">
							<tr>
								<th><input id="name" type="submit" name="name"
									value="${row.name}" /></th>
								<th>${row.teacher}</th>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</form>
			<font color="red"> <span id="message">${msg}</span></font>
		</div>

		<div id="div1" class="hidden">
			<table class="cu">
				<tr>
					<td><b>考试名称</b></td>
					<td><b>发起人</b></td>
					<td></td>
				</tr>
				<tr>
					<td>C++考试</td>
					<td>楼永坚</td>
					<td><a href="#">取消报名</a></td>
				</tr>
			</table>
		</div>


	</div>

</body>
</html>


