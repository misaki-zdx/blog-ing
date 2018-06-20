<%--
  Created by IntelliJ IDEA.
  User: Misaki
  Date: 2018/6/14
  Time: 16:55
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
<div class="navbar custom-navbar navbar-fixed-top" role="navigation" style="background: white;">
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
<div class="context-all">
    <div class="container">
        <div class="context_article">
            <h3><s:property value="list[0].title"/></h3>
            <div>
                <hr class="hr_1"/>
            </div>

                    <s:property value="list[0].content"/>

        </div>

    </div>
</div>
<!-- 下面实现留言板功能

-->
<div class="mainframe">
    <div class="title">留言板</div>
    <div class="message">主人寄语</div>
    <div class="info">
        欢迎大家留言哦，萌萌哒~~~~~
    </div>
    <c:set var="user" scope="session" value="${session.user}"/>
    <c:choose>
        <c:when test="${user==null}">
            <div class="content" contenteditable="false"></div>
            <input type="button" disabled="disabled" name="submit" value="发表" class="subbtn">
        </c:when>
        <c:when test="${user!=null}">
            <div class="content" contenteditable="true"></div>
            <input type="button" name="submit" value="发表" class="subbtn">
        </c:when>
    </c:choose>
    <div class="numofmessage">留言(0)</div>
    <!-- 下面是留言区 -->
    <div class="msgFrame">

    </div>
</div>

<script>
    $(function () {

    })
    function loading(){
        $('content').attr('')
    }
</script>
<style>

    body {
        background: whitesmoke;
        font-family: punctuation, "PingFangSC-Regular", "Microsoft Yahei", "sans-serif";

    }

    .context_article{
        margin-left: 160px;
        width: 800px;
        margin-top: 60px;
        background: white;
        margin-bottom: 20px;
        padding: 0 30px 30px 30px;
    }

    .mainframe {
        width: 800px;
        height: 600px;
        margin: 20px auto;
        background-color: white;
        color: #EDEFF0;
        font-family: Tahoma, Helvetica, Arial, sans-serif;
    }

    .title {
        width: 600px;
        height: 52px;
        margin: 0 auto;
        line-height: 52px;
        font-family: 微软雅黑, Tohoma;
        font-size: 14px;
        color: black;
    }

    .message {
        width: 600px;
        height: 35px;
        margin: 0 auto;
        line-height: 35px;
        color: black;
        border-bottom: 2px solid #999999;
        font-family: 微软雅黑, Tohoma;
    }

    .info {
        width: 600px;
        height: 100px;
        color: black;
        margin: 0 auto;
        line-height: 40px;
        border-bottom: 2px solid #999999;
        font-size: 12px;
    }

    .content {
        width: 600px;
        height: 100px;
        word-break: break-all;
        margin: 0 auto;
        border: 2px solid #999999;
        border-top: 0px;
        background-color: #e2e2e2;
        color: black;
        text-indent: 2px;
        font-size: 14px;
    }

    .subbtn {
        width: 72px;
        height: 28px;
        line-height: 28px;
        font-size: 14px;
        border-radius: 2px;
        background-color: black;
        color: #FFFFFF;
        border: 1px solid #3686B3;
        cursor: pointer;
        margin-left: 100px;
        margin-bottom: 50px;
    }

    .numofmessage {
        width: 600px;
        height: 20px;
        color: black;
        margin: 0 auto;
        line-height: 20px;
        border-bottom: 2px solid #999999;
        font-family: 微软雅黑, Tohoma;
    }

    .msgFrame {
        width: 600px;
        height: 100%;
        margin: 0 auto;
    }

    h3 {
        padding-top: 20px;
    }

</style>


<!-- SCRIPTS -->
<script src="support/js/jquery.js"></script>
<script src="support/js/bootstrap.min.js"></script>
<script src="support/js/smoothscroll.js"></script>
<script src="support/js/jquery.magnific-popup.min.js"></script>
<script src="support/js/magnific-popup-options.js"></script>
<script src="support/js/wow.min.js"></script>
<script src="support/js/custom.js"></script>

</body>
</html>