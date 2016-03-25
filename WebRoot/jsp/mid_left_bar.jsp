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
	<script src="<%=basePath%>jsp/js/jquery-1.12.0.min.js" ></script>
	<style>
		*{
			margin:0px;
			padding:0px;
			text-decoration:none;
		}
		.mid_left_div{
			width:90%;
			height:95%;
			margin:5% auto;
		}
		.mid_left_div p{
			display:block;
			width:100%;
			height:25px;
			line-height:25px;
			text-align:center;
			background:#fff;
			vertical-align:middle;
			font-size:20px;
			cursor:pointer;
			
		}
		.mid_left_div p span{
			display:block;
			float:right;
		}
		.mid_left_div p span.changeColor{
			color:#eee;
		}
	</style>
	<script>
		$(function(){
			$("#menu").click(function(){
				var ifrParent = $(window.parent.document);
				ifrParent.find(".mid_left").stop().show();
				ifrParent.find(".mid_right").css("width","85%");
				ifrParent.find(".mid_left_bar").stop().hide();
			})
			var t = setInterval(changeColor,3000);
			function changeColor(){
				$("#menu span").toggleClass("changeColor");
			}
		})
	</script>
  </head>
  
  <body>
    <div class="mid_left_div">
    	<p id="menu" title="显示"><span>&gt;&gt;</span></p>
		</div>
  </body>
</html>
