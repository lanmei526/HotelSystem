<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    	<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":"
			+ request.getServerPort() + path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
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
    <form action="updatePermission.do" method="post">
    <div class="formtitle"><span>基本信息</span></div>
    
    <ul class="forminfo">
    <li><label>父级节点：</label> <select name="pId">
				<option>---请选择父级节点---</option>
				
				<c:forEach items="${perList}" var="perList">
				
     		    <c:if test="${per.parentid == perList.id}" var="anth">
     		    	<option id="${per.id}" value="${per.id }" selected="selected">
     					${perList.name}
     				</option>
     		    </c:if>
     			<c:if test="${per.id != perList.parentid}" var="anth">
     		    	<option id="${per.id}" value="${per.id }">
     					${perList.name}
     				</option>
     		    </c:if>
    			</c:forEach>
						
				</select></li>
    <li><input name="id" type="hidden" value="${per.id}"/></li>
    <li><label>名字：</label><input name="name" type="text" class="dfinput" value="${per.permissionName}" /><i>名字不能超过30个字符</i></li>
    <li><label>类型</label><input name="type" type="text" class="dfinput" value="${per.permissonType}" /><i>类型不能超过30个字符</i></li>
    <li><label>路径</label><input name="url" type="text" class="dfinput" value="${per.url}" /><i>类型不能超过30个字符</i></li>
    <li><label>状态</label><input name="available" type="text" class="dfinput" value="${per.available}" /><i>类型不能超过30个字符</i></li>
    <li><label>&nbsp;</label><input type="submit" class="btn" value="修改"/></li>
    </ul>
    </form>
    
    </div>
</body>
</html>