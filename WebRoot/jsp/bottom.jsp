<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
    <title>drp分销系统</title>
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
    <meta http-equiv="description" content="this is my page" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<script src="<%=basePath %>jsp/js/jquery-1.12.0.min.js"></script>
	<style>
		*{
			margin:0px;
			padding:0px;
		}
		.bottom_div{
			width:100%;
			text-align:center;
			margin-top:20px;
		}
	</style>
  </head>
  
  <body>
    <div class="bottom_div">
    	你是我的眼，带我领略四季的变换
		</div>
  </body>
</html>
