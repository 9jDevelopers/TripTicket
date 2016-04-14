var count = 0;
 

 function test()
 {
     count = $("#images .item").size();    

     $(".file-up").eq(count).click();
     
 }
 //$(function () {
 //    $(".file-up").live("change", function () {
 //        previewImages();
 //    });
 //});
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
                             "<i class='icon-close ic' onclick='closeImage(this)'></i>" +
                          "</div>");
     var itemSize = $("#images .item").size();
     if (itemSize == 4) {
         $("#btnimage").hide();
         alert('已达到图片上限');
     }
     else {
         $("#btnimage").show();
     }
 }
 function closeImage(obj) {
   
     var index = $(obj).parent(".item").index();
  
     $(obj).parent().remove();
     $(".file-up").eq(index).remove();
     $(".file-up").each(function (id) {
         $(this).attr("name", "fileUp" + id);
     }
     );
     $("#fileups").append("<input type='file'  capture='camera' accept='image/*' class='file-up' onchange=' previewImages()' name='fileUp3' style='display:none;'/> ");
     var itemSize = $(".images-preview .item").size();
     if (itemSize != 4) {
         $("#btnimage").show();
     }
 }



 $(function () {
     $("#btnEnter").click(function () {
         var formData = new FormData($("#frmMain")[0]);
         $.ajax({
             cache: true, //缓存
             type: "POST", //提交方式post get
             url: "Handler_goods.ashx",
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