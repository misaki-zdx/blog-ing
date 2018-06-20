<%--
  Created by IntelliJ IDEA.
  User: Misaki
  Date: 2018/6/11
  Time: 9:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="UTF-8">

    <title>首页</title>
    <link rel="stylesheet" href="support/css/bootstrap.min.css">
    <link rel="stylesheet" href="support/css/animate.css">
    <link rel="stylesheet" href="support/css/magnific-popup.css">
    <link rel="stylesheet" href="support/css/font-awesome.min.css">

    <!-- 主要 css -->
    <link rel="stylesheet" href="support/css/style.css">
    <link rel="stylesheet" href="support/css/loading.css">
</head>
<body data-spy="scroll" data-target=".navbar-collapse" data-offset="50">
<!-- 导航 -->
<div class="navbar custom-navbar navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <c:set var="user" scope="session" value="${session.user}"/>
            <c:choose>
                <c:when test="${user==null}">
                    <a href="login.jsp" class="navbar-brand">登陆</a>
                </c:when>
                <c:when test="${user!=null}">
                    <a href="index.jsp" class="navbar-brand">${user}</a>
                </c:when>
            </c:choose>
        </div>

        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav navbar-right">
                <li><a class="smoothScroll" href="index.jsp">主页</a></li>
                <li><a class="smoothScroll" href="Archives.jsp">目录</a></li>
                <li><a class="smoothScroll" href="tags.jsp">类型</a></li>
                <li><a class="smoothScroll" href="aboutme.jsp">关于</a></li>
                <c:if test="${user!=null}">
                    <li><a class="smoothScroll" href="logout.action">注销</a></li>
                </c:if>
            </ul>
        </div>
    </div>
</div>

<!-- 内容 -->


<div class="context-all">
    <div class="container">
        <img src="support/image/about.jpg">
    </div>
</div>

<script src="support/js/jquery.js"></script>
<script src="support/js/bootstrap.min.js"></script>
<script src="support/js/smoothscroll.js"></script>
<script src="support/js/jquery.magnific-popup.min.js"></script>
<script src="support/js/magnific-popup-options.js"></script>
<script src="support/js/wow.min.js"></script>
<script src="support/js/custom.js"></script>
<script src="support/js/loading.js"></script>
</body>
</html>