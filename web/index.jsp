<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <%@include file="/WEB-INF/jsp/common/head.jsp" %>
    <title>登陆注册</title>
    <style type="text/css">
        .registerForm {
            width: 550px;
            margin: 0 auto;
        }
    </style>
    <script type="text/javascript">
        form.verify({
            username: function(value, item){ //value：表单的值、item：表单的DOM对象
                if(!new RegExp("^[a-zA-Z0-9_\u4e00-\u9fa5\\s·]+$").test(value)){
                    return '用户名不能有特殊字符';
                }
                if(/(^\_)|(\__)|(\_+$)/.test(value)){
                    return '用户名首尾不能出现下划线\'_\'';
                }
                if(/^\d+\d+\d$/.test(value)){
                    return '用户名不能全为数字';
                }
            }

            //我们既支持上述函数式的方式，也支持下述数组的形式
            //数组的两个值分别代表：[正则匹配、匹配不符时的提示文字]
            ,pass: [
                /^[\S]{6,12}$/
                ,'密码必须6到12位，且不能出现空格'
            ]
        });
        $(function () {
            form.render();
            form.on('submit(register-btn)', function (data) {
                $.ajax({
                    url: "test/register",
                    type: "POST",
                    data: data.field,
                    dataType: "json",
                    success: function (data) {
                        if (data.status === 0) {
                            layer.msg('注册成功<br/>' + data.msg);
                        } else {
                            layer.msg('注册失败<br/>' + data.msg);
                        }
                    },
                    error: function () {
                        layer.msg('请求失败');
                    }
                });
            });
        });
    </script>
</head>
<body>
<div class="registerForm">
    <div class="layui-form">
        <div class="layui-form-item">
            <label class="layui-form-label">昵称</label>
            <div class="layui-input-block">
                <input type="text" name="nickname"  lay-verify="required" placeholder="请输入昵称" autocomplete="off"
                       class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">密码</label>
            <div class="layui-input-inline">
                <input type="password" name="password" required lay-verify="required|pass" placeholder="请输入密码"
                       autocomplete="off"
                       class="layui-input">
            </div>
            <div class="layui-form-mid layui-word-aux">至少包括三项（[a-z],[A-Z],[0-9]</div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">性别</label>
            <div class="layui-input-block">
                <input type="radio" name="sex" value="保密" title="保密" checked>
                <input type="radio" name="sex" value="男" title="男">
                <input type="radio" name="sex" value="女" title="女">
            </div>
        </div>

        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn" lay-submit lay-filter="register-btn">立即提交</button>
            </div>
        </div>
    </div>
</div>
<%@include file="/WEB-INF/jsp/common/copyright.jsp" %>
</body>
</html>
