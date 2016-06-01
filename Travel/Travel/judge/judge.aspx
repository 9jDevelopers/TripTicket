<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="judge.aspx.cs" Inherits="Travel.judge.judge" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="css/judging.css" rel="stylesheet" />
    <link href="../Head/Head.css" rel="stylesheet" />
    <link href="../Tail/Tail.css" rel="stylesheet" />
    <script src="js/judge.js"></script>
    <script src="../easyui/jquery.min.js"></script>
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
            var _text = "满意";
            var _default = "r1";
            var rs = document.getElementsByName("identity");
            for (var i = 0; i < rs.length; i++) {
                rs[i].onchange = function () {
                    console.log(this.parentElement.innerText);
                    console.log(this.value);
                    if (this.value != _default) alert("你没有选择满意，你选择的是" + this.parentElement.innerText);
                    else alert("你选择的是满意");
                };
            }
       };

       window.onload = function () {
           //var star = document.getElementById("fd");
           //var star_li = star.getElementsByTagName("li");
           //var star_word = document.getElementById("fd_word");
           //var result = document.getElementById("result");

           var star = document.getElementById("ju");
           var star_li = star.getElementsByTagName("li");
           var star_word = document.getElementById("ju_word");
           var result = document.getElementById("resulty");

           //var star = document.getElementById("dk");
           //var star_li = star.getElementsByTagName("li");
           //var star_word = document.getElementById("dk_word");
           //var result = document.getElementById("resultz");

           var i = 0;
           var j = 0;
           var len = star_li.length;
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

       }
    </script>

</head>
<body>
     <!--#include virtual="../Head/Head.html"-->

     <form id="sf" method="post" runat="server">
        <div class="da">

            <div class="yu">

                <div class="dh">
                    <div class="leftbox">
                        <div class="first">
                            <div class="ga"><a href="#">
                                <img src="images/er'r.jpg" /></a></div>
                        </div>
                        <div class="se">
                            <div class="tu"><a><img src="images/141-previous.png"/></a></div>
                            <div class="io"><a href="#">
                                <img class="" src="images/e.jpg" /></a></div>
                            <div class="io"><a href="#">
                                <img class="" src="images/er'r.jpg" /></a></div>
                            <div class="io"><a href="#">
                                <img class="" src="images/er.jpg" /></a></div>
                            <div class="io"><a href="#">
                                <img class="" src="images/f.jpg" /></a></div>
                            <div class="tu"><a><img src="images/147-next.png"/></a></div>
                        </div>
                    </div>

                    <div class="centerbox">
                        <!--产品介绍-->
                        <div>
                            <h3 id="yh"><a href="#">
                                <%--<%=titlename %>--%>   <%--【上海-台湾】台湾环岛7晚8日经典跟团游
                 （免费升等2晚五花酒店，囊括经典环岛路线）“去台湾，正当时！一去就爱上”【处境特卖】--%></a></h3>
                        </div>
                        <div>台湾经典环岛游，最全的环岛路线！</div>
                        <div>出发地：上海</div><%--<div id="hd"></div>--%>
                        <div>目的地：台湾  台北  高雄  花莲市</div>
                        <div>出行日期：2016.10.15</div>
                        <div class="price">￥ 3580起  6.8折  <s>￥5280</s></div>
                    </div>

                </div>

                <div class="rightbox">
                    <!--公司信誉简介-->
                    <div class="q">
                        <div>产品编号 43399</div>
                        <div>好评率 <span class="red">100%</span></div>
                        <div class="r">￥价格保证</div>
                        <div class="r">#推定保障</div>
                        <div class="r">*救援保障</div>
                        <div class="r">@7*24小时服务</div>
                        <hr />
                        <div>
                            <img src="images/20131211092723-939931253.jpg" /></div>
                        <div>扫一扫更优惠</div>
                        <hr />
                        <div>&分享   + 收藏</div>
                    </div>
                </div>

            </div>

            <!--表二-->
            <div class="downbox">
                <div class="s">认真写评价最多可获得优惠！</div>
                <div class="ty">
                    <h1>其他买家，需要你的建议哦！</h1>
                </div>

                <div class="sd">
                    <div class="e">
                        <div class="j1">
                            <div class="tx1">景点评价</div>
                            <div class="b1">
                                <input id="mement1" class="easyui-textbox" data-options="multiline:true" value="" style="width:100%;height:128px" placeholder="请留下你的评价"/>
                               </div>
                        </div>
                        <div class="j2">
                            <div class="tx2">服务评价</div>
                            <div class="b2">
                                <input id="mement2" class="easyui-textbox" data-options="multiline:true" value="" style="width:100%;height:88px" placeholder="请留下你的评价"/>
                            </div>
                        </div>
                        <div class="j3">
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

                    <div class="ee">
                        <div>
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

                        <div>
                            <div>卖家服务</div>
                            <div class="ji">
                                评分结果<span id="resulty"></span>
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

                        <div>
                            <div>物流服务</div>
                            <div class="zy">
                                评分结果<span id=""></span>
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

                    <div>
                        <div class="fu">
                            <div>
                                <h2>关于服务</h2>
                            </div>
                            <hr />
                            <div class="f">
                                <input type="text" placeholder="快递员：服务态度" />
                            </div>
                            <div class="f">
                                <input type="radio" name="identity" value="r1" checked="checked" />失望
                            </div>
                            <div class="f">
                                <input type="radio" name="identity" value="r2" />不满
                            </div>
                            <div class="f">
                                <input type="radio" name="identity" value="r3" />一般
                            </div>
                            <div class="f">
                                <input type="radio" name="identity" value="r4" />满意
                            </div>
                            <div class="f">
                                <input type="radio" name="identity" value="r5" />惊喜  
                            </div>
                        </div>
                    </div>
        
                <div class="qwe">
                    <div class="l"><input type="checkbox" />匿名评价</div>
                    <div class="submit"><a href="javascript:judge" class="red" id="submitbox" onclick="submitbox()">提交评价</a></div>
                </div>
            </div>
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
                        <option></option>
                        <option></option>
                        <option></option>
                        <option></option>
                    </select>
                </div>
            </div>
           </div>
       </form>
      <!--#include virtual="../Tail/Tail.html"-->
</body>
 
</html>
