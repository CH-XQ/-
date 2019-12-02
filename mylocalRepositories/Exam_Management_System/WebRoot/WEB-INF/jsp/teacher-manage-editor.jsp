<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8" />
    <title>教师系统页面 </title>

    <link rel='stylesheet' type='text/css' href='style2/public.css' /></head>
<body>
    <div id="top">
            <div class="logo">
                教师系统
            </div>
            
            <div class="login_info">
                <a href="#" style="color:#fff;">教师首页</a>&nbsp;|&nbsp;
                教师：${USER_SESSION.name } <a href="${pageContext.request.contextPath }/logout.action">[安全退出]</a>
            </div>
    </div>
	
	<div id="main2">
		<div class="title">学生成绩列表</div>
		<form method="post">
		<table class="editor">
			<tr>
				<td><b>学号</b></td>
				<td><b>姓名</b></td>
				<td><b>性别</b></td>
				<td><b>平时成绩</b></td>
				<td><b>考试成绩</b></td>
				<td><b>总成绩</b></td>
			</tr>
			<tr>
				<td>17905517</td>
				<td>墨子</td>
				<td>男</td>
				<td><input type="text" /></td>
				<td><input type="text" /></td>
				<td>0</td>
			</tr>
		</table>
		<input style="margin-top:10px;margin-left:20px; cursor: pointer;" class="btn" type="submit" name="submit" value="确认录入" />
		<a style="margin-left:10px;" href="teacher-manage.jsp" >返回</a>
		</form>
	</div>
	
</body>
</html>


