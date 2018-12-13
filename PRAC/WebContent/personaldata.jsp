<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style>
.a1 {
	text-align: center;
	margin: 0 auto;
	width: 600px;
	height: 800px;
	background-color: bisque;
}

body {
	text-align: center;
}

.b1 {
	margin: 0;
	padding: 0;
}
</style>
<script type="text/javascript">
	var CHKNAME = "^(?![0-9]+$)[0-9A-Za-z]{1,16}$";
	var CHKEMAIL = "^[a-z0-9_]+@[a-z0-9]+(\\.[a-z]{2,3}){1,2}$";
	var CHKPHONE = "^1[3,5,7,8][0-9]{9}$";
	//检测用户名
	function checkName() {
		//创建正则对象
		var rex = new RegExp(CHKNAME);
		var NameObj = document.getElementById("userName");
		var resultObj = document.getElementById("resultUserName");
		if (rex.test(NameObj.value)) {
			resultObj.innerHTML = "√";
			resultObj.style.color = "green";
			return true;
		} else {
			//内嵌文本
			resultObj.innerHTML = "姓名不符合要求";
			resultObj.style.color = "red";
			NameObj.focus();
			NameObj.value = "";
			return false;
		}
	}
	//验证邮箱
	function chkEmail() {
		var emailObj = document.getElementById("email");
		var resultEmailObj = document.getElementById("resultEmail");
		var rex = new RegExp(CHKEMAIL);
		if (rex.test(emailObj.value)) {
			resultEmailObj.innerHTML = "√";
			resultEmailObj.style.color = "green";
			return true;
		} else {
			resultEmailObj.innerHTML = "邮箱格式不正确";
			resultEmailObj.style.color = "red";
			emailObj.focus();
			emailObj.value = "";
			return false;
		}
	}
	//验证手机号
	function chkPhones() {
		var phoneObj = document.getElementById("phone");
		var resultPhObj = document.getElementById("resultPhone");
		var reg = new RegExp(CHKPHONE);
		if (reg.test(phoneObj.value)) {
			resultPhObj.innerHTML = "√";
			resultPhObj.style.color = "green";
			return true;
		} else {
			resultPhObj.innerHTML = "手机格式不正确";
			resultPhObj.style.color = "red";
			phoneObj.focus();
			phoneObj.value = "";
			return false;
		}
	}
	//验证所有
	function checkAll() {
		if (checkName() && chkEmail() && chkPhones()) {
			alert("保存成功！");
			return true;
		} else {
			alert("信息填写有误，保存失败！");
		}

	}
</script>

</head>
<body bgcolor="#f0ffff" :>
	<div class="a1">
		<h2 style="text-align: center">查看个人档案</h2>
		<img src="../HTML/img/tx.jpg" width="103" height="103">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<div style="height: 0px; overflow: hidden; position: absolute;">
			<input type="file" id="up" />
		</div>
		<button onclick="document.getElementById('up').click();">上传真人头像</button>
		 
		<form action="A" name="myForm" method="post"
			onsubmit="return checkAll()">
			               
			<table class="b1">
				                   
				<tr>
					                       
					<td>姓名（*）：</td>                        
					<td><input type="text" name="userName" id="userName"
						onblur="checkName()"></td>                        
					<td id="resultUserName"></td>                    
				</tr>
				                               
				<tr>
					                       
					<td>性别（*）：</td>                        
					<td><input type="radio" name="sex" checked="checked">保密
						<input type="radio" value="1" name="sex">男 <input
						type="radio" value="0" name="sex">女</td>                      
					     
					<td id="resultSex"></td>                    
				</tr>
				                   
				<tr>
					                       
					<td>出生日期：</td>                        
					<td><input type="date" name="birthDay" id="birthday"
						value="1991-09-12"></td>                    
				</tr>
				                   
				<tr>
					                       
					<td>电子邮件：</td>                        
					<td><input type="text" name="email" id="email"
						placeholder="5656@qq.com" onblur="chkEmail()"></td>            
					           
					<td id="resultEmail"></td>                    
				</tr>
				                   
				<tr>
					                       
					<td>手机号：</td>                        
					<td><input type="text" name="phone" id="phone"
						onblur="chkPhones()" placeholder="13063023413"></td>          
					             
					<td id="resultPhone"></td>                    
				</tr>
				<tr>
					<td>个人网站：</td>
					<td><input type="text" name="com" placeholder="example.com"></td>
				</tr>
				<tr>
					                       
					<td>所在城市（*）：</td>                        
					<td><input type="text" name="address" placeholder="南京"></td>
					                   
				</tr>
				                   
				<tr>
					                       
					<td>联系地址（*）：</td>                        
					<td><input type="text" name="address" placeholder="齐鲁云商大厦"></td>
					                       
					<td id="resultAddress"></td>                    
				</tr>
				<tr>
					<td><input type="reset" value="取消"></td>                  
					 
					<td><input type="submit" value="保存"></td>
				</tr>
				               
			</table>
			               
		</form>
		 

	</div>
</body>
</html>