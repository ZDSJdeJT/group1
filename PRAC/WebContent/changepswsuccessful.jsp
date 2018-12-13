<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
 <head>
  <meta charset="utf-8">
  <title>重置密码(つд⊂)</title>
  <link href="http://localhost:8080/PRAC/约会吧/img/title.ico" rel="icon" type="image/x-ico"></link>
    <style>
font{
	font-family:"幼圆";
}
  *{padding:0;margin:0;}
  body
  {
  		background-size:1920px 1000px;
  }
    </style>
</head>
<body background="http://localhost:8080/PRAC/约会吧/img/changepswsuccessful.png">
 <div align="center" style="padding-top:150px">
	<h1><font size="+6">密码重置成功!</font></h1><br> 
	</div>
  <div align="center" style="padding-top:15px">
  <p><font color="#999999">您已重置密码！&nbsp;&nbsp;&nbsp;<a>正在自动为您跳转到登录页面~</a></font></p>
  </div>
  <script> window.setInterval("location='login.jsp'",3000); </script>
</body>
</html>