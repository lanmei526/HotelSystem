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
				当前位置：系统管理<i class="fa fa-fw fa-angle-right"></i>权限管理
			</div>
			<div class="main">
				<div class="tabList">
					<span class="active">权限列表</span>
					<div class="search_form" >
						<div class="search_box">
							<button type="button" class="btn btn-success" id="addnew">添加权限</button>
							<input type="text" placeholder="请输入"  name="">
							<button>搜索</button>
						</div>
					</div>
				</div>

				<div class="tableLists">
			<table class="tablelist">
    	<thead>
    	<tr>
        <th>权限名</th>
        <th>类型</th>
        <th>路径</th>
        <th colspan="2">操作</th>
        </tr>
        </thead>
        <tbody>
       <c:forEach items="${perList}" var="pm">
				<tr >
				    <!-- <td><input name="" type="checkbox" value="" /></td> -->
					<td>${pm.permissionName}</td>
					<td>${pm.permissionType}</td>
					<td>${pm.url}</td>
					<td><a href="<%=basePath%>deletePermission.do?id=${permission.id}" class="ios-del-btn">删除</a></td>     
					<td><a href="<%=basePath%>updatePermissionUI.do?id=${permission.id}" class="ios-del-btn"> 修改</a></td>
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
			window.location.href = "addPermissionUI.do";
		});
	});
</script>