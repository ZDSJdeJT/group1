<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
 <head>
  <meta charset="utf-8">
  <title>注册失败( Ĭ ^ Ĭ )</title>
  <link href="http://localhost:8080/PRAC/约会吧/img/title.ico" rel="icon" type="image/x-ico"></link>
  <style>
font{
	font-family:"幼圆";
}
  *{padding:0;margin:0;}
	body{
		position:relative;
		background-size:1920px 950px;
	    overflow:hidden;
	}
	.ghost{
		width:160px;
		margin:100px auto;
		position:relative;
		animation:ghostUpdown 1s infinite alternate;
		-webkit-animation:ghostUpdown 1s infinite alternate;
	}
	.ghostBody{
		width:140px;
		height:180px;
		background:#CCC;
		border-radius:100% 100% 0 0;
		position:relative;
	}
	.ghostEye{
		width:15px;
		height:20px;
		border-radius:100%;
		border:2px solid #061E74;
		background:#061E74;
		box-shadow:inset -2px -2px #fff;
		position:absolute;
		top:60px;
	}
	.left{left:45px}
	.right{right:50px;}
	.ghostMouth{
		width:15px;
		height:20px;
		border-radius:100%;
		border:2px solid #061E74;
		position:absolute;
		top:90px;
		left:70px;
	}
	.ghostWave{
		position:absolute;
		width: 140px;
		height: 20px;
		background-size:25px 20px;
		background-image:radial-gradient(circle at 50% 0%,#fff,71%,transparent 71%);
	}
	.shadow{
		width:140px;
		height:10px;
		border-radius:100%;
		background:#061E74;
		opacity:0.3;
		margin-top:70px;
		animation:shadow 1s infinite alternate;
		-webkit-animation:shadow 1s infinite alternate;
	}
	@keyframes ghostUpdown{
		from{margin-top:100px;}
		to{margin-top:70px;}
	}
	@-webkit-keyframes ghostUpdown{
		from{margin-top:100px;}
		to{margin-top:70px;}
	}
	@keyframes shadow{
		from{margin-top:70px;opacity:0.3;}
		to{margin-top:100px;opacity:0.1;}
	}
	@-webkit-keyframes shadow{
		from{margin-top:70px;opacity:0.3;}
		to{margin-top:100px;opacity:0.1;}
	}
  </style>
 </head>
<body background="http://localhost:8080/PRAC/约会吧/img/joinunsuccessful.png">
  <div align="center" style="padding-top:150px">
	<h1><font size="+6">注册失败!</font></h1><br> 
	</div>
  <div align="center">
  <p><font color="#999999">此用户名已存在，请更换一个用户名重新进行注册！&nbsp;&nbsp;&nbsp;<a href="http://localhost:8080/PRAC/join.jsp">点此重新注册(๑•̀ㅂ•́)و✧</a></font></p>
  </div>
 
 <div style="padding-top:250px">
	<div class="ghost">
		<div class="ghostBody"></div>
		<div class="ghostEye left"></div>
		<div class="ghostEye right"></div>
		<div class="ghostMouth"></div>
		<div class="ghostWave"></div>
		<div class="shadow"></div>
	</div>
</div>
<div style="text-align:center;clear:both">
<script src="/gg_bd_ad_720x90.js" type="text/javascript"></script>
<script src="/follow.js" type="text/javascript"></script>
</div>
</body>
</html>
