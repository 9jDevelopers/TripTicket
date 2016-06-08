window.onload = function () {
    //alert(1);
    //function IsExistsFile(filepath) {
    //    var xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    //    xmlhttp.open("GET", filepath, false);
    //    xmlhttp.send();
    //    if (xmlhttp.readyState == 4) {
    //        if (xmlhttp.status == 200) return true; //url存在   
    //        else if (xmlhttp.status == 404) return false; //url不存在   
    //        else return false;//其他状态   
    //    }
    //}
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
                      var m = t[i].im;
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

                      if (m == null || m == "" ) {
                          m="m.jpg"
                      }
                      

                      $("#star").append("<div class='itemdiv'>"+
                      "<div class='imagediv' style=\"background-image: url('../景点新建/image/"+m+"');\"> </div>"+
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
    $(document).on("click",".itemdiv",function(){
    //    $("a").live("focus",function(){   //jquery1.8版本的方法  之后版本被删除
    //$(".itemdiv").live("click", function () {//点击传ID值  到景点介绍页面       
        var value = $(this).children("input").val();
        //alert(value);//获取ID   应当通过url传
        window.location = "../景点介绍/Introduce.aspx?selectid=" + value;
    });
});
