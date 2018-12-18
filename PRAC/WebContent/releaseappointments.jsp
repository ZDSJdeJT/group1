<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>发布约会</title>
  <link rel="stylesheet" type="text/css" href="release.css">
</head>

<body background="png/c.png">
<div class="f" >
<h2>发布约会</h2>
  <div>
    <form>
      <input type="text">
      <table><tr><th>主题：</th>
      <td> <img src="png/吃饭.png" style="width: 40px;height: 50px;display: block;"><input type="radio" name="activity"/><span>吃饭</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
      <td> <img src="png/唱歌.png" style="width: 40px;height: 50px;display: block;"><input type="radio" name="activity" checked/><span>唱歌</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
      <td> <img src="png/运动.png" style="width: 40px;height: 50px;display: block;"><input type="radio" name="activity"/><span>运动</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
      <td> <img src="png/咖啡.png" style="width: 40px;height: 50px;display: block;"><input type="radio" name="activity"/><span>咖啡</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
      <td> <img src="png/旅行.png" style="width: 40px;height: 50px;display: block;"><input type="radio" name="activity"/><span>旅行</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
      <td> <img src="png/其他.png" style="width: 40px;height: 50px;display: block;"><input type="radio" name="activity"/><span>其他</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td></tr>
    </table><br>

  <div>
      <table>
        <tr><th>费用：</th><td><input type="radio" name="money" checked><span>我买单</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="money"><span>AA制</span></td></tr>
        <tr><th>时间：</th><td><select name="mon">
          <option value="0" selected>不限时间&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</option>
          <option value="1">1月</option>
          <option value="2">2月</option>
          <option value="3">3月</option>
          <option value="4">4月</option>
          <option value="5">5月</option>
          <option value="6">6月</option>
          <option value="7">7月</option>
          <option value="8">8月</option>
          <option value="9">9月</option>
          <option value="10">10月</option>
          <option value="11">11月</option>
          <option value="12">12月</option>
        </select>
        </td></tr>
        <tr><th>地点：</th><td><input type="text" placeholder="详细地址" size="30" autofocus></td></tr>
        <tr><th>描述：</th><td><textarea type="text" rows="3" cols="40" maxlength="50" placeholder="可输入0-30字的描述"></textarea> </td></tr>
      </table>
      <a href="messages.html"> <input type="button" value="发布约会" style="border-radius: 10px;background-color: dodgerblue;width: 100px;height: 30px;outline: black;margin: 0 auto; display: block;"/></a>
    </form>
  </div>
</div>
</html>

