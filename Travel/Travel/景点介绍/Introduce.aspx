<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Introduce.aspx.cs" Inherits="游游旅游.Introduce" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="../References/jQuery_UI/development-bundle/external/jquery.cookie.js"></script>
    <script src="../References/jquery-1.8.3.min.js"></script>

    <script type="text/javascript" src="http://api.map.baidu.com/api
　　key=&v=1.1&services=true"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="Introduce.css" rel="stylesheet" />
    <link href="../Head/Head.css" rel="stylesheet" />
    <link href="../Tail/Tail.css" rel="stylesheet" />
    
    <link href="../References/icomoon/fontIconStyle.css" rel="stylesheet" />
    <link href="../References/Swiper-3.2.0/dist/css/swiper.css" rel="stylesheet" />
    <link href="gundong.css" rel="stylesheet" />

    
    <title>景点介绍</title>
</head>
<body>
    <!--#include virtual="../Head/Head.html"-->
       
    <form id="form1" runat="server">
    <div class="back">

        <%-- 景点简介 --%>
        <div class="jianjie ">
            <div class="tu">
                <div class="banner">
                  <div class="swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide swiper-slide-bg-1"></div>
                        <div class="swiper-slide swiper-slide-bg-2"></div>
                        <div class="swiper-slide swiper-slide-bg-3"></div>
                            </div>
                        <div class="swiper-pagination"></div>
                    </div>
                 </div>
               
            </div>

            <div class="wen">            
                <p><div class="FT"><%=SceneName%></div></p>

                <p class="c">
                    <img src="image/景点简介_03_02.gif" />月销<%=Data%>份&nbsp;<i class="PingFen"><%=Score%></i>分&nbsp;已有<%=Number%>人评价</p>
                <p><div class="GuanGuang">城市观光</div></p>           
                <p><font color="#808080">出&nbsp;发&nbsp;地:</font>韩国&middot;首尔</p>
                <p><font color="#808080">游玩时长&nbsp;：</font>10小时&nbsp;&nbsp;<font color="#808080">服务语言：</font>中文、韩语</p>
                <p><img src="image/景点简介_03.gif" /> <a href="../BuyTicket/BuyTicket.aspx" class="Yuyue">立刻预约</a></p>
                <div class="XX">
                    
                    <div class="DW">玩乐亮点</div>
                    <p>
                        &nbsp;<img src="image/景点简介-恢复的_03.gif" /></p>
                    <p>
                       &nbsp;<img src="image/景点简介-恢复的_03.gif" /></p>
                    <p>
                        &nbsp;<img src="image/景点简介-恢复的_03.gif" /></p>

                    
                </div>

            </div>  
        </div>
      


        <%-- 快乐预订 --%>

         <div class="book k">
             <p>玩乐预定</p>
             <table>
                 <tr class="tr1">
                     <td class="td1">&nbsp;名称</td>
                     <td class="td2">服务语言</td>
                     <td class="td3">活动时长</td>
                     <td class="td4">市场价</td>
                     <td class="td5">携程价</td>
                     <td class="td6">支付方式</td>
                     <td class="td7">7</td>
                 </tr>
                 <tr class="tr2">
                     <td class="td1 FT4">首尔景福宫+仁寺宫市区经典一日游</td>
                     <td class="td2">
                         <select class ="LB">  
                              <option value ="">中文</option>  
                              <option value ="">韩语</option>  
                             <option value ="">英语</option>  
                             <option value ="">德语</option>   
                         </select>
                     </td>
                     <td class="td3 FT4 ">10小时</td>
                     <td class="td4 FT4">
                         <img src="image/景点简介-恢复_03.gif" / width="20px" height="20px">180</td>
                     <td class="td5">
                         <img src="image/景点简介_03.gif" /></td>
                     <td class="td6">
                         <select class ="LB">  
                              <option value ="">支付宝</option>  
                              <option value ="">银行卡</option>  
                         </select>
                     </td>
                     <td class="td7"><div class="YD">预定</div></td>
                 </tr>
             </table>

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
            <p><a name="A1"><img src="image/景点简介222_03.gif" /></a></p>

            <%--<p> <i class="s">08:00</i>前往机场,由随团领队协助办理登机及出境手续。</p>--%>
                 <ul>
                      <li><i class="s">08:00</i>&nbsp;前往机场,由随团领队协助办理登机及出境手续。</li>
                      <li><i class="s">08:00</i>&nbsp;前往机场,由随团领队协助办理登机及出境手续。</li>
                      <li><i class="s">08:00</i>&nbsp;前往机场,由随团领队协助办理登机及出境手续。</li>
                      <li><i class="s">08:00</i>&nbsp;前往机场,由随团领队协助办理登机及出境手续。</li>
                 </ul>
             <%--玩了介绍--%>
             <p><a name="A2"><img src="image/景点简介222_06.gif" /></a></p>
             <p class="wl">关岛——亚太区最大的免税购物中心之一，是美国在西太平洋上主要的军事基地。它位于大洋洲，是美国最西边的领土，也是美国领土中最早迎接太阳的地方。在这块人口数只有18万的土地上，拥抱了湛蓝清澈的海水，绵延着细白柔软的沙滩，还有那些笑容如同灿烂阳光的原住民查莫洛人，这些可爱的因素让关岛成为大洋洲上一颗闪耀的钻石，它的观光魅力如同磁石，每年吸引成千上百万的人潮，虔诚朝拜似的来到此地享受它的阳光、海水、沙滩与风情！  
                      ★携程礼遇：购物返现金！关岛DFS旗下T广场购物即享2.5%现金返礼</p>
             <p class="wl"><img src="image/0景点简介_03%20-%20副本.gif" />&nbsp;<img src="image/0景点简介_05%20-%20副本.gif" /></p>
            
             <p class="wl">来到清迈，深入探索少有人知的古城秘境──安静的晨间风景、艺术家的风格都会、复古兰纳的旅宿、让人心驰神往的山林原生态。动静皆宜，古今兼美，奢侈享受大自然与艺术文化的心灵滋养，这样的清迈，怎么能不令人着迷？
                      清迈是泰国的文化重镇，亦是创意之都。入选UNESCO世界创意城市，周末夜市是大人气的城市活动，浓厚的艺文气息吸引无数游牧的创意工作者移居。慢步走逛，发现咖啡馆和独立小店，遇见令人惊喜的设计，感受清迈艺术家的风格生活，和他们创作出的古城新面貌</p>
             <p class="wl"><img src="image/0景点简介_09%20-%20副本.gif" />&nbsp;<img src="image/0景点简介_10%20-%20副本.gif" /></p>
            <%--交通指南--%>
             <p><a name ="A3"><img src="image/景点简介222_08.gif" /></a></p>
            
                <div id="dituContent" class="map">
                    <img src="image/z景点简介_03.gif" /></div>

            
            <p><a name="A4"><img src="image/景点简介222_10.gif" /></a>&nbsp;&nbsp;<i class="pf">4.9</i>分</p>
                <hr />     
            <div>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="image/景点简介a_03.gif" width="120" height="" />
                <p class="hp">好评好评好评好评好评好评好评好评好评好评好评好评好评好评好评好评好评好评</p>
                 </div>

        </div>
        <%-- 系统推荐 --%>
        <div class="XD">
            <a href="#">
                <img src="image/景点简介000_03.gif" /></a>
            <a class="#">
                <img src="image/景点简介000_05.gif" /></a>
            <a href="#">
                <img src="image/景点简介000_06.gif" /></a>
            <a href="#">
                <img src="image/景点简介000_07.gif" /></a>
            <a href="#">
                <img src="image/景点简介000_03.gif" /></a>
            <a class="#">
                <img src="image/景点简介000_05.gif" /></a>
            <a href="#">
                <img src="image/景点简介000_06.gif" /></a>
            <a href="#">
                <img src="image/景点简介000_07.gif" /></a>
        </div>
        
</div>

 
    </form>
     <!--#include virtual="../Tail/Tail.html"-->
    <script src="Introduce.js"></script>
    <script src="../References/Swiper-3.2.0/dist/js/swiper.js"></script>
    <script src="../References/jquery-2.1.1.min.js"></script>
    <script src="../References/jquery-1.8.3.min.js"></script>
    <script src="JScript1.js"></script>
</body>

</html>
<script type="text/javascript">
    $(".Yuyue").click(function () { 
        $.cookie('ticket', '2', { path: '/' });
        
    });
</script>