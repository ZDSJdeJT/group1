<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

  <meta charset="UTF-8">

  <title>登录(｡ì _ í｡)</title>
  <style>
  A {text-decoration: NONE}
  </style>
  <link href="http://localhost:8080/PRAC/约会吧/img/title.ico" rel="icon" type="image/x-ico"></link>
   <link rel="stylesheet" href="http://localhost:8080/PRAC/约会吧/css/login.css" media="screen" type="text/css" ></link>
</head>
<body background="http://localhost:8080/PRAC/约会吧/img/login.jpg">
<div style="padding-top:80px">
  <span href="#" class="button" id="toggle-login">登录</span>

<div id="login">
  <div id="triangle"></div>
  <h1>一起约会吧  ヾ(≧▽≦*)o</h1>
  <form action="http://localhost:8080/PRAC/loginservlet" method="post" onsubmit="return login(this);">
    <input type="text" name="username" id="username" required placeholder="用户名" />
    <input type="password"  name="password" required placeholder="密码" />
    <input type="submit" value="登录" />
    <div style="padding-top:10px"><a href="http://localhost:8080/PRAC/join.jsp">没有账号？点击这里注册一个吧~</a></div>
</form>
  <script src="${pageContext.request.contextPath}/约会吧/js/jquery.js"></script>

  <script src="${pageContext.request.contextPath}/约会吧/js/index.js"></script>
</div>
</body>

</html>