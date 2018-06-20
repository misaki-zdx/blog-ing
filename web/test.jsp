<%--
  Created by IntelliJ IDEA.
  User: Misaki
  Date: 2018/6/12
  Time: 14:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>Title</title>
</head>

<body>
this is test page
    <s:iterator var="article" value="list">
        <s:property value="#article.title"/>
    </s:iterator>
<s:property value="list[0].title"/>
<s:debug></s:debug>
</body>
</html>
