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
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>css/component.css">
<link rel="stylesheet" type="text/css" href="<%=basePath%>css/admin.css">
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>css/font-awesome.min.css">
<link href="https://cdn.bootcss.com/twitter-bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="<%=basePath%>js/JQuery2.1.4.js"></script>
<script type="text/javascript" src="<%=basePath%>js/wang.js"></script>
<script src="https://cdn.bootcss.com/twitter-bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>

<script>
	$(function() {
		var array = new Array();
		<c:forEach items="${list}" var="item">
		array.push("${item}")
		</c:forEach>
		for (var i = 0; i < array.length; i++) {
			$("#" + array[i]).attr("checked", "checked");
		}
	})
</script>
<body>
	<div class="rbody" id="app">
		<div class="top">
			当前位置：系统管理<i class="fa fa-fw fa-angle-right"></i>角色管理
		</div>
		<div class="main">
			<div class="tabList">
				<a href="roleList.do">返回上级</a> 
				<span class="active">分配权限</span>
			</div>

			<div class="tableLists">
			<div style="width:300px;height:100%;margin-left:120px;margin-top:50px">
			<form action="<%=basePath%>FPPermission.do" method="post">
				<input type="hidden" name="id" value="${role.roleId}" />
				<div style="width:100%;height:30px;">
					为<font color="red">${role.roleName}</font>分配权限
				</div>
				<div style="width:100%;height:180px; margin-left: 70px">
					
					<c:forEach items="${permissionList}" var="permissionList">
						<input type="checkbox" value="${permissionList.permissionId}"
									name="permissionIds" id="${permissionList.permissionId}" />${permissionList.permissionName}<br>
    				</c:forEach>
				</div>
				<div class="col-sm-offset-2 col-sm-10" style="margin-left: 50px"" >
					<input type="submit" class="btn btn-danger" value="分配" /></a>
					<input type="reset" class="btn btn-primary" value="重置" />
				</div>
			</form>
		</div>
		</div>
	</div>
	<script src="<%=basePath%>js/common.js"></script>
</body>
</html>