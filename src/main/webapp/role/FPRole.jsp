<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>分配角色</title>
<%-- <link href="<%=basePath%>css/style.css" rel="stylesheet" type="text/css" /> --%>
<link rel="stylesheet" type="text/css"href="<%=basePath%>css/component.css">
<link rel="stylesheet" type="text/css"href="<%=basePath%>css/admin.css">
<link rel="stylesheet" type="text/css"href="<%=basePath%>css/font-awesome.min.css">
<link href="https://cdn.bootcss.com/twitter-bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="<%=basePath%>js/JQuery2.1.4.js"></script>
<script type="text/javascript" src="<%=basePath%>js/wang.js"></script>
<script src="https://cdn.bootcss.com/twitter-bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="rbody" id="app">
		<div class="top">
			当前位置：员工管理<i class="fa fa-fw fa-angle-right"></i>分配角色
		</div>
		<div class="main">
			<div class="tabList">
				<a href="yuangongList.do">返回上级</a> 
				<span class="active">分配角色</span>
			</div>
		
		<div class="tableLists">
			<div style="width:300px;height:100%;margin-left:120px;margin-top:50px">
			<form action="<%=basePath%>FPRole.do" method="post">
				<input type="hidden" name="id" value="${user.id}" /> 
				<div style="width:100%;height:30px;">
					为<font color="red">${user.username}</font>分配角色
				</div>
				<div style="width:100%;height:30px;">
					<c:forEach items="${roleList}" var="roleList">
						<input type="radio" value="${roleList.roleId}" name="roleId"
						<c:if test="${roleList.roleId == role.roleId}">checked="checked"</c:if> 
						/>${roleList.roleName}
					</c:forEach>
				</div>
				<div class="col-sm-offset-2 col-sm-10">
					<input type="submit" class="btn btn-danger" value="分配" /></a>
					<input type="reset" class="btn btn-primary" value="重置" />
				</div>
			</form>
			</div>
		</div>
	</div>
</div>
</body>
</html>