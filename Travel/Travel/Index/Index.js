﻿window.onload = function () {
    //alert(1);
    $.post(
             "Index.ashx",
              function (data) {
                  var arr = data.split('$');
                  var i = arr[0] - 1;
                  //alert('arr:' + arr[1]);
                  var t = JSON.parse(arr[1]);
                  while (i + 1 > 0) {
                      //处理评分
                      var d = t[i].d;
                      var s = t[i].s;
                      var e = t[i].e;
                      if (d == null || d == "")
                      {
                          d = "无";
                      }
                      if (s == null || s == "") {
                          s = "无";
                      }
                      if (e == null || e == "") {
                          e = "无";
                      }

                      $("#star").append("<div class='itemdiv'>"+
                      "<div class='imagediv' style=\"background-image: url('../景点新建/image/0景点简介_05 - 副本.gif');\"> </div>"+
                      "<div class='tipdiv'>"+t[i].name+"</div>"+
                      "<div class='taildiv'>"+
                      "<div class='spandiv'><span>描述</span><span class='spano'>"+d+"</span></div>"+
                      "<div class='spandiv'><span>服务</span><span class='spano'>"+s+"</span></div>"+
                      "<div class='spandiv'><span>体验</span><span class='spano'>"+e+"</span></div>"+
                      "<div class='moneydiv'>￥" + t[i].tmoney + "</div></div>" +
                      "<input type='text' value='"+t[i].scid+"'/></div>");
                      i = i - 1;
                  }
              });
}//加载结束

$(document).ready(function () {//点击开始----------------------------------
    $(".itemdiv").live("click", function () {//点击传ID值  到景点介绍页面       
        var value = $(this).children("input").val();
        alert(value);//获取ID   应当通过url传
    });
});
