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
<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div class="rbody" id="app">
		<div class="top">
			当前位置：系统管理<i class="fa fa-fw fa-angle-right"></i>角色管理
		</div>
		<div class="main">
			<div class="tabList">
				<span class="active">添加权限</span>
			</div>

		<div class="formbody">
		<form action="addPermission.do" method="post">
			<ul class="forminfo">
				<li><label>父级节点：</label> <select name="pId">
				<option>---请选择父级节点---</option>
				
				<c:forEach items="${perList}" var="perList">
				<option id="${perList.permissionId}" value="${perList.permissionId}">
     					${perList.permissionName}
     			</option>
    			</c:forEach>
						
				</select></li>
				<li><label>名字：</label><input name="permissionName" type="text"
					class="dfinput" /></li>
				<li><label>类型</label><input name="permissionType" type="text"
					class="dfinput" /></li>
				<li><label>url</label><input name="url" type="text"
					class="dfinput" /></li>
				<li><label>状态</label><input name="available" type="text"
					class="dfinput" /></li>
				<li><label>&nbsp;</label>
				<button type="submit" class="btn btn-primary">添加</button></li>
			</ul>
		</form>

	</div>
</body>
</html>