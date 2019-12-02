<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8" />
    <title>学生系统页面 </title>

    <link rel='stylesheet' type='text/css' href='style2/public.css' /></head>
<body>
    <div id="top">
            <div class="logo">
                学生系统
            </div>
            
            <div class="login_info">
                <a href="#" style="color:#fff;">学生首页</a>&nbsp;|&nbsp;
                学生：${USER_SESSION.name } <a href="${pageContext.request.contextPath }/logout.action">[安全退出]</a>
            </div>
    </div>
	
	
	<div id="main2">
		<div class="title" style="margin-bottom: 20px">查看考试信息</div>
		<form method="post">
			<table class="au" style="margin-left: 20px">
				<tr>
					<td><b>考试名称：<b></td>
					<td>javaEE考试<td>
				</tr>
				<tr>
					<td><b>考试时间：<b></td>
					<td>2019年10月8日<td>
				</tr>
				<tr>
					<td><b>考试地点：<b></td>
					<td>笃行楼205</td>
				</tr>
		
			</table>
			<input style="margin-top:20px;margin-left:20px;cursor: pointer;" class="btn" type="submit" name="submit" value="确认报名" />
			<a style="margin-top:20px;margin-left:10px;" href="student-register.jsp">返回</a>
		</form>
	</div>
    
</body>
</html>


