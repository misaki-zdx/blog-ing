<%--
  Created by IntelliJ IDEA.
  User: Misaki
  Date: 2018/6/15
  Time: 0:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="addUser.action" method="post">
    姓名:<input name="userName" type="text" >
    密码:<input name="password" type="password" >
    <select name="type">
        <option value="0">0</option>
        <option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
    </select>
    邮箱:<input name="email" type="email" >
    <input type="submit" value="提交">
</form>
</body>
</html>
