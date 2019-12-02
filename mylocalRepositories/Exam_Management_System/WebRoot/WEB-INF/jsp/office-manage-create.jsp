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
	
	
	<div id="main2">
		<div class="title" style="margin-bottom: 20px">添加一门考试</div>
		<form method="post">
			<table class="au" style="margin-left: 20px">
				<tr>
					<td>考试名称</td>
					<td><input type="text" /></td>
					<td>
						考试名称不得为空，最大不得超过20个字符
					</td>
				</tr>
				<tr>
					<td>考试时间</td>
					<td><input  type="text" /></td>
					<td>
						考试时间不得为空，以日期格式填写
					</td>
				</tr>
				<tr>
					<td>考试地点</td>
					<td><input  type="text" /></td>
					<td>
						考试地点不得为空
					</td>
				</tr>
				<tr>
					<td>考试状态</td>
					<td>
						<label><input style="width:10px;height:10px;margin-right:5px;" class="office" name="sex" type="radio" value="">暂定</label>
						<label><input style="width:10px;height:10px;margin-right:5px;margin-left:20px;" name="sex" type="radio" value="">报名开启</label>
						<label><input style="width:10px;height:10px;margin-right:5px;margin-left:20px;" name="sex" type="radio" value="">报名结束</label>
					<td>
				</tr>
			</table>
			<input style="margin-top:20px;margin-left:20px;cursor: pointer;" class="btn" type="submit" name="submit" value="确认添加" />
			<a style="margin-top:20px;margin-left:10px;" href="office-manage.jsp">返回</a>
		</form>
	</div>
    
</body>
</html>


