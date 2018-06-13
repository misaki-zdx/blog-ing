var $, layer, form, element, laydate, laypage, laytpl, table, upload, carousel, flow, util;
layui.use(['jquery', 'layer', 'form', 'element', 'laydate', 'laypage', 'laytpl', 'table', 'upload', 'carousel', 'flow', 'util'], function () {
    //加载所需组件
    $ = layui.$;
    layer = layui.layer;
    form = layui.form;
    element = layui.element;
    laydate = layui.laydate;
    laypage = layui.laypage;
    laytpl = layui.laytpl;
    table = layui.table;
    upload = layui.upload;
    carousel = layui.carousel;
    flow = layui.flow;
    util = layui.util;
});

$(document).ready(function () {

    $(".form").slideDown(500);

    $("#landing").addClass("border-btn");

    $("#registered").click(function () {
        $("#landing").removeClass("border-btn");
        $("#landing-content").hide(500);
        $(this).addClass("border-btn");
        $("#registered-content").show(500);

    });

    $("#landing").click(function () {
        $("#registered").removeClass("border-btn");
        $(this).addClass("border-btn");

        $("#landing-content").show(500);
        $("#registered-content").hide(500);
    });

    $("input[name='btn']").click(function(){
        login();
    });
    $("input[name='btn2']").click(function () {
        register();
    })
});


function login() {
    var name = $("input[name='name']").val();
    var password=$("input[name='password']").val( );
    if(name.length==0){
        layer.tips('还没有填写账号了。',':input[name="name"]', {
            tips: [1, '#3595CC'],
            time: 1000
        });

    }else if(password.length==0){
        layer.tips('还没有填写密码了。',':input[name="password"]', {
            tips: [1, '#3595CC'],
            time: 1000
        });

    }else{
        $.ajax({
            type:"post",
            url:"login.action",
            data:{
                'name':name,
                'password':password
            },
            dataType:'json',
            success:function(data){
                var state = data.state;
               switch (state){
                   case 'error':
                       layer.msg('密码或者账号错误!');
                       break;
                   case 'success':
                       window.location.href ='index.jsp';
                       break;
                   case 'login':
                       window.location.href ='index.jsp';
                       break;
               }
            },
            error:function () {
                layer.msg("系统开了个差！")
            }
        })
    }
}
function register() {
    var length1 = $("input[name='names']");
    var length2 = $("input[name='password1']");
    var length3 = $("input[name='password2']");
    var length4 = $("input[name='email']");
    var regPassword= /^\w{6,18}$/;
    var regEamil=/^(\w-*\.*)+@(\w-?)+(\.\w{2,})+$/;
    if (length1.val().length == 0) {
        layer.tips('这里还没有填写了。', ':input[name="names"]', {
            tips: [1, '#3595CC'],
            time: 1000
        });
        //return false;
    } else if (length2.val().length == 0) {
        layer.tips('这里还没有填写了。', ':input[name="password1"]', {
            tips: [1, '#3595CC'],
            time: 1000
        });
       // return false;
    } else if (length3.val().length == 0) {
        layer.tips('这里还没有填写了。', ':input[name="password2"]', {
            tips: [1, '#3595CC'],
            time: 1000
        });
        //return false;
    } else if (length4.val().length == 0) {

        layer.tips('这里还没有填写了。', ':input[name="email"]', {
            tips: [1, '#3595CC'],
            time: 1000
        });
        //return false;
    }else if(length1.val().length<2||length1.val().length>10){
        layer.tips('用户名只能为2-10位哦！', ':input[name="names"]', {
            tips: [1, '#3595CC'],
            time: 1000
        });
        //return false;
    }else if (!regPassword.test(length2.val())) {
        layer.tips('密码只能由6-18位的数字、字母、下划线组成哦！', ':input[name="password1"]', {
            tips: [1, '#3595CC'],
            time: 1000
        });
        //return false;
    } else if (length2.val() != length3.val()) {
        layer.tips('密码不一致哦。', ':input[name="password1"]', {
            tips: [1, '#3595CC'],
            time: 1000
        });
        //return false;
    }else if (!regEamil.test(length4.val())) {
        layer.tips('邮箱格式不正确哦！',':input[name="email"]',{
            tips: [1, '#3595CC'],
            time: 1000
        });
        //return false;
    }else{
        $.ajax({
            type:"post",
            url:"register.action",
            data:{
                'name':length1.val(),
                'password':length2.val(),
                'email':length4.val()
            },
            dataType:'json',
            success:function(data){
                var state = data.state;
                switch (state){
                    case 'OK':
                        layer.msg("注册成功！");
                        length1.val('');
                        length2.val('');
                        length3.val('');
                        length4.val('');
                        break;
                    case 'NO':
                        $("input[name='names']").focus();
                        layer.msg("此用户名已注册！");
                        break;
                }
            },
            error:function () {
                alert("服务器出了些问题!")
            }
        })
    }
}
