<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>添加员工</title>
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>css/component.css">
<link rel="stylesheet" type="text/css" href="<%=basePath%>css/admin.css">
<link rel="stylesheet" type="text/css"href="<%=basePath%>css/font-awesome.min.css">
<link href="https://cdn.bootcss.com/twitter-bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="<%=basePath%>js/wang.js"></script>

<script src="https://cdn.bootcss.com/jquery/3.5.0/jquery.min.js"></script>
<script
	src="https://static.runoob.com/assets/jquery-validation-1.14.0/lib/jquery.js"></script>
	<script src="https://cdn.bootcss.com/twitter-bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script
	src="https://static.runoob.com/assets/jquery-validation-1.14.0/dist/jquery.validate.min.js"></script>
<script
	src="https://static.runoob.com/assets/jquery-validation-1.14.0/dist/localization/messages_zh.js"></script>

<script type="text/javascript">
	/* $.validator.setDefaults({
		submitHandler : function() {
			alert("提交事件!");
		}
	}); */

	$().ready(function() {
		// 在键盘按下并释放及提交后验证提交表单
		$("#signupForm").validate({
			rules : {
				usercode : "required",
				username : {
					required : true,
					minlength : 2
				},
				password : {
					required : true,
					minlength : 6,
					maxlength:12
				},
				usercard : {
					required : true
				},
				sex :{
					required : true
				},
				age :{
					required : true
				},
				tell :{
					required:true,
					minlength : 8,
					maxlength:11
				}
		
			},
			messages : {
				usercode : "请输入您的名字",
				usercard : "请输入身份证号",
				username : {
					required : "请输入用户名",
					minlength : "用户名必需由两个字母组成"
				},
				password : {
					required : "请输入密码",
					minlength : "密码长度不能小于 6 个字母",
					maxlength:"密码长度不能大于12个字符"
				},
				/* confirm_password : {
					required : "请输入密码",
					minlength : "密码长度不能小于 5 个字母",
					equalTo : "两次密码输入不一致"
				}, */
				age : "请输入年龄",
				sex : "请输入性别",
				tell:{
					required : "请输入电话号码",
					minlength : "电话号码长度不能小于 8个字母",
					maxlength:"密码长度不能大于11个字符"
				}
			}
		});
	});
</script>

</head>
<style>
.error {
	color: red;
}
/* #signupForm{
	width:850px;
	height:100%;
	top:0;
	left:0;
	bottom:0;
	margin: 0 auto;
} */
</style>
<body>
	<div class="rbody" id="app">
		<div class="top">
			当前位置：个人中心<i class="fa fa-fw fa-angle-right"></i>个人信息
		</div>
		<div class="main" >
		<div class="tabList">
				<span class="active">分配角色</span>
			</div>
			<form  id="signupForm" method="post"action="<%=basePath %>updateUserInfo.do">
					<input type="hidden" name="id" value="${userInfo.id}">
					<div class="form-group">
						<label for="usercode" class="col-sm-2 control-label">账号</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="inputEmail3" name="usercode" value="${userInfo.usercode}" disabled="disabled">
						</div>
					</div>
					<div class="form-group">
						<label for="password" class="col-sm-2 control-label">密码</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="password" name="password" value="${userInfo.password}"  >
						</div>
					</div>
					<div class="form-group">
						<label for="usercard" class="col-sm-2 control-label">身份证号</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" name="usercard" value="${userInfo.usercard}" disabled="disabled">
						</div>
					</div>
					<div class="form-group">
						<label for="sex" class="col-sm-2 control-label">性别</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" name="sex" value="${userInfo.sex}" disabled="disabled">
						</div>
					</div>
					
					<div class="form-group">
						<label for="age" class="col-sm-2 control-label">年龄</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" name="age" id="age"  value="${userInfo.age}" disabled="disabled"">
						</div>
					</div>
					
					<div class="form-group">
						<label for="tell" class="col-sm-2 control-label">电话</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" name="tell" id="tell"  value="${userInfo.tell}">
						</div>
					</div>
 
					<div class="form-group">
					    <div class="col-sm-offset-2 col-sm-10">
					      <button type="submit" class="btn btn-primary">提交</button>
					      <button type="reset" class="btn btn-danger">重置</button>
					    </div>
					</div>
					<!-- <p>
						<input class="submit btn btn-default" type="submit" value="提交">
					</p> -->
			</form>
		</div>
	</div>
</body>
</html>