<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8" />
    <title>管理员页面 </title>
    <meta name="keywords" content="后台界面" />
    <meta name="description" content="后台界面" />

     <link rel='stylesheet' type='text/css' href='style2/public.css' /></head>
<body>
    <div id="top">
            <div class="logo">
                管理员系统
            </div>
            
            <div class="login_info">
                <a href="#" style="color:#fff;">管理员首页</a>&nbsp;|&nbsp;
                管理员<a href="${pageContext.request.contextPath }/logout.action">[安全退出]</a>
            </div>
    </div>
    
	<div id="sidebar">
        <ul>
            <li>
                <div class="small_title">系统</div>
                <ul class="child">
                    <li><a href="admin-teacher.jsp">教师</a></li>
                    <li><a href="admin-student.jsp">学生</a></li>
                    <li><a href="admin-office.jsp" class="current">教务</a></li>
                </ul>
            </li>
        </ul>
    </div>
	
	<div id="main">
	<div class="title">教务列表</div>
    <form method="post">
    <table class="list">
        <tr>
            <th>教务ID</th>
            <th>姓名</th>
            <th>性别</th>
        </tr>
        <tr>
            <td>1</td>
            <td>李主任</td>
			<td>男</td>
            <td><a href="#">[编辑]</a>&nbsp;&nbsp;<a href="#">[删除]</a></td>
        </tr>                 
		
    </table>
	<input style="margin-top:20px;cursor:pointer;" class="btn" type="submit" name="submit" value="添加" />
    <input style="margin-top:20px;cursor:pointer;" class="btn" type="submit" name="submit" value="查询" />
    </form>
	</div>
</body>
</html>


