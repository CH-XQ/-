<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8" />
<title>教师系统页面</title>

<link rel='stylesheet' type='text/css' href='style2/public.css' />
</head>
<body>
	<div id="top">
		<div class="logo">教师系统</div>

		<div class="login_info">
			<a href="#" style="color:#fff;">教师首页</a>&nbsp;|&nbsp;
			教师：${USER_SESSION.name } <a
				href="${pageContext.request.contextPath }/logout.action">[安全退出]</a>
		</div>
	</div>

	<div id="sidebar">
		<ul>
			<li>
				<div class="small_title">系统</div>
				<ul class="child">
					<li><a
						href="${pageContext.request.contextPath }/teacher-register.action">创建考试</a></li>
					<li><a
						href="${pageContext.request.contextPath }/teacher-manage.action"
						class="current">成绩管理</a></li>
					<li><a
						href="${pageContext.request.contextPath }/teacher-information.action">个人信息</a></li>
				</ul>
			</li>
		</ul>
	</div>

	<div id="main">
		<div class="title">学科列表</div>
		<form method="post">
			<table class="list">
				<tr>
					<th>学科名称</th>
				</tr>
				<tr>
					<td>JAVA高级程序设计</td>
					<!--<td><a href="teacher-manage-editor.jsp">[成绩编辑]</a>-->
				</tr>
				<tr>
					<td>安卓开发</td>
					<!--<td><a href="teacher-manage-editor.jsp">[成绩编辑]</a>
				<tr>-->
			</table>
		</form>
	</div>
</body>
</html>


