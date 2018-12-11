<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

  <meta charset="UTF-8">

  <title>注册(｡ì _ í｡)</title>
  <style>
  A {text-decoration: NONE}
  </style>
  <link href="http://localhost:8080/PRAC/约会吧/img/title.ico" rel="icon" type="image/x-ico"></link>
   <link rel="stylesheet" href="http://localhost:8080/PRAC/约会吧/css/join.css" media="screen" type="text/css" ></link>
<script language="javascript" type="text/javascript">
 
function checkMobile(str) {
    if(str==""){
        
    }
    else{
        var re = /^1\d{10}$/
        if (re.test(str)) {
            
        } else {
            alert("手机号格式错误！");
        }
    }
}
</script>
</head>

<body background="http://localhost:8080/PRAC/约会吧/img/join.jpg">
<div style="padding-top:80px">
  <span href="#" class="button" id="toggle-login">注册</span>

<div id="login">
  <div id="triangle"></div>
  <h1>输入您的信息</h1>
  <form action="http://localhost:8080/PRAC/joinservlet" method="post" onsubmit="return reg(this)">
  	<input type="text" required name="username" class="box" placeholder="用户名" />
    <input type="tel" required id="btn_getNum" name="phonenumber" placeholder="电话号码" />
    <input type="email" required name="email" class="box" placeholder="Email" />
    <input type="password" required name="password" class="box" name="pw" id="pw1" placeholder="密码" />
    <input type="password" required name="password" class="box" name="pw" id="pw2" onkeyup="validate()" placeholder="确认密码" /><span id="tishi"></span>
    <div align="left" style="padding-top:10px; padding-bottom:10px"><font size="+2" color="#666666">您的性别：<input type="radio" name="sex" value="男" checked="checked"/>男&nbsp;&nbsp;<input type="radio" name="sex" value="女"/>女</font></div>
    <input type="submit" value="注册" id="submit" onclick="checkMobile(btn_getNum.value);"/>
    <div style="padding-top:10px"><a href="http://localhost:8080/PRAC/login.jsp">已有账号？点击这里登录~</a></div>
</form>
</div>
</div>
<script>
function validate() {
var pw1 = document.getElementById("pw1").value;
var pw2 = document.getElementById("pw2").value;
if(pw1.length<6) {
	document.getElementById("tishi").innerHTML="<font color='red'>密码至少需要六位数</font>";
	document.getElementById("submit").disabled = true;
	}
	else if(pw1 != pw2){
	document.getElementById("tishi").innerHTML="<font color='red'>两次密码不相同</font>";
	document.getElementById("submit").disabled = true;
	}else if(pw1 == pw2){
		document.getElementById("tishi").innerHTML="<font color='green'>两次密码相同</font>";
		document.getElementById("submit").disabled = false;
	}
	}


</script>
  <script src="${pageContext.request.contextPath}/约会吧/js/jquery.js"></script>

  <script src="${pageContext.request.contextPath}/约会吧/js/index.js"></script>

</body>

</html>