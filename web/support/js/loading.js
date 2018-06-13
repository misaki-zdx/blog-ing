$(function () {
    $.ajax({
        type: "post",
        url: "loading.action",
        data: {"limit": "1"},
        dataType:"post",
        success: function (data) {

        }
    });
    $('#s').click(function () {
        $.ajax({
            type: "get",
            url: "loading.action",
            data: {"limit": 2}
        })
    });
    $('#x').click(function () {
        $.ajax({
            type: "get",
            url: "loading.action",
            data: {"limit": 3}
        })
    });
})
