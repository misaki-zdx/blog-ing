<%@ page contentType="text/html;charset=UTF-8" %>
<%--引入jstl标签库--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%--创建上下文变量--%>
<c:set var="ctc" value="${pageContext.request.contextPath}"/>
<%--引入外部js--%>
<script src="${ctc}/support/layui-v2.3.0-rc1/layui.all.js"></script>
<script src="${ctc}/support/js/jquery-2.2.4.min.js"></script>
<%--引入外部css--%>

<link rel="stylesheet" href="${ctc}/support/layui-v2.3.0-rc1/css/layui.css">
<%--自定义全局样式--%>
<%--<style type="text/css">
    * {
        margin: 0;
        padding: 0;
        font-family: "微软雅黑";
    }
</style>--%>
<%--主动加载所有需要的模块--%>
<script type="text/javascript">
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
</script>