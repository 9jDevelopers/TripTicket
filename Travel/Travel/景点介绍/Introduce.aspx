<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Introduce.aspx.cs" Inherits="游游旅游.Introduce" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    

    <link href="Introduce.css" rel="stylesheet" />
    <script src="Introduce.js"></script>
    <link href="../Head/Head.css" rel="stylesheet" />
    <link href="../Tail/Tail.css" rel="stylesheet" />
    
    <link href="../References/icomoon/fontIconStyle.css" rel="stylesheet" />
    <link href="../References/Swiper-3.2.0/dist/css/swiper.css" rel="stylesheet" />
    <link href="gundong.css" rel="stylesheet" />
       
    <script src="../References/Swiper-3.2.0/dist/js/swiper.js"></script>
    <script src="../References/jquery-1.8.3.min.js"></script>
    <link href="../easyui/themes/default/easyui.css" rel="stylesheet" />
    <link href="../easyui/themes/icon.css" rel="stylesheet" />
    <%--<link href="../easyui/demo/demo.css" rel="stylesheet" />--%>
    <script src="../easyui/jquery.easyui.min.js"></script>
    <script src="../References/jQuery_UI/development-bundle/external/jquery.cookie.js"></script>
    <script src="JScript1.js"></script>
    
    <title>景点介绍</title>
</head>
<body>
    <!--#include virtual="../Head/Head.html"-->
       
    <form id="form1" runat="server">
    <div class="back">

        <%-- 景点简介 --%>
        <div class="jianjie ">
            <div class="tu">             
               <img id="ig0" src=""/> 
               
            </div>

            <div class="wen">            <%--名字--%>
                <p><div class="FT" id="NSceneName"></div></p>

                <p class="c">                                                     <%--票名--%>
                <p ><div class="GuanGuang"><font color="#808080">门票&nbsp;：</font><i id="tickname"></i></div></p>           
                                                                  <%--游玩时间--%>
                <p class="bian"><font color="#808080">游玩时长&nbsp;：</font><i id="playtime"></i>&nbsp;&nbsp;<font color="#808080">服务语言：</font><i id="language"></i></p>
                <p class="bian"> <font color="#808080">票价&nbsp;：</font><i id="money"></i>&nbsp;元/人 <a class="Yuyue">立刻预约</a></p>
                <div class="XX">
                    
                    <div class="DW">玩乐亮点</div>
                    <p>
                        &nbsp;<img src="image/景点简介-恢复的_03.gif" /><i id="TexTmessage"></i></p>
                    
                </div>

            </div>  
        </div>
    
        </div>
 <%-- 详细信息 --%>
 <div class="F">         
        <div class="FD">
            <%-- 细节介绍 --%>
            <%-- 玩了介绍 --%>
            <%--交通指南--%>
            <div class="Q"> 
                <a href="#A1" style="text-decoration:none"><div class="XQ">行程路线</div></a>
                <a href="#A2" style="text-decoration:none"><div class="XQ">玩乐介绍</div></a>
                <a href="#A3" style="text-decoration:none"><div class="XQ">交通指南</div></a>
                <a href="#A4" style="text-decoration:none"><div class="XQ W">用户点评</div></a>
            </div>
            <%--<p><a name="A1"><img src="image/景点简介222_03.gif" /></a></p>--%>
            <%--<p> <i class="s">08:00</i>前往机场,由随团领队协助办理登机及出境手续。</p>--%>
                 <%--<ul>
                      <li><i class="s">08:00</i>&nbsp;前往机场,由随团领队协助办理登机及出境手续。</li>
                      <li><i class="s">08:00</i>&nbsp;前往机场,由随团领队协助办理登机及出境手续。</li>
                      <li><i class="s">08:00</i>&nbsp;前往机场,由随团领队协助办理登机及出境手续。</li>
                      <li><i class="s">08:00</i>&nbsp;前往机场,由随团领队协助办理登机及出境手续。</li>
                 </ul>--%>
             <%--玩了介绍--%>
             <p><a name="A2"><img src="image/景点简介222_06.gif" /></a></p>
             
            <p class="wl">关岛——亚太区最大的免税购物中心之一，是美国在西太平洋上主要的军事基地。它位于大洋洲，是美国最西边的领土，也是美国领土中最早迎接太阳的地方。在这块人口数只有18万的土地上，拥抱了湛蓝清澈的海水，绵延着细白柔软的沙滩，还有那些笑容如同灿烂阳光的原住民查莫洛人，这些可爱的因素让关岛成为大洋洲上一颗闪耀的钻石，它的观光魅力如同磁石，每年吸引成千上百万的人潮，虔诚朝拜似的来到此地享受它的阳光、海水、沙滩与风情！  
                      ★携程礼遇：购物返现金！关岛DFS旗下T广场购物即享2.5%现金返礼</p>
            
             <p class="wl"><img id="ig1" src="" />&nbsp;<img id="ig2" src="" /></p>
            
             <p class="wl">来到清迈，深入探索少有人知的古城秘境──安静的晨间风景、艺术家的风格都会、复古兰纳的旅宿、让人心驰神往的山林原生态。动静皆宜，古今兼美，奢侈享受大自然与艺术文化的心灵滋养，这样的清迈，怎么能不令人着迷？
                      清迈是泰国的文化重镇，亦是创意之都。入选UNESCO世界创意城市，周末夜市是大人气的城市活动，浓厚的艺文气息吸引无数游牧的创意工作者移居。慢步走逛，发现咖啡馆和独立小店，遇见令人惊喜的设计，感受清迈艺术家的风格生活，和他们创作出的古城新面貌</p>
             <p class="wl"><img id="ig3" src="" />&nbsp;<img id="ig4" src="" /></p>
            <%--交通指南--%>
             <p><a name ="A3"><img src="image/景点简介222_08.gif" /></a></p>
            
                <div id="dituContent" class="map">
                   
                </div>

            <%-- 点评 --%>
            <p><a name="A4"><img src="image/景点简介222_10.gif" /></a></p>
                     
            <div class="Elddiv">
                <dl class="ldl">              
                        <dd class="wg">文字</dd>
                        <dd class="mg">
                            <img class="mimg" src="../景点介绍/image/T){YV~N)7~3{3H]K}RUY($6_02.gif" />
                            <img class="mimg" src="../景点介绍/image/T){YV~N)7~3{3H]K}RUY($6_04.gif" />
                            <img class="mimg" src="../景点介绍/image/T){YV~N)7~3{3H]K}RUY($6_06.gif" />
                        </dd>
                        <dd><i class="user">user</i><i class="time">time</i></dd>     
                </dl>
        </div>
        
        
</div>

       <%--<div style="border:solid red 1px;width:100%;height:2100px;">--%>
           
       </div>
   
    </form>
     <!--#include virtual="../Tail/Tail.html"-->
 
</body>

</html>
<script type="text/javascript">
   

    //接受地址ID
        function getUrlParam(name) {
            var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)"); //构造一个含有目标参数的正则表达式对象
            var r = window.location.search.substr(1).match(reg);  //匹配目标参数
            if (r != null) return unescape(r[2]); return null; //返回参数值
        }
        
        //alert(getUrlParam("selectid")); 
        var zi = getUrlParam("selectid");
        //var zi = "2";
        if (zi != null)
        {
            $.post(
            "Introduce.ashx",
        {
            zi: getUrlParam("selectid")
        },
        function (data) {
           // alert(data);
            var a = $.parseJSON(data);
            
            $("#ig0").attr("src", "../景点新建/image/" + a.image0);
            $("#ig0").attr("width", "650");
            $("#ig0").attr("height", "450");            
            $("#NSceneName").html(a.NSceneName);
            $("#tickname").html(a.Tickname);
            $("#playtime").html(a.playtime);
            $("#language").html(a.language);
            $("#money").html(a.money);
            $("#TexTmessage").html(a.TeT);
            $("#ig1").attr("src", "../景点新建/image/" + a.ig1);
            $("#ig1").attr("width", "350");
            $("#ig1").attr("height", "350");

            $("#ig2").attr("src", "../景点新建/image/" + a.ig2);
            $("#ig2").attr("width", "350");
            $("#ig2").attr("height", "350");

            $("#ig3").attr("src", "../景点新建/image/" + a.ig3);
            $("#ig3").attr("width", "350");
            $("#ig3").attr("height", "350");

            $("#ig4").attr("src", "../景点新建/image/" + a.ig4);
            $("#ig4").attr("width", "350");
            $("#ig4").attr("height", "350");

            
        }    
    )
        }
       
        else
        {
            alert("请正确加载页面");
            location.href = "../Index/Index.aspx";
        }
        window.onload = pj;
        function pj() {
            
        $.post(
            "ReadEva.ashx",
            {
                a:"2"
            },
            function(data)
            {
               
                //alert(data);
                var arr = data.split('$');
                var i= arr[0];
                var t = JSON.parse(arr[1]);
               
                while (i > 0) {
                    
                    $(".Elddiv").append("<dl class='ldl'>" +
                        "<dd class='wg'>" + t[i - 1].judgetext + "</dd>" +
                        "<dd class='mg'>" +
                            "<img class='mimg' src='../景点介绍/image/T){YV~N)7~3{3H]K}RUY($6_02.gif'/>" +
                            "<img class='mimg' src='../景点介绍/image/T){YV~N)7~3{3H]K}RUY($6_04.gif' />" +
                            "<img class='mimg' src='../景点介绍/image/T){YV~N)7~3{3H]K}RUY($6_06.gif' />" +
                        "</dd>" +
                        "<dd><i class='user'>" + t[i - 1].usernamr + "</i><i class='time'>" + t[i - 1].judgedate + "</i></dd>" +
                "</dl>");
                    i = i - 1;
                }
            }
            )
        }
    $(".Yuyue").click(function () {
      
        
        
        //alert("123456");
        window.location.href = "../BuyTicket/BuyTicket.aspx?introduceid="+zi;
    });
    
</script>
