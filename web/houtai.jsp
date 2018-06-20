<%--
  Created by IntelliJ IDEA.
  User: Misaki
  Date: 2018/6/14
  Time: 22:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>后台管理</title>
    <style>
        body{
            background: #f2f2f5;
        }
        .contents{
            text-align: center;
            font-size: 20px;
            color: #575757;
            background: #ffffff;
            width: 200px;
            height: 200px;
            margin: 20px;
            line-height: 180px;
            border: solid 2px #113b0d;

        }
        #top{
            float: left;
        }
        #xia{
            float:left;
        }
        #content{
            position: absolute;
            left:50%;
            top:50%;
            margin-left:-200px;
            margin-top:-200px;
        }
        .contents :hover{
            background: #c7254e;
            color: white;
        }
        a{
            text-decoration:none;
        }
    </style>
</head>
<body>
<script src="support/js/jquery-2.2.4.min.js"></script>
<div id="content">
    <div id="top">
        <a href="getAllUser.action"><div class="contents">用户管理</div></a>
        <a href="#"><div  class="contents">文章管理</div></a>
    </div>
    <div id="xia">
        <a href="#"><div class="contents">评管理</div></a>
        <a href="#"><div  class="contents">退出</div></a>
    </div>
</div>
</body>
</html>
