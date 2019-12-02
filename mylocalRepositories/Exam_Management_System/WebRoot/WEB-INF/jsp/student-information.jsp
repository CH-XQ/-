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
                    <li><a href="${pageContext.request.contextPath }/student-result.action" >成绩查询</a></li>
                    <li><a href="${pageContext.request.contextPath }/student-information.action" class="current" >个人信息</a></li>
                </ul>
            </li>
        </ul>
    </div>
	
	<div id="main">
		<div class="title" style="margin-bottom: 20px">个人信息</div>
		<form method="post">
			<table class="bu">
				<tr>
					<td>姓名</td>
					<td>${USER_SESSION.name }</td>
				</tr>
				<tr>
					<td>性别</td>
					<td>${USER_SESSION.sex }</td>
				</tr>
				<tr>
					<td>出生日期</td>
					<td>${USER_SESSION.birth }</td>
				</tr>
				<tr>
					<td>系别</td>
					<td>${USER_SESSION.grade }</td>
				</tr>
				<tr>
					<td>班级</td>
					<td>${USER_SESSION.executive_class }</td>
				</tr>
				<tr>
					<td>电话号码</td>
					<td>${USER_SESSION.phone }</td>
				</tr>
				<tr>
					<td>家庭住址</td>
					<td>${USER_SESSION.address }</td>
				</tr>
				<tr>
					<td>身份证号</td>
					<td>${USER_SESSION.idnumber }</td>
				</tr>
			   
			</table>
			<input style="margin-top:20px;cursor: pointer;" class="btn" type="submit" name="submit" value="修改信息" />
		</form>
	</div>

</body>
</html>


