<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>APP</title>
    <link rel="stylesheet" href="./css/component.css">
    <link rel="stylesheet" href="./css/admin.css">
    <link rel="stylesheet" href="./css/font-awesome.min.css">
    <script src="./js/JQuery2.1.4.js"></script>

    <!-- 富文本编辑器 -->
    <script src="./js/wang.js"></script>
</head>
<style>
 #main{
	/* width:717px;
	height:585px; */
	background-image:url("imgs/bg.jpg");
   background-repeat: no-repeat;
   background-size: 100%; 
   /* background-color:rgba(255,255,255); */
  /* opacity: 0.6;  */
}
#a{
	width:100%;
	height:100px;
	margin-top: 10px;
	margin-left: 20px;
	font-size: 72px;
	font-family: "Serif"; 
	color:dark;
	opacity: 0.1;
	font-style: italic; 
}

#b{
	width: 100%;
	height: 50px;
	margin-top: 10px;
	margin-left: 80px;
	font-size: 36px;
	color:#2a5298;
	font-family: "宋体";
	font-weight: 700;
} 

</style>
<body>
    <div class="rbody" id="app">
        <div class="top">
            当前位置：后台<i class="fa fa-fw fa-angle-right"></i>
        </div>
        <div class="main" id="main">
        	<div id="a">
        		<font> WELCOME </font>
        	</div>
        	
        	<div id="b">
        		<span><font style="color:rgb(230,230,250); font-size: 38px;">${USER.username}</font> 欢迎光临   </span><br>
        		<div style="margin-left: 70px">
        		<span style="font-size: 28px;">酒店管理系统</span>
        		</div>
        	</div>
        </div> 
    </div>
    <script src="./js/common.js"></script>
    <script>
        var E = window.wangEditor
        var editor = new E('#createColumnBody')
        // 或者 var editor = new E( document.getElementById('editor') )
        editor.create()
    </script>
</body>

</html>