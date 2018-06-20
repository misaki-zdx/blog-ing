$(function () {
   load(1);
    $('#s').click(function () {
       load(2)
    });
    $('#x').click(function () {
        load(3)
    });
  /*  $('h3').click(function () {
        var title = $(this).text();
        $.ajax({
            type:"post",
            url:"articleing.action",
            data:{"title":title},
            dataType:"json",
            success:function (data) {
                alert("ok")
            },
            error:function () {
                alert("erro")
            }
        })
    })*/
});
function load(x) {
    $.ajax({
        type: "post",
        url: "loading.action",
        data: {"limit": x},
        dataType:"json",
        success:function (data) {
           var re = data.list;
           var re2=data.pages;
           if(re!=""&&re2>=0) {
               var arr_title = document.getElementsByClassName("title");
               var arr_author = document.getElementsByClassName("author");
               var arr_type = document.getElementsByClassName("type");
                var arr_cont = document.getElementsByClassName("context");
                var arr_a= document.getElementsByClassName("a_");
                var x;
                for(x=0;x<arr_cont.length;x++){
                    arr_cont[x].style.display="none";
               }
               for (var i = 0; i < re.length; i++) {
                   arr_cont[i].style.display="";
                   $(arr_a[i]).attr('href','articleing.action?id='+re[i].id);
                   arr_title[i].innerHTML = re[i].title;
                   arr_author[i].innerHTML = re[i].author;
                   arr_type[i].innerHTML = re[i].type;
               }
           }else {
               alert("没有更多文章了！")
           }
        },
        error:function () {
            alert("cuowu")
        }
    });
}