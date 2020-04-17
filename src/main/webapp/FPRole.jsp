<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    	<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":"
			+ request.getServerPort() + path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Insert title here</title>
<link href="<%=basePath%>css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">首页</a></li>
    <li><a href="#">表单</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    <form action="<%=basePath %>FPRole.do" method="post">
    <div class="formtitle"><span>基本信息</span></div>
    
    <ul class="forminfo">
    <li><label>为<font color="red">${User.username}</font>分配角色</label></li>
    <li>${message}</li>
    <li>
    <input type="hidden" name="id" value="${User.id}"/>
    <c:forEach items="${roleList}" var="roleList">
    <input type="radio" value="${roleList.id}" name="roleId" 
    <c:if test="${roleList.id == role.id}" var="anth">
     checked="checked"
    </c:if>
    />${roleList.name}
    </c:forEach>
    </li>
    
    
    <li><label>&nbsp;</label><input type="submit" class="btn" value="分配"/></li>
    </ul>
    </form>
    
    </div>
</body>
</html>