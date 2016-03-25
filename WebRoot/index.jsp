<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page language="java" import="com.wyz.hibernate.pojo.*"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  </head>
  
  <body>
    <script>
    	location="toLoginAction.do";
    </script>
  </body>
</html>
