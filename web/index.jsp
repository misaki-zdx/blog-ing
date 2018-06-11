<%--
  Created by IntelliJ IDEA.
  User: Misaki
  Date: 2018/6/11
  Time: 9:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="UTF-8">

    <title>首页</title>
    <link rel="stylesheet" href=support/css/bootstrap.min.css">
    <link rel="stylesheet" href=support/css/animate.css">
    <link rel="stylesheet" href=support/css/magnific-popup.css">
    <link rel="stylesheet" href=support/css/font-awesome.min.css">

    <!-- 主要 css -->
    <link rel="stylesheet" href=support/css/style.css">

    <style>
        .context-all{
            text-align: center;
            margin-top: 85px;
            background:#F2F2F5 ;
        }
        .context{
            margin-left: 160px;
            width: 800px;
            height: 200px;
            margin-top: 40px;
            background: white;
            margin-bottom:40px;

        }
        .title{
            padding-top: 30px;
        }
        .hr_1{
            width:600px;
            border-top-width: 2px;
            color:black;
        }
        .title :hover{
            font-size:26px;

        }

    </style>
</head>
<body data-spy="scroll" data-target=".navbar-collapse" data-offset="50">

<!-- 导航 -->
<div class="navbar custom-navbar navbar-fixed-top" role="navigation">
    <div class="container">

        <div class="navbar-header">
            <button class="navbar-toggle">
            </button>
            <!-- lOGO  -->
            <a href="index.html" class="navbar-brand">Misaki</a>
        </div>

        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav navbar-right">
                <li><a class="smoothScroll" href="#home">主页</a></li>
                <li><a class="smoothScroll" href="#about">目录</a></li>
                <li><a class="smoothScroll" href="#work">类型</a></li>
                <li><a class="smoothScroll" href="#contact">关于</a></li>
            </ul>
        </div>

    </div>
</div>

<!-- 内容 -->


<div class="context-all">
    <div class="container">
        <div class="context">
            <div class="title">
                <a href="#"><h3>钢铁是怎样炼成的</h3></a>
            </div>
            <hr class="hr_1"/>
            <div><span>保尔柯察金</span>&nbsp;&nbsp;<span>1987.2.23</span></div>
        </div>

        <div class="context">
            <div class="title">
                <a href="#"><h3>钢铁是怎样炼成的</h3></a>
            </div>
            <hr class="hr_1"/>
            <div><span>保尔柯察金</span>&nbsp;&nbsp;<span>1987.2.23</span></div>
        </div>

        <div class="context">
            <div class="title">
                <a href="#"><h3>钢铁是怎样炼成的</h3></a>
            </div>
            <hr class="hr_1"/>
            <div><span>保尔柯察金</span>&nbsp;&nbsp;<span>1987.2.23</span></div>
        </div>
    </div>



    <!-- SCRIPTS -->
    <script src=support/js/jquery.js"></script>
    <script src=support/js/bootstrap.min.js"></script>
    <script src=support/js/smoothscroll.js"></script>
    <script src=support/js/jquery.magnific-popup.min.js"></script>
    <script src=support/js/magnific-popup-options.js"></script>
    <script src=support/js/wow.min.js"></script>
    <script src=support/js/custom.js"></script>

</body>
</html>