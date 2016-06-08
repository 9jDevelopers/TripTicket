var count = 0;
function test() {
    //$("#btnimage").click(function () {}        //前台已有了点击事件，这里就不需要再次点击触发。
        count = $("#b3.item").size();
        $(".file-up").eq(count).click();

        //改变预览图片 
        var file = $(".file-up").eq(count)[0].files[0];
        if (typeof FileReader != undefined) {
            var reader = new FileReader();
            reader.readAsDataURL(file);
            reader.onload = function () {
                var imu = this.result;
                addPreviewHtml(this.result);
            }
        }
}

function addPreviewHtml(src) {
    $("#btnimage").before("<div class='item'>" +
                            "<div class='im' style='background-image:url(" + src + ");'></div>" +
                            "<i class='icon-close ic'></i>" + "</div>");
    var itemSize = $("#images.item").size();
    if (itemSize == 5) {
        $("#btnimage").hide();
        alert('已达到图片上限');
    }
    else {
        $("#btnimage").show();
    }
}                                         //显示图片。

$(function () {
    $(".icon-close").live("click", function () {
        var index = $(this).parent(".item").index();
        $(this).parent().remove();
        $(".file-up").eq(index).remove();
        $(".file-up").each(function (id) {
            $(this).attr("name", "fileUp" + id);
        });
        $("#fileups").append("<input type='file'  capture='camera' accept='image/*' class='file-up' name='fileUp4' style='display:none;'/> ");
        var itemSize = $(".images-preview .item").size();
        if (itemSize != 5) {
            $("#btnimage").show();
        }
    });
});




$(function () {
    $("#submitbox").click(function () {
        var formData = new FormData($("#sf")[0]);
        $.ajax({
            cache: true, //缓存
            type: "POST", //提交方式post get
            url: "judge.ashx",
            data: formData,
            async: true, //异步
            contentType: false, //避免jQuery将你的表格数据转换为字符串，导致提交失败。
            //默认值: "application/x-www-form-urlencoded"。发送信息至服务器时内容编码类型。默认值适合大多数情况。
            //上传文件的制定方式：multipart/form-data形式传递文件。
            processData: false, //是否转换信息//false避免数据转换成查询字符串
            error: function (request) {
                alert(request);
            },
            success: function (data) {
                alert(data);
            }
        });
    });
});


function submitbox() {
    $('#sf').form(submitbox);
    $("#submitbox").click(
        function () {
            alert(6);
            $.post(
                         "judge.ashx",
                 {
                     //Evaluationofgood: $("#mement1").val(),     把前台"#id名"赋给后台id
                     Evaluationofgood:$("#mement1").val(),       //前台的值传给后台
                     Evaluationservice:$("#mement2").val(),
                 },
                 function (data) {
                     if (data == "1") {
                         alert("提交成功");
                     }
                     else {
                         alert("提交失败");
                     }
                 }
                )
        }
        )
}







