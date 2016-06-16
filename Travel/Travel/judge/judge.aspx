<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="judge.aspx.cs" Inherits="Travel.judge.judge" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="css/judging.css" rel="stylesheet" />
    <link href="../Head/Head.css" rel="stylesheet" />
    <link href="../Tail/Tail.css" rel="stylesheet" />
    <link href="css/star-rating.css" rel="stylesheet" />
    <link href="css/star-rating.min.css" rel="stylesheet" />
    <script src="js/judge.js"></script>
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet"/>
    <script src="js/jquery.min.js"></script>
    <link href="css/star-rating.css" rel="stylesheet" />
    <script src="js/star-rating.js"></script>
    <script src="js/star-rating.min.js"></script>
    <link href="../easyui/themes/default/easyui.css" rel="stylesheet" />
    <link href="../easyui/themes/icon.css" rel="stylesheet" />
    <link href="../easyui/demo/demo.css" rel="stylesheet" />
    <link href="../References/icomoon/fontIconStyle.css" rel="stylesheet" />
    <script src="../easyui/jquery.easyui.min.js"></script>
    <title></title>
    <style> 
         /*.dt{width:300px; margin:10px auto; font:14px/1.5 arial;}           注释的为星星评分的另一种方式。
          tab
         #fd{overflow:hidden;}
         #fd li{float:left; width:20px; height:20px; margin:2px; display:inline; color:#999; font:bold 18px arial; cursor:pointer}
         #fd .act{color:#c00}
         #fd_word{width:80px; height:30px; line-height:30px; border:1px solid #ccc; margin:10px; text-align:center; display:none}*/
 
    </style>

    <script>
      jQuery(document).ready(function () {
        $(".rating-kv").rating();
      });
   </script>
   
   
    <script type="text/javascript">
            if (data != "") 
            {
                var ns=data.split("$");
                $("#yh").text(ns[0]);
                $("#hd").html(ns[1]);
            }
      
        $(function () {
            var id = 1;
            $.post("judge.ashx", { jgid: id }, function (data)          //jgid命名
            {
                if (data != "") {
                    var ns=data.split("$");
                    $("#yh").text(ns[0]);
                    $("#hd").html(ns[1]);
                }
                else {
                    alert();
                }
            })
        })

        $('#submitbox').click(
           function () {
               $.post("judge.ashx",
                {
                    i:$("#input-21").val()
                },
                      function (data) {
                          if (data == "1") {
                              alert("提交成功");
                          }
                          else {
                              alert("提交失败");
                          }
                      }
                   );

       //window.onload = function () {
       //    var star = document.getElementById("fd");
       //    var star_li = star.getElementsByTagName("li");
       //    var star_word = document.getElementById("fd_word");
       //    var result = document.getElementById("result");


       //    var i = 0;
       //    var j = 0;
       //    var len = star_li.length;
       //    var word = ['很差', '差', '一般', "好", "很好"]

       //    for (i = 0; i < len; i++) {
       //        star_li[i].index = i;
       //        star_li[i].onmouseover = function () {
       //            star_word.style.display = "block";
       //            star_word.innerHTML = word[this.index];
       //            for (i = 0; i <= this.index; i++) {
       //                star_li[i].className = "act";
       //            }
       //        }
       //        star_li[i].onmouseout = function () {
       //            star_word.style.display = "none";
       //            for (i = 0; i < len; i++) {
       //                star_li[i].className = "";
       //            }
       //        }
       //        star_li[i].onclick = function () {
       //            result.innerHTML = (this.index + 1) + "分";
       //        }
       //    } 
       //}
    </script>
    
</head>
<body>
     <!--#include virtual="../Head/Head.html"-->

     <form id="sf" method="post" runat="server">
        <div class="da">
            <div class="yu">

                <div class="gh">
                    <div class="dii">
                        <!--产品介绍-->
                        <div class="ij">
                            <img src="img/u=3895186919,2942111945&fm=21&gp=0.jpg"/>
                        </div>
                        <div class="kl">
                            <div>
                                <h1 id="yh"><a href="#">
                                    <%--<%=titlename %>--%>  <%--黄山--%></a></h1>
                            </div>
                            <div class="kj">出发地：上海</div>
                            <%--<div id="hd"></div>--%>
                            <div class="kj">日期：2016.1.15</div>
                        </div>
                    </div>
                </div>

                <div class="hf"><h2>请留下你的评价！</h2></div>

                 <div class="fh">
                     <div class="gup">总体评价</div>
                     <div class="sui"> 
                         <div class="fji">
                             <div class="lk">
                                 <h4>描述相符</h4>
                             </div>
                             <div class="ji">
                                 <div class="ddd">
                                     <input id="input-24b" value="2.4" type="number" class="rating" min="0" max="5" step="0.2" data-size="lg" />
                                 </div>
                             </div>
                           <%--  <div class="dt">
                                 <div>评分结果 <span id="result"></span></div>
                                 <div class="ddd">
                                     <ul id="fd">
                                         <li>★</li>
                                         <li>★</li>
                                         <li>★</li>
                                         <li>★</li>
                                         <li>★</li>
                                     </ul>
                                     <div id="fd_word">一般</div>
                                 </div>
                             </div>--%>
                         </div> 

                         <div class="fji">
                             <div class="lk">
                                 <h4>卖家服务</h4>
                             </div>
                             <div class="ji">
                                 <div class="ddd">
                                     <input id="input-21b" value="2.4" type="number" class="rating" min="0" max="5" step="0.2" data-size="lg" />
                                 </div>
                             </div>
                         </div> 

                         <div class="fji">
                             <div class="lk">
                                 <h4>物流服务</h4>
                             </div>
                             <div class="=ji">
                                 <div class="ddd">
                                     <input id="input-21" value="2.5" type="number" class="rating" min="0" max="5" step="0.2" data-size="lg" />
                                 </div>
                             </div>
                         </div>

                     </div>
                 </div>

                 
                <div class="du">
                    <div class="gup">点评</div>
                    <div class="sui">
                                <div class="j1">
                                    <div><h3>景点评价</h3></div>
                                    <div class="b1">
                                        <input id="mement1" class="easyui-textbox" data-options="multiline:true" value="" style="width: 100%; height: 100px" placeholder="请留下你的评价" />
                                    </div>
                                </div>
                                <div class="j2">
                                    <div><h3>服务评价</h3></div>
                                    <div class="b2">
                                        <input id="mement2" class="easyui-textbox" data-options="multiline:true" value="" style="width: 100%; height:60px" placeholder="请留下你的评价" />
                                    </div>
                                </div>
                        <div class="dui"><h4><%--你已输入0字，--%>50字以上的优质点评将获得100积分！</h4></div>
                    </div>
                </div>

                 <div class="lp"> 
                     <div class="gup">上传图片</div>
                     <div class="sui">  
                         <div class="tx3"><h4>晒图片</h4></div>
                           <div class="b3">
                                <div id="btnimage"  class="icon-googleplus" style="margin-left:20px;" onclick="test()"> </div>
                                 <div id="fileups">         
                                   <input type="file" class="file-up" name="btnim0" style="display:none;"/>
                                   <input type="file" class="file-up" name="btnim1" style="display:none;"/>
                                   <input type="file" class="file-up" name="btnim2" style="display:none;"/>
                                   <input type="file" class="file-up" name="btnim3" style="display:none;"/>
                                   <input type="file" class="file-up" name="btnim4" style="display:none;"/>
                                 </div>
                           <%-- <div class="pic">0/5</div>--%>
                       </div>
                     </div>
                 </div>

               <div class="qwe">
                 <div class="dy"><div class="submit"><a href="javascript:judge" class="red" id="submitbox" onclick="submitbox()">提交评价</a></div></div>
             </div>

            <!--表三-->

          <%--  <div class="boxthree">
                <div class="l">
                    <input type="checkbox" />
                    全部</div>
                <div class="l">
                    <input type="checkbox" />追评（12）</div>
                <div class="l">
                    <input type="checkbox" />图片（18）</div>
                <div class="c">
                    <input type="checkbox" />有内容</div>
                <div class="c">
                    <select>
                        <option>按默认</option>
                        <option>服务评价</option>
                        <option>产品评价</option>
                        <option>服务态度</option>
                        <option></option>
                    </select>
                </div>
              </div>--%>
             </div>
           </div>
       </form>
    <script>
        function submitbox() {
          alert($("#input-24b").val()); 
          alert($("#input-21b").val());
          alert($("#input-21").val());
      }
      </script>
      <!--#include virtual="../Tail/Tail.html"-->
</body>
 
</html>
