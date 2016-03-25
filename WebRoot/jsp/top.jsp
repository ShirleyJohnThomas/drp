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
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
    <meta http-equiv="description" content="this is my page"/>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<script src="<%=basePath %>jsp/js/jquery-1.12.0.min.js"></script>
	<style>
		*{
			margin:0px;
			padding:0px;
			text-decoration:none;
		}
		.top_div{
			position:absolute;
			height:60px;
			width:700px;
			background:#fff;
			left:5%;
			bottom:10%;
			border:1px solid #000;
		}
		.top_div ul{
			list-style:none;
			margin:10px 0px 0px 20px;
		}
		.top_div ul li{
			display:block;
			width:90px;
			height:30px;
			line-height:30px;
			float:left;
			border:1px solid #eee;
			margin:5px;
			text-align:center;
			background:#000;
			cursor:pointer;
		}
		.top_div ul li:hover{
			background:#ccc;
			border:1px solid #000;
		}
		.top_div ul li a{
			font-size:12px;
			color:#FFF;
		}
		.top_div ul li:hover a{
			color:#000;
		}
		
		.top_div ul li.click{
			background:#fff;
			border:1px solid #000;
		}
		.top_div ul li.click a{
			color:#000;
		}
		
	</style>
	<script>
	$(function(){
		$(".top_ul li").eq(0).addClass("click");
		$(".top_ul li").click(function(){
			$(this).addClass("click").siblings().removeClass("click");
		})
		
	})
</script>
  </head>
  
  <body>
    <div class="top_div">
    	<ul class="top_ul">
    		<li><a href="#">首页</a></li>
    		<li><a href="#">一页</a></li>
    		<li><a href="#">二页</a></li>
    		<li><a href="#">三页</a></li>
    		<li><a href="#">四页</a></li>
    		<li><a href="#">五爷</a></li>
    	</ul>
		</div>
  </body>
</html>
