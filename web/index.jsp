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

    <style>
        .context-all {
            text-align: center;
            margin-top: 85px;
            background: #F2F2F5;
        }

        .context {
            margin-left: 160px;
            width: 800px;
            height: 200px;
            margin-top: 60px;
            background: white;
            margin-bottom: 20px;

        }

        .title {
            padding-top: 30px;
        }

        .hr_1 {
            width: 600px;
            border-top-width: 2px;
            color: black;
        }

        .title :hover {
            font-size: 26px;

        }

        #sx {
            margin-bottom: 20px;
            font-size: 18px;
        }
    </style>

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
                <li><a class="smoothScroll" href="#home">主页</a></li>
                <li><a class="smoothScroll" href="#about">目录</a></li>
                <li><a class="smoothScroll" href="#work">类型</a></li>
                <li><a class="smoothScroll" href="#contact">关于</a></li>
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
        <div class="context">
            <div class="title">
                <s:debug><s:iterator value="list" var="l">
                    <s:property value="#l.title"/>
                </s:iterator></s:debug>
                <s:property value="page"/>
                <a href="#"><h3><s:property value="list1[0].title"/></h3></a>
            </div>
            <hr class="hr_1"/>
            <div><span><s:property value="list[0].author"/></span>
                &nbsp;&nbsp;
                <span><s:property value="list[0].times"/></span>
            </div>
        </div>

        <div class="context">
            <div class="title">
                <a href="#"><h3><s:property value="list[1].title"/></h3></a>
            </div>
            <hr class="hr_1"/>
            <div><span><s:property value="list[1].author"/></span>
                &nbsp;&nbsp;
                <span><s:property value="list[1].times"/></span>
            </div>
        </div>

        <div class="context">
            <div class="title">
                <a href="#"><h3><s:property value="list[2].title"/></h3></a>
            </div>
            <hr class="hr_1"/>
            <div>
                <span><s:property value="list[2].title"/></span>
                &nbsp;&nbsp;
                <span><s:property value="list[2].title"/></span>
            </div>
        </div>

        <div class="context">
            <div class="title">
                <a href="#"><h3><s:property value="list[1].title"/></h3></a>
            </div>
            <hr class="hr_1"/>
            <div>
                <span><s:property value="list[1].title"/></span>&nbsp;&nbsp;<span><s:property value="list[1].title"/></span>
            </div>
        </div>

        <div class="context">
            <div class="title">
                <a href="#"><h3><s:property value="list[1].title"/></h3></a>
            </div>
            <hr class="hr_1"/>
            <div>
                <span><s:property value="list[1].title"/></span>&nbsp;&nbsp;<span><s:property value="list[1].title"/></span>
            </div>
        </div>

        <div id="sx">
            <a href="loading.action" id="s">上一页</a>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <a id="x" href="loading.action">下一页</a>
        </div>
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