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
<title>修改员工信息</title>
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
            当前位置：员工管理<i class="fa fa-fw fa-angle-right"></i>修改员工信息
        </div>
        <form action="<%=basePath %>update.do" method="post">
        <div class="main">
            <div class="tabList">
            	<a href="yuangongList.do">返回上级</a>
                <span class="active">修改信息</span>
            </div>
            <div class="tabBody tactive">
            		<input type="hidden"  class="ios-input" name="id" value="${update.id}">
                    <div class="ios-form-group mrb10">
                        <div class="ios-title">
                            <em class="ios-tip-must">*</em>
                            <span class="ios-tip-name">员工编号：</span>
                        </div>
                        <div class="ios-input-box">
                            <input type="text" class="ios-input" name="usercode" value="${update.usercode}" disabled="disabled">
                        </div>
                    </div>
                     <div class="ios-form-group mrb10">
                        <div class="ios-title">
                            <em class="ios-tip-must">*</em>
                            <span class="ios-tip-name">身份证号：</span>
                        </div>
                        <div class="ios-input-box">
                            <input type="text" class="ios-input" name="usercard" value="${update.usercard}" disabled="disabled">
                        </div>
                    </div>
                    <div class="ios-form-group mrb10">
                        <div class="ios-title">
                            <em class="ios-tip-must">*</em>
                            <span class="ios-tip-name">员工姓名：</span>
                        </div>
                        <div class="ios-input-box">
                            <input type="text" class="ios-input" name="username" value="${update.username}" disabled="disabled">
                        </div>
                    </div>

                    <div class="ios-form-group mrb10">
                        <div class="ios-title">
                            <em class="ios-tip-must">*</em>
                            <span class="ios-tip-name">性别：</span>
                        </div>
                        <div class="ios-input-box">
                            <input type="text" class="ios-input" name="sex" value="${update.sex}">
                        </div>
                    </div>


                    <div class="ios-form-group mrb10">
                        <div class="ios-title">
                            <em class="ios-tip-must">*</em>
                            <span class="ios-tip-name">年龄：</span>
                        </div>
                        <div class="ios-input-box">
                            <input type="text" class="ios-input" name="age" value="${update.age}">
                        </div>
                    </div>

                    <div class="ios-form-group mrb10">
                        <div class="ios-title">
                            <em class="ios-tip-must">*</em>
                            <span class="ios-tip-name">联系电话：</span>
                        </div>
                        <div class="ios-input-box">
                            <input type="text" class="ios-input" name="tell" value="${update.tell}">
                        </div>
                    </div>
                </div>
            <div>
                <button type="submit" class="btn btn-default">修改</button>
      			<button type="reset" class="btn btn-default">重置</button>
            </div>
        </div>
        </form>
    </div>
</body>
</html>