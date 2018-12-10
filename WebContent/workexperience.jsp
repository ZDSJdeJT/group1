<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>工作经历</title>
    <style>
    .text{
        text-align: center;
        background-color:#f5f5dc ;
        margin: 0 auto;
    }
        body{
            text-align: center;
        }
</style>
</head>

<body bgcolor="#f0f8ff"  >
<form>

<div >
    <table class="text">
        <br><br><br>
        <h1>工作经历</h1>
        <br><br>
        <tr>
            <th>公司/组织名称</th>
            <th><input type="text" placeholder="公司/组织名称" required></th>
        </tr>
        <tr>
            <th>职位头衔</th>
            <th><input type="text" placeholder="如:Java工程师" required></th>
        </tr>
        <tr>
            <th>起止日期</th>
            <th><input type="date" data-date-format="yyyy-mm-dd" name="startDate" required>&nbsp;—
                <input type="date" data-date-format="yyyy-mm-dd" name="endDate" required></th>
        </tr>
        <tr>
            <th>工作城市</th>
            <th><input type="text" placeholder="如：上海" required></th>
        </tr>
        <tr>
            <th>相关技术</th>
            <th><input type="text" size="50" placeholder="标签，如Java可用逗号，分号；来隔离" required></th>
        </tr>
        <tr>
            <th>职位描述</th>
            <th><textarea name="textknow" cols="70" rows="10" required></textarea></th>
        </tr>
    </table>
        <br>
        <br>
        <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="submit" value="取消">&nbsp;&nbsp;<input type="submit" value="保存" style="background: #f01455;border:none">

</div>
</form>
</body>
</html>