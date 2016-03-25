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
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" type="text/css" href="<%=basePath %>jsp/css/main.css"></link>
	<script src="<%=basePath %>jsp/js/jquery-1.12.0.min.js"></script>
	<script src="<%=basePath %>jsp/js/main.js"></script>
  </head>
  
  <body>
    <div class="main">
			<div class="top">
					<iframe src="jsp/top.jsp" name="top_frame" id="top_frame" width="100%" height="100%" marginheight="0" marginwidth="0" frameborder="0" allowTransparency="true">
						<object type="text/x-scriptlet" data="jsp/top.jsp" width="100%" height="100%" vspace="0" hspace="0" border="0" style="margin:0px;padding:0px;"></object>
					</iframe>		
			</div>
			<div class="middle">
				<div class="mid_left">
					<iframe src="jsp/mid_left.jsp" name="mid_left_frame" id="mid_left_frame" width="100%" height="100%" marginheight="0" marginwidth="0" frameborder="0" allowTransparency="true">
						<object type="text/x-scriptlet" data="jsp/mid_left.jsp" width="100%" height="100%" vspace="0" hspace="0" border="0" style="margin:0px;padding:0px;"></object>
					</iframe>
				</div>
				<div class="mid_left_bar">
					<iframe src="jsp/mid_left_bar.jsp" name="mid_left_bar_frame" id="mid_left_bar_frame" width="100%" height="100%" marginheight="0" marginwidth="0" frameborder="0" allowTransparency="true">
						<object type="text/x-scriptlet" data="jsp/mid_left_bar.jsp" width="100%" height="100%" vspace="0" hspace="0" border="0" style="margin:0px;padding:0px;"></object>
					</iframe>
				</div>
				<div class="mid_right">
					<iframe src="jsp/mid_right.jsp" name="mid_right_frame" id="mid_right_frame" width="100%" height="100%" marginheight="0" marginwidth="0" frameborder="0" allowTransparency="true">
						<object type="text/x-scriptlet" data="jsp/mid_right.jsp" width="100%" height="100%" vspace="0" hspace="0" border="0" style="margin:0px;padding:0px;"></object>
					</iframe>
				</div>
			</div>
			<div class="bottom">
				<iframe src="jsp/bottom.jsp" name="bottom_frame" id="bottom_frame" width="100%" height="100%" marginheight="0" marginwidth="0" frameborder="0" allowTransparency="true">
					<object type="text/x-scriptlet" data="jsp/bottom.jsp" width="100%" height="100%" vspace="0" hspace="0" border="0" style="margin:0px;padding:0px;"></object>
				</iframe>
			</div>
		</div>
		
		<script>
			/*
			自适用高度
			
			function iframeHeight(obj){
				var iframeCon = document.frames ? document.frames[obj.id].document : obj.contentDocument;
				if(obj != null && iframeCon != null){
					obj.height = iframeCon.body.scrollHeight;
				}
			}
			*/
			
			/*将主div的高度和宽度设置成文档高度和宽度
			$(function(){
				$(".main").height($(window).height());
				$(".main").width($(window).width());
			})*/
		</script>
  </body>
</html>
