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
<s:debug>
    <s:iterator var="article" value="list1">
        <s:property value="#article.title"/>
    </s:iterator>
</s:debug>
<s:property value="list[0].title"/>
</body>
</html>
