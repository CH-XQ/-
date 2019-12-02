<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<title>找回密码</title>
<link rel="stylesheet" href="style1/public.css" type="text/css">
<link rel="stylesheet" href="style1/register.css" type="text/css">
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
                <input class="keyword" type="text" name="keyword" placeholder="搜索其实很简单" />
                <input class="submit" type="submit" name="submit" value="" />
            </form>
        </div>
        <div class="login">
            <a>您好！请登录</a>
        </div>
    </div>
</div>
<div style="margin-top:55px;"></div>

<div id="register" class="auto">
        <h2>请输入您的手机号</h2>
        <form method="post">
            <label>手机号：<input type="text" name="name"  /><span></span></label>
            <label>验证码：<input type="password" name="pw"  /><span></span></label>
            <div style="clear:both;"></div>
			<input class="btn" type="submit" name="submit" value="获取手机验证码" />
			<a href="login.jsp">返回</a>
        </form>
    </div>
</body>

<div id="footer" class="auto">

</div>
</html>