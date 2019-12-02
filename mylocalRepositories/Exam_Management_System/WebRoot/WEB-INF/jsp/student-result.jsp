<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8" />
    <title>学生系统页面 </title>

    <link rel='stylesheet' type='text/css' href='style2/public.css' />
	
</head>
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
	
	<div id="sidebar">
        <ul>
            <li>
                <div class="small_title">系统</div>
                <ul class="child">
                    <li><a href="${pageContext.request.contextPath }/student-register.action" >考试报名</a></li>
                    <li><a href="${pageContext.request.contextPath }/student-result.action" class="current" >成绩查询</a></li>
                    <li><a href="${pageContext.request.contextPath }/student-information.action" >个人信息</a></li>
                </ul>
            </li>
        </ul>
    </div>
	
	
	<div id="main">
		<div class="title">
			成绩查询列表
		</div>
		<table class="cu">
				<tr>
					<td><b>学科</b></td>
					<td><b>任课老师</b></td>
					<td><b>成绩<b></td>
				</tr>
				<tr>
					<td>javaEE</td>
					<td>周梦熊</td>
					<td>85</td>
				</tr>
			</table>
	</div>
	


</body>
</html>


