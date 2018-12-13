<%@ page contentType="text/html" language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML >
<html>
<head>
<title>注销成功(ฅ´ω`ฅ)</title>
  <link href="http://localhost:8080/PRAC/约会吧/img/title.ico" rel="icon" type="image/x-ico"></link>
<link rel="stylesheet" href="http://localhost:8080/PRAC/约会吧/css/un.css">
<style>
font{
	font-family:"幼圆";
}
body {
	background:url(约会吧/img/logout.jpg); 
	overflow-x:hidden;
}
</style>
</head>
<body>
<%
    if(session.getAttribute("user") == null)
    {
    	%>
    	<script>
    	alert('尊敬的游客，由于您未登录，所以无法使用该平台，请登录后再进行访问！');location.href('login.jsp');
    	</script>
<%
    }
    %>
    <%
response.setHeader("refresh","3;URL=login.jsp");
session.invalidate();
%>


<div align="center" style="padding-top:150px">
	<h1><font size="+6">注销成功!</font></h1><br> 
	</div>
  <div align="center">
  <p><font color="#999999">您已成功注销该账户&nbsp;&nbsp;&nbsp;<a>请稍候...</a></font></p>
  </div>

<div class="loader">
	<div class="l_main">
		<div class="l_square"><span></span><span></span><span></span></div>
		<div class="l_square"><span></span><span></span><span></span></div>
		<div class="l_square"><span></span><span></span><span></span></div>
		<div class="l_square"><span></span><span></span><span></span></div>
	</div>
</div>

<div style="text-align:center;clear:both;">
<script src="/gg_bd_ad_720x90.js" type="text/javascript"></script>
<script src="/follow.js" type="text/javascript"></script>
</div>

  </body>
</html>
