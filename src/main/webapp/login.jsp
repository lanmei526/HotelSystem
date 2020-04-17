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
<title>APP</title>
<link rel="stylesheet" href="./css/component.css">
<link rel="stylesheet" href="./css/admin.css">
<script src="./js/JQuery2.1.4.js"></script>

<script type="text/javascript">
/* $(function(){
// 	编写函数,在按键升起时触发,监测cookie中是否存在该用户名的key,如果有,则把value赋值给密码框
	  $("#usercode").keyup(function(){	  
		   var usercode = $("#usercode").val();	  
		   if(usercode != ""){
			   var password = $.cookie(usercode);	 
			   if(password!=null){
				   $("#password").val(password);
				   $("#check").attr("checked",true);
			   }
		   }
	   
	   })
}
) */
$(function(){
	var check=$("#check").prop("checked");
	var checkState="NO";
	   if(check){
		   checkState="YES";
	   }
	$.ajax({
		   type:"post",
		   url:"searchCookie.do",
		   data:{
			  
		   },
		   dataType:"text",
		   success:function(result){
			   var user=JSON.parse(result);
			   $("#usercode").val(user.usercode);
			   $("#password").val(user.password);
			   $("#check").prop("checked","checked");
		   },
		   error:function(){
			 console.log("error")
		   }
	   })  
})
</script>
</head>

<body>
<form action="<%=basePath%>login.do" method="post">

	<div class="login">
		<div class="box">
			<h1>酒店管理系统</h1>
			<font style="font-size: 16px; color: red; text-algin: left">${message}</font>
			<div class="inputLi">
				<span> <img src="./imgs/user.png" alt="">
				</span> <input type="text" name="usercode" id="usercode"
					placeholder="请输入账户">
			</div>
			<div class="inputLi">
				<span> <img src="./imgs/pwd.png" alt="">
				</span> <input type="password" name="password" id="password"
					placeholder="请输入密码">
			</div>
			<div style="width: 100%; height: 30px; text-align: right">
				<input type="checkbox" id="check" name="check"/>记住密码
			</div>
			<div class="inputLi">
				<button type="submit" >登录</button>
			</div>
		</div>
	</div>
</form>
</body>

</html>