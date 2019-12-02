<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8" />
    <title>教务系统页面 </title>

    <link rel='stylesheet' type='text/css' href='style2/public.css' /></head>
	
	<style>
	 .hidden{
                display: none;
            }
	</style>
	
	<script>
            function showDiv(str) {
                var divs = []; 
                for(var i = 0;i < 2;i++) {
                    divs[i] = document.getElementById("div" + i);
                    divs[i].style.display = "none";
                }
                document.getElementById(str).style.display = "block";               
            }
    </script>
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
                    <li><a href="office-manage.jsp" >考试管理</a></li>
                    <li><a href="office-information-TeacherStudent.jsp" class="current">教师学生信息</a></li>
                    <li><a href="office-information-Office.jsp">个人信息</a></li>
                </ul>
            </li>
        </ul>
    </div>
	
	<div id="main">
		<div class="title">
			<a href="#"><button class="office" style="cursor: pointer;" onclick="showDiv('div0');" >教师</button></a>
			<a style="margin-left:5px;" href="#"><button class="office" style="cursor: pointer;"  onclick="showDiv('div1');" >学生</button></a>
		</div>
      
        <div id="div0">
			<a href="#">+添加教师</a>
			<table class="cu">
			<tr>
				<td><b>教师ID</b></td>
				<td><b>姓名</b></td>
				<td><b>性别</b></td>
				<td></td>
			</tr>
			<tr>
				<td>1</td>
				<td>胡昔祥</td>
				<td>男</td>
				<td><a href="#">编辑</a>|<a href="#">删除</a></td>
			</tr>
			<tr>
				<td><a href="#">查询</a></td>
			</tr>
		</table>
		</div>
		
        <div id="div1" class="hidden">
			<a href="#">+添加学生</a>
			<table class="cu">
			<tr>
				<td><b>学生ID</b></td>
				<td><b>姓名</b></td>
				<td><b>性别</b></td>
				<td></td>
			</tr>
			<tr>
				<td>1</td>
				<td>墨子</td>
				<td>男</td>
				<td><a href="#">编辑</a>|<a href="#">删除</a></td>
			</tr>
			<tr>
				<td><a href="#">查询</a></td>
			</tr>
		</table>
		</div>
		

	</div>
	
</body>
</html>


