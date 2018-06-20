<%--
  Created by IntelliJ IDEA.
  User: Misaki
  Date: 2018/6/15
  Time: 0:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="updateUser1.action" method="post">
        <input type="text" name="id"  style="display:none" value=<s:property value="user.id"/>>
    姓名:<input name="userName" type="text" value=<s:property value="user.userName"/>>
    密码:<input name="password" type="password" value=<s:property value="user.password"/>>
    <%--类型:<input name="type" list="type">
    <datalist id="type" type="int" value=<s:property value="user.type"/>>
        <option value="1">
        <option value="2">
    </datalist>--%>
    <%--<s:radio name="type" label="类型:" list="{'1','2'}"></s:radio>--%>
    <select name="type">
        <option value="0">0</option>
        <option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
    </select>
    邮箱:<input name="email" type="email" value=<s:property value="user.email"/>>
    <input type="submit" value="提交">
</form>
</body>
</html>
