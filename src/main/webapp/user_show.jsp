<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    	<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":"
			+ request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link href="https://cdn.bootcss.com/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://cdn.bootcss.com/jquery/3.4.1/jquery.js"></script>
	<script src="https://cdn.bootcss.com/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<center>
<h3>添加用户</h3>

<form action="<%=basePath %>addUser.do"method="post"class="form-horizontal" style="width:400px">
  <div class="form-group">
    <label for="exampleInputName2" class="col-sm-2 control-label">账户</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="exampleInputName2" placeholder="账户" name="usercode">
    </div>
  </div>
  <div class="form-group">
    <label for="exampleInputName2" class="col-sm-2 control-label">姓名</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="exampleInputName2" placeholder="姓名" name="username">
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">密码</label>
    <div class="col-sm-10">
      <input type="password" class="form-control" id="inputPassword3" placeholder="密码" name="password">
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">盐</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="inputPassword3" placeholder="盐" name="salt">
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">状态</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="inputPassword3" placeholder="状态" name="locked">
    </div>
  </div>
  <!-- <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <div class="checkbox">
        <label>
          <input type="checkbox"> Remember me
        </label>
      </div>
    </div>
  </div> -->
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">添加</button>
      <button type="reset" class="btn btn-default">重置</button>
    </div>
  </div>
</form>
</center>
</body>
</html>