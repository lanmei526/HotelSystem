<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>APP</title>
<link rel="stylesheet" href="css/component.css">
<link rel="stylesheet" href="css/admin.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<script src="js/JQuery2.1.4.js"></script>
<script src="js/common.js"></script>
<script src="https://cdn.bootcss.com/jquery/3.4.1/jquery.js"></script>
<script type="text/javascript">
	$(function() {
		//导航切换
		$(".downmenu li").click(function() {
			$(".downmenu li.active").removeClass("active")
			$(this).addClass("active");
		});

			/* $('.title').click(function() {
			var $ul = $(this).next('ul');
			$('dd').find('ul').slideUp();
			if ($ul.is(':visible')) {
				$(this).next('ul').slideUp();
			} else {
				$(this).next('ul').slideDown();
			}
		}); */
	}) 
</script>
</head>
<body>
	<div class="admin">
		<div class="top">
			<div class="left">酒店管理系统</div>
			<div class="right">
				<a href=""> <i class="fa fa-home"></i> <span>前台主页</span>
				</a> <a href=""> <i class="fa fa-highlighter"></i> <span>清除缓存</span>
				</a> <a href="web_baseset.html" target="rightiframe"> <i class="fa fa-cog"></i> <span>网站设置</span>
				</a> <a href=""> <i class="fa fa-fw fa-power-off"></i> <span>退出后台</span>
				</a>
			</div>
		</div>
		<div class="body">
			<div class="left">
				<div class="menu">
                    <div class="title">
                            <i class="fa fa-fw fa-home"></i>系统主页
                    </div>
             	</div>
                
				<div class="menu">
					<c:forEach items="${menuList}" var="menu">
						<div class="title"><i class="fa fa-fw fa-navicon"></i>
							${menu.permissionName} <i class="fa fa-fw fa-angle-right"></i>
						</div>
						<%-- <ul class="downmenu">
                        <li><a href="<%=basePath%>yuangongList.do" target="rightiframe">员工管理</a></li>
                        <li><a href="image_show.jsp" target="rightiframe">角色管理</a></li>
                        <li><a href="image_show.jsp" target="rightiframe">权限管理</a></li>
                   		</ul> --%>
						
						<ul class="downmenu">
							<c:forEach items="${menuPermissionMap}" var="menuPermissionMap">
								<c:if test="${menu.permissionId==menuPermissionMap.key}">
									<c:forEach items="${menuPermissionMap.value}" var="permission">
										<li><a href="<%=basePath%>${permission.url}?id=${USER.id}" target="rightiframe">${permission.permissionName}</a></li>
									</c:forEach>
								</c:if>
							</c:forEach> 
						</ul>
					</c:forEach>
				</div>
			</div>
			<!-- 分割线 -->
		<div class="right">
			<iframe src="column_create.jsp" frameborder="0" id="rightiframe"
				name="rightiframe"></iframe>
		</div> 
		
		<%-- <div class="body">
            <div class="left">
                <div class="menu">
                    <div class="title">
                            <i class="fa fa-fw fa-home"></i> 系统主页
                    </div>
                </div>
                <!-- 分割线 -->
                <div class="menu">
                    <div class="title">
                            <i class="fa fa-fw fa-navicon"></i> 前台管理 <i class="fa fa-fw fa-angle-right"></i>
                    </div>

                    <ul class="downmenu">
                        <li><a href="column_show.jsp" target="rightiframe">客房查询</a></li>
                        <li><a href="column_create.jsp" target="rightiframe">客房预订</a></li>
                        <li><a href="column_create.jsp" target="rightiframe">客房退订</a></li>
                        <li><a href="column_create.jsp" target="rightiframe">客房入住</a></li>
                    </ul>
                </div>
                <!-- 分割线 -->
                <div class="menu">
                    <div class="title">
                            <i class="fa fa-fw fa-user"></i>客户管理<i class="fa fa-fw fa-angle-right"></i>
                    </div>
                    <ul class="downmenu">
                        <li><a href="column_show.jsp" target="rightiframe">客户查询</a></li>
                        <li><a href="column_create.jsp" target="rightiframe">客户积分</a></li>
                    </ul>
                </div>
                <!-- 分割线 -->
                <div class="menu">
                    <div class="title">
                            <i class="fa fa-fw fa-file-powerpoint-o"></i>系统管理 <i class="fa fa-fw fa-angle-right"></i>
                    </div>

                    <ul class="downmenu">
                        <li><a href="<%=basePath%>yuangongList.do" target="rightiframe">员工管理</a></li>
                        <li><a href="image_show.jsp" target="rightiframe">角色管理</a></li>
                        <li><a href="image_show.jsp" target="rightiframe">权限管理</a></li>
                    </ul>
                </div>
                <!-- 分割线 -->            
                <div class="menu">
                    <div class="title">
                            <i class="fa fa-fw fa-cog"></i>房间管理 <i class="fa fa-fw fa-angle-right"></i>
                    </div>

                    <ul class="downmenu">
                        <li><a href="<%=basePath%>roomList.do" target="rightiframe">房间信息</a></li>
                    </ul>
                </div>
                <!-- 分割线 -->                
                <div class="menu">
                    <div class="title">
                            <i class="fa fa-fw fa-image"></i>报表查询 <i class="fa fa-fw fa-angle-right"></i>
                    </div>

                    <ul class="downmenu">
                        <li><a href="<%=basePath%>tableList.do" target="rightiframe">入住记录</a></li>
                        <li><a href="<%=basePath%>billList.do" target="rightiframe">账单</a></li>
                    </ul>
                </div>
                
                 <!-- 分割线 -->                
                <div class="menu">
                    <div class="title">
                            <i class="fa fa-fw fa-newspaper-o"></i>个人中心 <i class="fa fa-fw fa-angle-right"></i>
                    </div>

                    <ul class="downmenu">
                        <li><a href="page_show.html" target="rightiframe">个人信息</a></li>
                    </ul>
                </div>
            </div>
            <!-- 分割线 -->
            <div class="right">
                <iframe src="column_create.jsp" frameborder="0" id="rightiframe" name="rightiframe"></iframe>
            </div> --%>
		
		</div>
	</div>
	</div>
</body>
</html>