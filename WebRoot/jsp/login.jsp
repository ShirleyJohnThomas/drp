<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <title>登录</title>
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
    <meta http-equiv="description" content="this is my page"/>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="<%=basePath %>jsp/css/login.css"></link>
	<script src="<%=basePath %>jsp/js/jquery-1.12.0.min.js"></script>
	<script src="<%=basePath %>jsp/js/login.js"></script>
  </head>
  
  <body>
    <div class="login">
		<ul class="bg">
			<li><a href="#"><img src="<%=basePath %>jsp/img/bg1.jpg"></img></a></li>
			<li><a href="#"><img src="<%=basePath %>jsp/img/bg2.jpg"></img></a></li>
			<li><a href="#"><img src="<%=basePath %>jsp/img/bg3.jpg"></img></a></li>
		</ul>
		<div class="loginForm">
			<form name="loginForm" id="loginForm" action="#" method="post">
				<div id="login_title">drp登陆</div>
				<div class="loginContent">用户名:<input type="text" name="username" id="username" class="loginInput" /></div>
				<div class="loginContent">密&#12288;码:<input type="password" name="password" id="password" class="loginInput" /></div>
				<div class="loginContent">
					验证码:<div class="check_code"><input type="text" name="checkinput" id="checkinput" class="check_input" /><img class="check_img" src="<%=basePath %>jsp/img/bg1.jpg""></img></div>
				</div>
				<div class="loginContent">
					<input type="button" name="loginBtn" id="loginBtn" class="loginBtn" value="现在登录" />
				</div>
				<div class="loginContent">
					<a target="blank" href="#">注册</a>&#12288;|&#12288;<a target="blank" href="#">忘记密码</a>
				</div>
			<form>
		</div>
	</div>
  </body>
</html>
