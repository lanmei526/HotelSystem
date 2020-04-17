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
<title>添加角色</title>
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
        <form action="<%=basePath %>addRole.do" method="post">
        <div class="main">
            <div class="tabList">
                <span class="active">添加角色</span>
            </div>
            <div class="tabBody tactive">
                    <div class="ios-form-group mrb10">
                        <div class="ios-title">
                            <em class="ios-tip-must">*</em>
                            <span class="ios-tip-name">角色名：</span>
                        </div>
                        <div class="ios-input-box">
                            <input type="text" class="ios-input" id="roleName" name="roleName" placeholder="请输入">
                        </div>
                    </div>

                    <div class="ios-form-group mrb10">
                        <div class="ios-title">
                            <em class="ios-tip-must">*</em>
                            <span class="ios-tip-name">角色能力：</span>
                        </div>
                        <div class="ios-input-box">
                            <input type="text" class="ios-input" name="available" placeholder="请输入">
                        </div>
                    </div>
            <div>
                <button type="submit" class="btn btn-default">添加</button>
      			<button type="reset" class="btn btn-default">重置</button>
            </div>
        </div>
        </form>
    </div>
</body>
</html>