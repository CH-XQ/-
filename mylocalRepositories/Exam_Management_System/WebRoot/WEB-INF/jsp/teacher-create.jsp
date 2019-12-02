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
			<a href="#" style="color:#fff;">教师首页</a>&nbsp;|&nbsp; 教师：
			${USER_SESSION.name } <a
				href="${pageContext.request.contextPath }/logout.action">[安全退出]</a>
		</div>
	</div>

	<div id="sidebar">
		<ul>
			<li>
				<div class="small_title">系统</div>
				<ul class="child">
					<li><a
						href="${pageContext.request.contextPath }/teacher-register.action"
						class="current">创建考试</a></li>
					<li><a
						href="${pageContext.request.contextPath }/teacher-manage.action">成绩管理</a></li>
					<li><a
						href="${pageContext.request.contextPath }/teacher-information.action">个人信息</a></li>
				</ul>
			</li>
		</ul>
	</div>

	<div id="main">
		<div class="title" style="margin-bottom: 20px">创建一门考试</div>
		<form method="post"
			action="${pageContext.request.contextPath }/createtest.action">
			<table class="au">
				<tr>
					<td>考试名称</td>
					<td><input type="text" id="name" /></td>
					<td>考试名称不得为空，最大不得超过20个字符</td>
				</tr>
				<tr>
					<td>考试时间</td>
					<td><input type="text" id="time" /></td>
					<td>考试时间不得为空，以日期格式填写</td>
				</tr>
				<tr>
					<td>考试地点</td>
					<td><input type="text" id="classroom" /></td>
					<td>考试地点不得为空</td>
				</tr>
			</table>
			<input style="margin-top:20px;cursor: pointer;" class="btn"
				type="submit" name="submit" value="申请创建" />
		</form>
	</div>

</body>
</html>


