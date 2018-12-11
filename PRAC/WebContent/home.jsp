<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>约会吧(｡ì _ í｡)</title>
<link href="http://localhost:8080/PRAC/约会吧/img/title.ico" rel="icon" type="image/x-ico">
<link rel="stylesheet" href="http://localhost:8080/PRAC/约会吧/css/idangerous.swiper.css">
<link rel="stylesheet" type="text/css" href="http://localhost:8080/PRAC/约会吧/css/normalize.css" />
<link rel="stylesheet" type="text/css" href="http://localhost:8080/PRAC/约会吧/css/demo.css">
<link rel="stylesheet" href="http://localhost:8080/PRAC/约会吧/css/style.css">
<style>
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
  font-size: 13px;
  line-height: 1.5;
}
a{ text-decoration: none;}
.h ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333;
}

.h li {
    float: left;
}

.h li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

.h li a:hover:not(.active) {
    background-color: #111;
}

.active {
    background-color: #4CAF50;
}
.device {
  width: 690px;
  position: relative;
  margin: 10px auto;
  height: 270px;
  padding: 5px 5px;
  border-radius: 20px;
  background: #000;
  border:3px solid #fff;
  box-shadow: 0px 0px 5px #000;
}
.swiper-container {
  width: 660px;
  height: 250px;
  color: #fff;
  background: #222;
  text-align: center;
}
.swiper-slide {
  height: 100%;
  opacity: 0.4;
  -webkit-transition: 300ms;
  -moz-transition: 300ms;
  -ms-transition: 300ms;
  -o-transition: 300ms;
  transition: 300ms;
  -webkit-transform: scale(0);
  -moz-transform: scale(0);
  -ms-transform: scale(0);
  -o-transform: scale(0);
  transform: scale(0);
}
.swiper-slide-visible {
  opacity: 0.5;
  -webkit-transform: scale(0.8);
  -moz-transform: scale(0.8);
  -ms-transform: scale(0.8);
  -o-transform: scale(0.8);
  transform: scale(0.8);
}
.swiper-slide-active {
  top: 0;
  opacity: 1;
  -webkit-transform: scale(1);
  -moz-transform: scale(1);
  -ms-transform: scale(1);
  -o-transform: scale(1);
  transform: scale(1);
}
.red-slide {
  background: #ca4040;
}
.blue-slide {
  background: #4390ee;
}
.orange-slide {
  background: #ff8604;
}
.green-slide {
  background: #49a430;
}
.pink-slide {
  background: #973e76;
}
.swiper-slide .title {
  font-style: italic;
  font-size: 42px;
  margin-top: 80px;
  margin-bottom: 0;
  line-height: 45px;
}
.pagination {
  position: absolute;
  z-index: 20;
  left: 0px;
  width: 100%;
  text-align: center;
  bottom: 5px;
}
.swiper-pagination-switch {
  display: inline-block;
  width: 10px;
  height: 10px;
  border-radius: 8px;
  background: #aaa;
  margin-right: 8px;
  cursor: pointer;
  -webkit-transition: 300ms;
  -moz-transition: 300ms;
  -ms-transition: 300ms;
  -o-transition: 300ms;
  transition: 300ms;
  opacity: 0;
  position: relative;
  top: -50px;
}
#box{
        width: 380px;
        margin: 30px auto;
        font-family: 'Microsoft YaHei';
        font-size: 14px;
    }
    input{
        width: 260px;
        border: 1px solid #e2e2e2;
        height: 30px;
        float: left;
        background-image: url(images/search.jpg);
        background-repeat: no-repeat;
        background-size: 25px;
        background-position:5px center;
        padding:0 0 0 40px;
    }
    #search{
        width: 78px;
        height: 32px;
        float: right;
        background: black;
        color: white;
        text-align: center;
        line-height: 32px;
        cursor: pointer;
    }
</style>
</head>
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
<body background="http://localhost:8080/PRAC/约会吧/img/bg.jpg">
<header>
<div class="h">
<ul>
  <li style="padding-right:10px"><img src="http://localhost:8080/PRAC/约会吧/img/logo.png" width="228" height="91" /></li>
  <li id="box">
        <input type="text" name="search" placeholder="请输入关键字">
  <div id="search">搜索 </div></li>
  <li style="float:right; padding:20px"><a class="active" href=0 target="_blank">${user.username}</a></li>  
   <li style="float:right; padding:20px"><a href="http://localhost:8080/PRAC/约会吧/app.html" target="_blank">app下载</a></li>
   <li style="float:right; padding:20px"><a href="http://localhost:8080/PRAC/约会吧/about.html" target="_blank">关于我们</a></li>
   <li style="float:right; padding:20px"><a href="http://localhost:8080/PRAC/约会吧/touch.html" target="_blank">联系我们</a></li>
  
</ul>
</div>
</header>
<audio autoplay="ture" loop><source src="http://localhost:8080/PRAC/约会吧/mus/未闻花名.mp3"></audio>
<div style="padding-top:85px">
<div class="device">
    <div class="swiper-container">
      <div class="swiper-wrapper">
        <div class="swiper-slide red-slide">
          <div class="title">我们的功能→</div>
        </div>
        <div class="swiper-slide blue-slide">
          <div class="title"><a href=#>约会^0^</a></div>
        </div>
        <div class="swiper-slide orange-slide">
          <div class="title"><a href=#>招聘>_<</a></div>
        </div>
        <div class="swiper-slide blue-slide">
          <div class="title"><a href=#>问答=_=</a></div>
        </div>
        </div>
      </div>
    </div>
    <div class="pagination"></div>
  </div>
  <script src="http://localhost:8080/PRAC/约会吧/js/jquery-1.10.1.min.js"></script>
<script src="http://localhost:8080/PRAC/约会吧/js/idangerous.swiper.min.js"></script>
<script>
  var mySwiper = new Swiper('.swiper-container',{
    pagination: '.pagination',
    paginationClickable: true,
    centeredSlides: true,
    slidesPerView: 3,
    watchActiveIndex: true
  })
  </script>
<div style="text-align:center;clear:both;">
<script src="/gg_bd_ad_720x90.js" type="text/javascript"></script>
<script src="/follow.js" type="text/javascript"></script>
</div>
</div>
<div style="padding-top:95px">
	<div class="carousel">
		<figure>
				<img src="http://localhost:8080/PRAC/约会吧/img/1.png" alt="">
			<img src="http://localhost:8080/PRAC/约会吧/img/2.png" alt="">
			<img src="http://localhost:8080/PRAC/约会吧/img/3.png" alt="">
			<img src="http://localhost:8080/PRAC/约会吧/img/4.png" alt="">
			<img src="http://localhost:8080/PRAC/约会吧/img/5.png" alt="">
			<img src="http://localhost:8080/PRAC/约会吧/img/6.png" alt="">
			<img src="http://localhost:8080/PRAC/约会吧/img/7.png" alt="">
			<img src="http://localhost:8080/PRAC/约会吧/img/8.png" alt="">
		</figure>
		<nav>
			<button class="nav prev">←</button>
			<button class="nav next">→</button>
		</nav>
	</div>
</div>
<footer>
<div align="left" style="padding:20px">
<br><br><br>
<hr>
<a href="http://localhost:8080/PRAC/约会吧/secret.html" target="_blank"><font color="#808080">隐私政策</font></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a target="_blank"><font color="#808080">Java Web实训group1小组所有</font></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a target="_blank"><font color="#808080">©南京工业职业技术学院计算机与软件学院移动应用开发1711班</font></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</div>
</footer>
<script type="text/javascript">
	'use strict';

	window.addEventListener('load', function () {
		var carousels = document.querySelectorAll('.carousel');

		for (var i = 0; i < carousels.length; i++) {
			carousel(carousels[i]);
		}
	});

	function carousel(root) {
		var figure = root.querySelector('figure'),
			nav = root.querySelector('nav'),
			images = figure.children,
			n = images.length,
			gap = root.dataset.gap || 0,
			bfc = 'bfc' in root.dataset,
			theta = 2 * Math.PI / n,
			currImage = 0;

		setupCarousel(n, parseFloat(getComputedStyle(images[0]).width));
		window.addEventListener('resize', function () {
			setupCarousel(n, parseFloat(getComputedStyle(images[0]).width));
		});

		setupNavigation();

		function setupCarousel(n, s) {
			var apothem = s / (2 * Math.tan(Math.PI / n));

			figure.style.transformOrigin = '50% 50% ' + -apothem + 'px';

			for (var i = 0; i < n; i++) {
				images[i].style.padding = gap + 'px';
			}for (i = 1; i < n; i++) {
				images[i].style.transformOrigin = '50% 50% ' + -apothem + 'px';
				images[i].style.transform = 'rotateY(' + i * theta + 'rad)';
			}
			if (bfc) for (i = 0; i < n; i++) {
				images[i].style.backfaceVisibility = 'hidden';
			}rotateCarousel(currImage);
		}

		function setupNavigation() {
			nav.addEventListener('click', onClick, true);

			function onClick(e) {
				e.stopPropagation();

				var t = e.target;
				if (t.tagName.toUpperCase() != 'BUTTON') return;

				if (t.classList.contains('next')) {
					currImage++;
				} else {
					currImage--;
				}

				rotateCarousel(currImage);
			}
		}

		function rotateCarousel(imageIndex) {
			figure.style.transform = 'rotateY(' + imageIndex * -theta + 'rad)';
		}
	}
</script>

</body>
</html>