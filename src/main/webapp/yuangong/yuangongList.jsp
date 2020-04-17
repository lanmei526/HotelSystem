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
			当前位置：后台管理<i class="fa fa-fw fa-angle-right"></i>员工列表
		</div>
		<div class="main">
			<div class="tabList">
				<span class="active">员工列表</span>
				
				<div class="search_form">
					
                   <div class="search_box">
                   <button type="button" class="button" id="addnew">添加员工</button>
                      <!--  <select name="choose" id="choose">
                            <option value="0">按权限</option>
                            <option value="1">按姓氏</option>
                        </select> -->
                        <input type="text" placeholder="请输入" name="name" id="name">
                    <button type="button" onclick="search()">搜索</button>
                   </div>
                  
                </div>
                
            </div>
				

				<div class="tableLists">
					<table>

						<thead>
							<tr>
								<th>员工编号</th>
								<th>员工姓名</th>
								<th>性别</th>
								<th>年龄</th>
								<th>联系电话</th>
								<th>权限</th>
								<th colspan="3">操作</th>
							</tr>
						</thead>
						<tbody id="tbody">
							<c:forEach items="${yuangongList}" var="yg">
								<tr>
									<!-- <td><label class="ios-checkbox-box-single height30px">
											<input type="checkbox" name="checkbox"
											class="ios-checkbox-single"> <span
											class="ios-checkbox-span-single"></span>
									</label></td> -->
									<td>${yg.usercode}</td>
									<td>${yg.username}</td>
									<td>${yg.sex}</td>
									<td>${yg.age}</td>
									<td>${yg.tell}</td>
									<td>${yg.roleInfo.roleName}</td>
									<td><a href="updateUI.do?id=${yg.id}" class="ios-del-btn">修改</a></td>
									<td><a href="delete.do?id=${yg.id}" class="ios-del-btn">删除</a></td>
									<td><a href="<%=basePath%>FPRoleUI.do?id=${yg.id}"
										class="ios-edit-btn">分配角色</a></td>
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
			window.location.href = "addUI.do";
		});
	});
	 function search(){
		   var name=$("#name").val();
			   $.ajax({
					   type:"post",
					   url:"searchUser.do",
					   data:{
						   name:name
					   },
					   dataType:"JSON",
						 success:function(result){
							 var searchArray = eval(result);
								var tbObject=$("#tbody");
								/* var ul=$("#ul"); */
								tbObject.empty();
								/* ul.empty(); */
								$(searchArray).each(function (r,m) {
									
									tbObject.append("<tr>"
											+"<td>"+m.usercode+"</td>"
											+"<td>"+m.username +"</td>"
											+"<td>"+m.sex+"</td>"
											+"<td>"+m.age+"</td>"
											+"<td>"+m.tell+"</td>"
											+"<td>"+m.roleInfo.roleName +"</td>"
											+"<td><a href='updateUI.do?id="+m.id+"' class='ios-del-btn'>修改</a></td>"
											+"<td><a href='delete.do?id="+m.id+"' class='ios-del-btn'>删除</a></td>"
											+"<td><a href='<%=basePath%>FPRoleUI.do?id="+m.id+"' class='ios-edit-btn'>分配角色</a></td>"
											+"</tr>"
											)
								})
					},
					error:function() {
						console.log("error")
					}
				   })
	}
</script>