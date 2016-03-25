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
	<script type="text/javascript" src="<%=basePath %>jsp/js/constant.js"></script>
	<style>
		*{
			margin:0px;
			padding:0px;
			text-decoration:none;
		}
		ul{
			list-style:none;
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
			margin-right:10px;
		}
		.mid_left_div p span.changeColor{
			color:#ccc;
		}
		
		.mid_left_div .mid_left_ul_1 li{
			width:100%;
			text-align:center;
			height:25px;
			line-height:25px;
			background:#000;
			color:#fff;
			border-bottom:1px solid #fff; 
			font-size:15px;
			cursor:pointer;
		}
		
		.mid_left_div .mid_left_ul_1 li:hover{
			color:#000;
			background:#ccc;
		}
		
		.mid_left_div .mid_left_ul_2{
			display:none;
		}
		.mid_left_div .mid_left_ul_2 li{
			width:100%;
			text-align:center;
			height:25px;
			line-height:25px;
			background:#fff;
			color:#000;
			border-bottom:1px solid #000; 
			font-size:15px;
		}
		
		.mid_left_div .mid_left_ul_2 li:hover{
			color:#000fff;
			background:#F5F5F5;
		}
		
		.mid_left_div .mid_left_ul_2 li.active{
			color:#8B008B;
			background:#fff000;
		}
	</style>
	<script>
		$(function(){
			$(".mid_left_ul_1").children("li").click(function(){
				$(this).next().stop().fadeToggle();
				$(this).siblings("li").next().stop().fadeOut();
				
			})
			
			$(".mid_left_ul_2").children("li").click(function(){
				$(this).parent().siblings("li").next().children("li").removeClass("active");
				$(this).addClass("active").siblings("li").removeClass("active");
				$(parent.document).find("#mid_right_frame").attr("src",menuCode[this.id]);
			})
			
			$("#menu").click(function(){
				var ifrParent = $(window.parent.document);
				ifrParent.find(".mid_left_bar").stop().show();
				ifrParent.find(".mid_right").css("width","98%");
				ifrParent.find(".mid_left").stop().hide();
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
    	<p id="menu" title="隐藏">菜单<span>&lt;&lt;</span></p>
    	<ul class="mid_left_ul_1">
    		<li>分销商库存管理</li>
    		<ul class="mid_left_ul_2">
	    		<li id="4001">流向单维护</li>
					<li id="4002">流向单审核</li>
					<li id="4003">流向单抽查</li>
					<li id="4004">流向单复审</li>
					<li id="4005">盘点结果维护</li>
					<li id="4006">盘点结果审核</li>
    		</ul>
    		<li>分消费管理</li>
    		<ul class="mid_left_ul_2">
    		</ul>
    		<li>结账管理</li>
    		<ul class="mid_left_ul_2">
    		</ul>
    		<li>付款结算管理</li>
    		<ul class="mid_left_ul_2">
    		</ul>
    		<li>统计报表管理</li>
    		<ul class="mid_left_ul_2">
	    		<li id="3001">分销商级别分布图</li>
					<li id="3002">流向单录入审核报告</li>
					<li id="3003">流向单抽查报告</li>
					<li id="3004">分销商月度分销(调拨)明细表</li>
					<li id="3005">分销商库存报表</li>
    		</ul>
    		<li>基础数据管理</li>
    		<ul class="mid_left_ul_2">
	    		<li id="2001">会计核算期间维护</li>
					<li id="2002">物料维护</li>
					<li id="2003">分销商维护</li>
					<li id="2004">终端客户维护（医院）</li>
    		</ul>
    		<li>系统管理</li>
    		<ul class="mid_left_ul_2">
	    		<li id="1001">用户维护</li>
        	<li id="1002">修改密码</li>
    		</ul>
    	</ul>
		</div>
  </body>
</html>
