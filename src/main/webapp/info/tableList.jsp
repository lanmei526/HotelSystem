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
				当前位置：报表查询<i class="fa fa-fw fa-angle-right"></i>入住记录
			</div>
			<div class="main">
				<div class="tabList">
					<span class="active">入住记录</span>
					<div class="search_form" >
						<div class="search_box">
							<input type="text" placeholder="请输入"  name="keyword" id="keyword">
							<button type="button" onclick="searchTr()"> 搜索</button>
						</div>
					</div>
				</div>

				<div class="tableLists">
					<table>
						
						<thead>
						<tr>
							<th>入住时间</th>
							<th>退房时间</th>
							<th>客房类型</th>
							<th>房间号</th>
							<th>客户姓名</th>
							<th>单价</th>
							<th>总计</th>
							
						</tr>
						</thead>
						<tbody id="tbody">
							<c:forEach items="${travelInfoList}" var="tl">
								<tr>
								
									<td><fmt:formatDate value="${tl.travellerInTime}"
							type="date" /></td>
									<td><fmt:formatDate value="${tl.travellerOutTime}"
							type="date" /></td>
									<td>${tl.roomInfo.roomType}</td>
									<td>${tl.roomNo}</td>
									<td>${tl.travellerName}</td>
									<td>${tl.roomVolumeInfo.roomPice}</td>
									<td>${tl.roomVolumeInfo.roomPice}</td>
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
function searchTr(){
	   var keyword=$("#keyword").val();
		   $.ajax({
				   type:"post",
				   url:"tableListBySome.do",
				   data:{
					   keyword:keyword
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
										+"<td>"+m.travellerInTime+"</td>"
										+"<td>"+m.travellerOutTime +"</td>"
										+"<td>"+m.roomInfo.roomType+"</td>"
										+"<td>"+m.roomNo+"</td>"
										+"<td>"+m.travellerName+"</td>"
										+"<td>"+m.roomVolumeInfo.roomPice +"</td>"
										+"<td>"+m.roomVolumeInfo.roomPice +"</td>"
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