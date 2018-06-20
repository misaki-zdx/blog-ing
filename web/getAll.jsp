<%--
  Created by IntelliJ IDEA.
  User: Misaki
  Date: 2018/6/15
  Time: 0:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<a href="addUser.jsp">添加</a>
<table border="1">
    <tr>
        <td>id</td>
        <td>昵称</td>
        <td>密码</td>
        <td>邮箱</td>
        <td>类型</td>
    </tr>
    <s:iterator var="user" value="list">
    <tr>
        <td><s:property value="#user.id"/></td>
        <td><s:property value="#user.userName"/></td>
        <td><s:property value="#user.password"/></td>
        <td><s:property value="#user.email"/></td>
        <td><s:property value="#user.type"/></td>
        <td><a href="deleteUser.action?id=<s:property value="#user.id"/>">删除</a></td>
        <td><a href="updateUser.action?id=<s:property value="#user.id"/>">修改</a></td>
        </tr>
    </s:iterator>
</table>
</body>
</html>
