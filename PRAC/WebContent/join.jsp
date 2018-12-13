<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

  <meta charset="UTF-8">

  <title>注册(ง •̀_•́)ง</title>
  <style>
  A {text-decoration: NONE}
  footer{position:absolute;bottom:0;width:100%;height:20px}
  </style>
  <link href="http://localhost:8080/PRAC/约会吧/img/title.ico" rel="icon" type="image/x-ico"></link>
   <link rel="stylesheet" href="http://localhost:8080/PRAC/约会吧/css/join.css" media="screen" type="text/css" ></link>
<script language="javascript" type="text/javascript"></script>

</head>

<body background="http://localhost:8080/PRAC/约会吧/img/join.jpg">
<div style="padding-top:80px">
  <span href="#" class="button" id="toggle-login">注册</span>

<div id="login">
  <div id="triangle"></div>
  <h1>加入“约会吧”~</h1>
  <form name="form" action="http://localhost:8080/PRAC/joinservlet" method="post" onsubmit="return checkAll()">
  	<input type="text" required id="username" onkeyup="YHMonblus()" name="username"  placeholder="用户名" /><span id="YHMerror"></span>
    <input type="tel" required id="phone" onkeyup="checkPhone()" name="phonenumber" placeholder="电话号码" /><span id="num"></span>
    <input type="text" required id="email" onkeyup="checkemail();" name="email" placeholder="Email" /><span id="eml"></span>
    <input type="password" required id="psw0"  onkeyup="checkpsw()" name="password" placeholder="密码" />
    <input type="password"  required id="psw1"  onkeyup="checkpsw()"placeholder="确认密码" /><span id="ps"></span>
    <div align="left" style="padding-top:10px; padding-bottom:10px"><font size="+2" color="#666666">您的性别：<input type="radio" name="sex" value="男" checked="checked"/>男&nbsp;&nbsp;<input type="radio" name="sex" value="女"/>女</font></div>
    <input type="submit" id="submit" value="完成注册"  class="button" />
    <div style="padding-top:10px"><a href="http://localhost:8080/PRAC/login.jsp">已有账号？点击这里登录~</a>&nbsp;
</form>
</div>
</div>
<script>
function YHMonblus(){
    var username=document.getElementById("username");
   // var reN =/^\d{6,18}$/;
    var re = /^[a-zA-Z_]{6,18}$/;
    if(username.value==""){
        document.getElementById('YHMerror').innerText="请输入用户名";
        return false;
    }
    else if(username.value.length<6||username.value.length>18){
        console.log(username.value);
        document.getElementById('YHMerror').innerHTML="<font color='red'>格式错误,用户名长度应为6-18个字符</font>";
        return false;
    }
    else if(!re.test(username.value)){

        document.getElementById('YHMerror').innerHTML="<font color='red'>格式错误,用户名只能包含英文字母和下划线</font>";
        return false;
    }
    else {
        document.getElementById('YHMerror').innerHTML="<font color='green'>BINGO!</font>";
        return true;
    }
}

function checkPhone(){ 
    var phone = document.getElementById('phone').value;
    if(!(/^1(3|4|5|7|8)\d{9}$/.test(phone))){ 
		document.getElementById("num").innerHTML="<font color='red'>请输入正确的电话号码！</font>";
        return false;
    } else {
		document.getElementById("num").innerHTML="<font color='green'>BINGO!</font>";
        return true;
    }
}
function checkemail(){
    var email = document.getElementById('email').value;
	var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
	if (filter.test(email)) {
		document.getElementById("eml").innerHTML="<font color='green'>BINGO!</font>";
        return true;
	}
	else {
		document.getElementById("eml").innerHTML="<font color='red'>请输入正确的电子邮箱！</font>";
        return false;
	}
	}
function checkpsw(){
	var psw0 = document.getElementById("psw0");
	var psw1 = document.getElementById("psw1");
   // var reN =/^\d{6,18}$/;
    var re = /^[0-9a-zA-Z]{6,12}$/;
    if(psw0.value==""){
        document.getElementById('ps').innerText="请输入密码";
        return false;
    }
    else if(psw0.value.length<6||psw0.value.length>12){
        console.log(psw0.value);
        document.getElementById('ps').innerHTML="<font color='red'>格式错误,密码长度应为6-12个字符</font>";
        return false;
    }
    else if(!re.test(psw0.value)){
        document.getElementById('ps').innerHTML="<font color='red'>格式错误,密码只能包含英文字母和数字</font>";
        return false;
    }else if(psw0.value!=psw1.value){
        document.getElementById('ps').innerHTML="<font color='red'>两次输入不一致</font>";
        return false;
    }else{
        document.getElementById('ps').innerHTML="<font color='green'>BINGO!</font>";
        return true;
    }
}

function checkAll(){  
	        var email = checkemail();  
	        var name = YHMonblus();  
	        var id = checkPhone();  
	        var password = checkpsw();  
	        if(email&&name&&id&&password){  
	            return true;  
	        }else{  
	            return false;  
	        }  

	    } 

</script>


		

  <script src="${pageContext.request.contextPath}/约会吧/js/jquery.js"></script>
  <script src="${pageContext.request.contextPath}/约会吧/js/index.js"></script>
<footer>
<div align="left" style="padding:20px">
<br><br><br>
<a href="约会吧/about.html" target="_blank"><font color="#808080">关于我们</font></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="约会吧/touch.html" target="_blank"><font color="#808080">联系我们</font></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="约会吧/app.html" target="_blank"><font color="#808080">app下载</font></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="约会吧/secret.html" target="_blank"><font color="#808080">隐私政策</font></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a><font color="#808080">Java Web实训group1小组所有</font></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a target="_blank"><font color="#808080">©南京工业职业技术学院计算机与软件学院移动应用开发1711班</font></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</div>
</footer>
</body>

</html>