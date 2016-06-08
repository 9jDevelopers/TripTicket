<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="judge.aspx.cs" Inherits="Travel.judge.judge" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="css/judging.css" rel="stylesheet" />
    <link href="../Head/Head.css" rel="stylesheet" />
    <link href="../Tail/Tail.css" rel="stylesheet" />
    <script src="js/judge.js"></script>
    <script src="js/jquery-1.5.1.min.js"></script>
    <link href="../easyui/themes/default/easyui.css" rel="stylesheet" />
    <link href="../easyui/themes/icon.css" rel="stylesheet" />
    <link href="../easyui/demo/demo.css" rel="stylesheet" />
    <link href="../References/icomoon/fontIconStyle.css" rel="stylesheet" />
    <script src="../easyui/jquery.easyui.min.js"></script>
    <title></title>
    <style>
         .dt{width:300px; margin:10px auto; font:14px/1.5 arial;}
          /*tab*/
         #fd{overflow:hidden;}
         #fd li{float:left; width:20px; height:20px; margin:2px; display:inline; color:#999; font:bold 18px arial; cursor:pointer}
         #fd .act{color:#c00}
         #fd_word{width:80px; height:30px; line-height:30px; border:1px solid #ccc; margin:10px; text-align:center; display:none}

          .ji{width:300px; margin:10px auto; font:14px/1.5 arial;}
          /*tab*/
         #ju{overflow:hidden;}
         #ju li{float:left; width:20px; height:20px; margin:2px; display:inline; color:#999; font:bold 18px arial; cursor:pointer}
         #ju .act{color:#c00}
         #ju_word{width:80px; height:30px; line-height:30px; border:1px solid #ccc; margin:10px; text-align:center; display:none}

          .zy{width:300px; margin:10px auto; font:14px/1.5 arial;}
          /*tab*/
         #dk{overflow:hidden;}
         #dk li{float:left; width:20px; height:20px; margin:2px; display:inline; color:#999; font:bold 18px arial; cursor:pointer}
         #dk .act{color:#c00}
         #dk_word{width:80px; height:30px; line-height:30px; border:1px solid #ccc; margin:10px; text-align:center; display:none}
      
    </style>
    <script type="text/javascript">
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

       window.onload = function () {
           var star = document.getElementById("fd");
           var star_li = star.getElementsByTagName("li");
           var star_word = document.getElementById("fd_word");
           var result = document.getElementById("result");

           var sus = document.getElementById("ju");
           var sus_li = star.getElementsByTagName("li");
           var sus_word = document.getElementById("ju_word");
           var rey = document.getElementById("resulty");

           var tub = document.getElementById("dk");
           var tub_li = star.getElementsByTagName("li");
           var tub_word = document.getElementById("dk_word");
           var rtz = document.getElementById("resultz");

           var i = 0;
           var j = 0;
           var len = star_li.length;
           var v = 0;
           var s = 0;
           var ln = sus_li.length;
           var h = 0;
           var k = 0;
           var le = tub_li.length;
           var word = ['很差', '差', '一般', "好", "很好"]

           for (i = 0; i < len; i++) {
               star_li[i].index = i;
               star_li[i].onmouseover = function () {
                   star_word.style.display = "block";
                   star_word.innerHTML = word[this.index];
                   for (i = 0; i <= this.index; i++) {
                       star_li[i].className = "act";
                   }
               }
               star_li[i].onmouseout = function () {
                   star_word.style.display = "none";
                   for (i = 0; i < len; i++) {
                       star_li[i].className = "";
                   }
               }
               star_li[i].onclick = function () {
                   result.innerHTML = (this.index + 1) + "分";
               }
           }

               //for (i = 0; v < len; v++) {
               //    sus_li[v].index = v;
               //    sus_li[v].onmouseover = function () {
               //        sus_word.style.display = "block";
               //        sus_word.innerHTML = word[this.index];
               //        for (v = 0; v <= this.index; v++) {
               //            sus_li[v].className = "act";
               //        }
               //    }
               //    sus_li[v].onmouseout = function () {
               //        sus_word.style.display = "none";
               //        for (v = 0; v < ln; v++) {
               //            sus_li[v].className = "";
               //        }
               //    }
               //    sus_li[v].onclick = function () {
               //        rey.innerHTML = (this.index + 1) + "分";
               //    }
               //}

               //    for (h = 0; h < le; h++) {
               //        tub_li[h].index = h;
               //        tub_li[h].onmouseover = function () {
               //            tub_word.style.display = "block";
               //            tub_word.innerHTML = word[this.index];
               //            for (h = 0; h <= this.index;h++) {
               //                tub_li[h].className = "act";
               //            }
               //        }
               //        tub_li[h].onmouseout = function () {
               //            tub_word.style.display = "none";
               //            for (h = 0; h < le; h++) {
               //                tub_li[h].className = "";
               //            }
               //        }
               //        tub_li[h].onclick = function () {
               //            rtz.innerHTML = (this.index + 1) + "分";
               //        }
               //    }
       }
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
                             <img src="images/xing.jpg" /></div>
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
                             <div>描述相符</div>
                             <div class="dt">
                                 打分结果 
                                <span id="result"></span>
                                 <ul id="fd">
                                     <li>★</li>
                                     <li>★</li>
                                     <li>★</li>
                                     <li>★</li>
                                     <li>★</li>
                                 </ul>
                                 <div id="fd_word">一般</div>
                             </div>
                         </div> 
                        <div class="fji">
                            <div>卖家服务</div>
                            <div class="ji">
                                评分结果<span id="rey"></span>
                                <ul id="ju">
                                    <li>★</li>
                                    <li>★</li>
                                    <li>★</li>
                                    <li>★</li>
                                    <li>★</li>
                                </ul>
                                <div id="ju_word">一般</div>
                            </div>
                        </div> 
                        <div class="fji">
                            <div>物流服务</div>
                            <div class="zy">
                                评分结果<span id="rtz""></span>
                                <ul id="dk">
                                    <li>★</li>
                                    <li>★</li>
                                    <li>★</li>
                                    <li>★</li>
                                    <li>★</li>
                                </ul>
                                <div id="dk_word">一般</div>
                            </div>
                        </div> 
                     </div>
                 </div>

                 
                <div class="du">
                    <div class="gup">点评</div>
                    <div class="sui">
                                <div class="j1">
                                    <div class="tx1">景点评价</div>
                                    <div class="b1">
                                        <input id="mement1" class="easyui-textbox" data-options="multiline:true" value="" style="width: 100%; height: 128px" placeholder="请留下你的评价" />
                                    </div>
                                </div>
                                <div class="j2">
                                    <div class="tx2">服务评价</div>
                                    <div class="b2">
                                        <input id="mement2" class="easyui-textbox" data-options="multiline:true" value="" style="width: 100%; height: 88px" placeholder="请留下你的评价" />
                                    </div>
                                </div>
                        <div><h4>你已输入0字，50字以上的优质点评将获得100积分！</h4></div>
                    </div>
                </div>

                 <div class="lp">
                     <div class="gup">上传图片</div>
                     <div class="sui">  
                         <div class="tx3">晒图片</div>
                           <div class="b3">
                                <a id="btnimage"  class="icon-googleplus" style="margin-left:20px;" onclick="test()"></a> 
                                 <div id="fileups">         
                                   <input type="file" class="file-up" name="btnim0" style="display:none;"/>
                                   <input type="file" class="file-up" name="btnim1" style="display:none;"/>
                                   <input type="file" class="file-up" name="btnim2" style="display:none;"/>
                                   <input type="file" class="file-up" name="btnim3" style="display:none;"/>
                                   <input type="file" class="file-up" name="btnim4" style="display:none;"/>
                                 </div>
                            <div class="pic">0/5</div>
                       </div>
                     </div>
                 </div>

               <div class="qwe">
                 <div class="dy"><div class="submit"><a href="javascript:judge" class="red" id="submitbox" onclick="submitbox()">提交评价</a></div></div>
             </div>

            <!--表三-->

            <div class="boxthree">
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
              </div>
             </div>
           </div>
       </form>
   
      <!--#include virtual="../Tail/Tail.html"-->
</body>
 
</html>
