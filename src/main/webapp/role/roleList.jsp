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
<script type="text/javascript" src="<%=basePath%>js/JQuery2.1.4.js"></script>
<script type="text/javascript" src="<%=basePath%>js/wang.js"></script>
</head>

<body>
		<div class="rbody" id="app">
			<div class="top">
				当前位置：系统管理<i class="fa fa-fw fa-angle-right"></i>角色管理
			</div>
			<div class="main">
				<div class="tabList">
					<span class="active">角色列表</span>
					<div class="search_form" >
						<div class="search_box">
							<button type="button" class="btn btn-success" id="addnew">添加角色</button>
							<input type="text" placeholder="请输入"  name="">
							<button>搜索</button>
						</div>
					</div>
				</div>

				<div class="tableLists">
			<table class="tablelist">
			<thead>
				<tr>
					<th>角色</th>
					<th>能力</th>
					<th colspan="3">操作</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${roles}" var="roles">
					<tr>
						<!-- <td><input name="choose" type="checkbox" value="" /></td> -->
						<td>${roles.roleName}</td>
						<td>${roles.available}</td>
						<td><a href="<%=basePath%>deleteRole.do?id=${roles.roleId}" class="ios-del-btn">删除</a></td>
						<td><a href="<%=basePath%>updateRoleForm.do?id=${roles.roleId}" class="ios-del-btn">修改</a></td>
						<td><a href="<%=basePath%>FPPermissionForm.do?id=${roles.roleId}" class="ios-edit-btn">分配权限</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
				</div>
			</div>
		</div>
		<script src="<%=basePath%>js/common.js"></script>
</body>
</html>
<script>
	$(function() {
		$('#addnew').click(function() {
			window.location.href = "addRoleUI.do";
		});
	});
</script>