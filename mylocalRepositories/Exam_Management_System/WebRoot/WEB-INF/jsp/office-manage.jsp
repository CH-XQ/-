<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8" />
    <title>教务系统页面 </title>

    <link rel='stylesheet' type='text/css' href='style2/public.css' /></head>
<body>
    <div id="top">
            <div class="logo">
                教务系统
            </div>
            
            <div class="login_info">
                <a href="#" style="color:#fff;">教务首页</a>&nbsp;|&nbsp;
                教务：${USER_SESSION.name } <a href="${pageContext.request.contextPath }/logout.action">[安全退出]</a>
            </div>
    </div>
	
	<div id="sidebar">
        <ul>
            <li>
                <div class="small_title">系统</div>
                <ul class="child">
                    <li><a href="office-manage.jsp" class="current" >考试管理</a></li>
                    <li><a href="office-information-TeacherStudent.jsp" >教师学生信息</a></li>
                    <li><a href="office-information-Office.jsp" >个人信息</a></li>
                </ul>
            </li>
        </ul>
    </div>
	
	<div id="main">
		
		<a href="office-manage-create.jsp">+添加考试</a>
		<form method="post">
		<table class="editor">
			<tr>
				<td><b>考试名称</b></td>
				<td><b>考试状态</b></td>
				<td><b>发起人</b></td>
				<td></td>
			</tr>
			<tr>
				<td>java考试</td>
				<td>未审核</td>
				<td>唐红军</td>
				<td><a href="#">编辑</a></td>
			</tr>
		</table>
    </form>
	</div>
</body>
</html>


