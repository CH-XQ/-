<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<title>登录</title>
<link rel="stylesheet" href="style1/public.css" type="text/css">
<link rel="stylesheet" href="style1/register.css" type="text/css">
<script>
	function check() {
		var id = $("#id").val();
		var password = $("#password").val();
		if (id == "" || password == "") {
			$("#message").text("账号或密码不可以为空");
			return false;
		}
		return true;
	}
</script>

</head>
<body>

	<div class="header_wrap">
		<div id="header" class="auto">
			<div class="logo">考试管理系统</div>
			<div class="nav">
				<a class="hover">首页</a>
			</div>
			<div class="serarch">
				<form>
					<input class="keyword" type="text" name="keyword"
						placeholder="搜索其实很简单" /> <input class="submit" type="submit"
						name="submit" value="" />
				</form>
			</div>
			<div class="login">
				<a>您好！请登录</a>
			</div>
		</div>
	</div>
	<div style="margin-top:55px;"></div>
	<div id="register" class="auto">
		<h2>请登录</h2>
		<form action="${pageContext.request.contextPath }/login.action" method="post" onsubmit="return check()">
			<label>
				用户名：<input type="text" name="id" id="id"/><span></span></label> <label>
				密码：<input type="password" name="password" id="password"/><span></span>
			</label>
			<font color="red"> <span id="message">${msg}</span></font>
			<div style="clear:both;"></div>
			<input class="btn" type="submit" name="submit" value="登录" /> <a
				href="#">忘记密码</a>

		</form>
	</div>
</body>

<div id="footer" class="auto"></div>
</html>