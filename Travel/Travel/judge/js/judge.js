var count = 0;

function fusa(){
    $("#btnimage").click(function () {
        count = $("#images .item").size();
        $(".file-up").eq(count).click();
    });
};
$(function () {
    $(".file-up").live("change", function () {
        previewImages();
    });
});
function previewImages() {
    var file = $(".file-up").eq(count)[0].files[0];
    if (typeof FileReader != undefined) {
        var reader = new FileReader();
        reader.readAsDataURL(file);
        reader.onload = function () {
            addPreviewHtml(this.result);
        };
    }
}
function addPreviewHtml(src) {

    $("#btnimage").before("<div class='item'>" +
                            "<div class='im' style='background-image:url(" + src + ");'></div>" +
                            "<i class='icon-close ic'></i>" +
                         "</div>");
    var itemSize = $("#images .item").size();
    if (itemSize == 5) {
        $("#btnimage").hide();
        alert('已达到图片上限');
    }
    else {
        $("#btnimage").show();
    }
}
$(function () {
    $(".icon-close").live("click", function () {
        var index = $(this).parent(".item").index();
        $(this).parent().remove();
        $(".file-up").eq(index).remove();
        $(".file-up").each(function (id) {
            $(this).attr("name", "fileUp" + id);
        });
        $("#fileups").append("<input type='file'  capture='camera' accept='image/*' class='file-up' name='fileUp3' style='display:none;'/> ");
        var itemSize = $(".images-preview .item").size();
        if (itemSize != 4) {
            $("#btnimage").show();
        }
    });
});



function submitbox() {
    $('#sf').form(submitbox);
    $("#submitbox").click(
        function () {
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



