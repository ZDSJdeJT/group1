<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

  <meta charset="UTF-8">

  <title>登录ヾ(≧▽≦*)o</title>
  <style>
  A {text-decoration: NONE}
    footer{position:absolute;bottom:0;width:100%;height:50px}
  </style>
  <link href="http://localhost:8080/PRAC/约会吧/img/title.ico" rel="icon" type="image/x-ico"></link>
   <link rel="stylesheet" href="http://localhost:8080/PRAC/约会吧/css/join.css" media="screen" type="text/css" ></link>
</head>
<body background="http://localhost:8080/PRAC/约会吧/img/login.jpg">
<div style="padding-top:80px">
  <span href="#" class="button" id="toggle-login">登录</span>

<div id="login">
  <div id="triangle"></div>
  <h1>请输入您的信息  ヾ(≧▽≦*)o</h1>
  <form action="http://localhost:8080/PRAC/loginservlet" method="post"  onsubmit="return checkAll()">
  	<input type="text" required id="username" onkeyup="YHMonblus()" name="username" placeholder="用户名" /><span id="YHMerror"></span>
    <input type="password" required id="pw1" onkeyup="checkpsw()" name="password" placeholder="密码" /><span id="tish"></span>
    <input type="submit"  value="点击登录" class="button"  id="submit" />
    <div style="padding-top:10px"><p><a href="http://localhost:8080/PRAC/join.jsp">没有账号？点此注册</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="http://localhost:8080/PRAC/changepassword.jsp">忘记密码？/修改密码</a></p></div>
    </form>
  <script src="${pageContext.request.contextPath}/约会吧/js/jquery.js"></script>

  <script src="${pageContext.request.contextPath}/约会吧/js/index.js"></script>
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



function checkpsw(){
    var pw=document.getElementById("pw1");
    // var reN =/^\d{6,18}$/;
     var re = /^[0-9a-zA-Z]{6,12}$/;

    if(pw.value==""){
        document.getElementById('tish').innerText="请输入密码";
        return false;
    }
    else if(pw.value.length<6||pw.value.length>12){
        console.log(pw.value);
        document.getElementById('tish').innerHTML="<font color='red'>格式错误,密码长度应为6-12个字符</font>";
		return false;
    }
    else if(!re.test(pw.value)){

        document.getElementById('tish').innerHTML="<font color='red'>格式错误,密码只能包含英文字母和数字</font>";
		return false;
    }
    else {
        document.getElementById('tish').innerHTML="<font color='green'>BINGO!</font>";
		return true;
    }
}

function checkAll(){  
	        var name = YHMonblus();  
	        var password = checkpsw();  

	        if(name&&password){  
	            return true;  
	        }else{  
	            return false;  
	        }  

	    } 

</script>
<footer>
<div align="right" style="padding:20px">
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