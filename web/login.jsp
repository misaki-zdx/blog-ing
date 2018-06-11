<%--
  Created by IntelliJ IDEA.
  User: Misaki
  Date: 2018/6/6
  Time: 15:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>登陆注册</title>
    <link rel="stylesheet" href="support/layui-v2.3.0-rc1/css/layui.css">
    <link rel="stylesheet" href="support/css/login.css">
</head>
<script src="support/layui-v2.3.0-rc1/layui.all.js"></script>
<script src="support/js/login.js"></script>
<body>
<div class="form">
    <div id="landing">登陆</div>
    <div id="registered">注册</div>
    <div class="fix"></div>
    <div id="landing-content">
        <div id="photo"><img src="support/image/photo.jpg"/></div>
        <form method="post" action="#">
            <div class="inp"><input type="text" name="name" placeholder="用户名"/></div>
            <div class="inp"><input type="password" name="password" placeholder="密码"/></div>
            <input type="button" name="btn" value="登陆" class="login">
        </form>
        <div id="bottom"><span id="registeredtxt">立即注册</span><span id="forgotpassword">忘记密码</span></div>
    </div>
    <div id="registered-content">
        <form method="post"  action="#">
            <div class="inp"><input type="text" name="names" placeholder="请输入用户名"/></div>
            <div class="inp"><input type="password" name="password1" placeholder="请输入密码"/></div>
            <div class="inp"><input type="password" name="password2" placeholder="请再次输入密码"/></div>
            <div class="inp"><input type="text" name="email" placeholder="电子邮箱"/></div>
            <input type="button" name="btn2" value="注册" class="login">
        </form>
    </div>
</div>

</body>
</html>
