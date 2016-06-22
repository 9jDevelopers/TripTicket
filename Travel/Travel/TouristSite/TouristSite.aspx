<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TouristSite.aspx.cs" Inherits="Travel.TouristSite.TouristSite" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="css/TouristSite.css" rel="stylesheet" />
    <link href="../Head/Head.css" rel="stylesheet" />  
    <script src="../easyui/jquery.min.js"></script>
    <script src="../References/jQuery_UI/development-bundle/external/jquery.cookie.js"></script>
    <link href="../Tail/Tail.css" rel="stylesheet" />
    <%-----------------------------------------------------------%>
    <link href="../easyui/themes/default/easyui.css" rel="stylesheet" />
    <link href="../easyui/themes/icon.css" rel="stylesheet" />
    <link href="../easyui/demo/demo.css" rel="stylesheet" />
    <script src="../easyui/jquery.easyui.min.js"></script>
    <link href="Index.css" rel="stylesheet" />
</head>
<body>
    <!--#include virtual="../Head/Head.html"-->
    <form id="form1" runat="server">
    <div id="doc">
        <div id="bd">
            <div class="yi">
                <h2>旅游综合</h2>
                <ul>
                    <li><a href="http://www.ctrip.com/">携程旅游网</a></li>
                    <li><a href="http://www.mangocity.com/">芒果网</a></li>
                    <li><a href="http://www.elong.com/">艺龙旅行网</a></li>
                    <li><a href="http://www.mafengwo.cn/">蚂蜂窝</a></li>
                    <li><a href="http://www.cnta.com/">国家旅游网</a></li>
                    <li><a href="http://www.qunar.com/">去哪儿</a></li>
                    <li><a href="http://www.tuniu.com/">途牛旅游网</a></li>
                    <li><a href="http://www.ly.com/">同程网</a></li>
                    <li><a href="http://www.lvping.com/">驴评网</a></li>
                    <li><a href="http://www.lvmama.com/">驴妈妈旅游网</a></li>
                    <li><a href="http://www.qyer.com/">穷游网</a></li>
                    <li><a href="http://www.lotour.com/">乐途旅游网</a></li>
                    <li><a href="http://www.sozhen.com/">中国古镇网</a></li>
                    <li><a href="http://lvyou.baidu.com/">百度旅游</a></li>
                    <li><a href="http://www.cncn.com/">欣欣旅游网</a></li>
                    <li><a href="http://www.mipang.com/">米胖旅游网</a></li>
                    <li><a href="http://list.image.baidu.com/t/image_category/image_travel.html">风景名胜图片</a></li>
                    <li><a href="http://www.51766.com/">中国通用旅游</a></li>
                    <li><a href="http://www.kuxun.cn/">酷讯旅游网</a></li>
                    <li><a href="http://www.dili360.com/">中国国家地理</a></li>
                    <li><a href="http://www.tripadvisor.cn/">猫途鹰</a></li>
                    <li><a href="http://www.uzai.com/new">悠哉旅游网</a></li>
                    <li><a href="http://www.16fan.com/">十六番香港旅游</a></li>
                    <li><a href="http://www.niuzhu.com/">牛助出国网</a></li>
                    <li><a href="https://www.alitrip.com/">阿里旅行</a></li>
                    <li><a href="http://www.yikuaiqu.com/?welcome=1">一块去旅行网</a></li>
                    <li><a href="http://www.ilvxing.com/">爱旅行</a></li>
                    <li><a href="http://www.5fen.com/">五分旅游网</a></li>
                    <li><a href="http://www.baicheng.com/">白程旅行</a></li>
                </ul>
            </div>
            <div class="er">
                <h2>旅行社</h2>
                <ul>
                    <li><a href="http://www.aoyou.com/">中青旅遨游网</a></li>
                    <li><a href="http://www.ctsho.com/">中国旅行社总社</a></li>
                    <li><a href="http://www.cits.cn/">中国国际旅行社</a></li>
                    <li><a href="http://www.cct.cn/">中国康辉</a></li>
                    <li><a href="http://travel.jinjiang.com/">锦江旅游</a></li>
                    <li><a href="http://www.gzl.com.cn/">广之旅</a></li>
                    <li><a href="http://www.nanhutravel.com/">南湖国旅</a></li>
                    <li><a href="http://www.caissa.com.cn/">凯撒旅游</a></li>
                    <li><a href="http://www.springtour.com/">春秋旅行社</a></li>
                </ul>
            </div>
            <div class="san">
                <h2>酒店/机票</h2>
                <ul>
                    <li><a href="http://www.homeinns.com/">如家酒店</a></li>
                    <li><a href="http://www.jinjianginns.com/">锦江之星</a></li>
                    <li><a href="http://www.7daysinn.cn/">7天连锁酒店</a></li>
                    <li><a href="http://www.huazhu.com/">汉庭</a></li>
                    <li><a href="http://www.super8.com.cn/">速8酒店</a></li>
                    <li><a href="http://www.homeinns.com/motel">莫泰</a></li>
                    <li><a href="http://www.orangehotel.com.cn/">桔子酒店</a></li>
                    <li><a href="http://www.998.com/shtml/99/zh/index.html">格林豪泰</a></li>
                    <li><a href="http://www.yhachina.com/">国际青年旅舍</a></li>
                    <li><a href="http://www.feeyo.com/vflight/">飞友网航班动态</a></li>
                    <li><a href="http://flight.qunar.com/">去哪儿机票</a></li>
                    <li><a href="http://www.podinns.com/">布丁酒店</a></li>
                    <li><a href="http://jx.12580.com/jiujiang.htm">12580</a></li>
                    <li><a href="http://www.51you.com/">新华旅行网</a></li>
                    <li><a href="http://www.aifei.com/">爱飞国际机票</a></li>
                </ul>
            </div>
            <div class="si">
                <h2>自助户外游</h2>
                <ul>
                    <li><a href="http://bbs.8264.com/">驴友论坛</a></li>
                    <li><a href="http://bbs.fblife.com/">越野e族</a></li>
                    <li><a href="http://www.doyouhike.net/">磨房网</a></li>
                    <li><a href="http://bbs.8264.com/errortips.htm">中国户外资料网</a></li>
                    <li><a href="http://www.yododo.com/">旅多多</a></li>
                    <li><a href="http://www.traveler365.com/">驴友网</a></li>
                    <li><a href="http://www.biketo.com/">自行车旅行网</a></li>
                    <li><a href="http://www.lvye.cn/">绿野</a></li>
                    <li><a href="http://www.cnsfk.com/">沙发客网</a></li>
                    <li><a href="http://chanyouji.com/">蝉游记</a></li>
                </ul>
            </div>
            <div class="wu">
                <h2>交通地图</h2>
                <ul>
                    <li><a href="http://map.baidu.com/">百度地图</a></li>
                    <li><a href="http://lvyou.hao123.com/huoche">列车时刻查询</a></li>
                    <li><a href="http://www.google.cn/maps">谷歌地图</a></li>
                    <li><a href="http://tianqi.hao123.com/">天气预报</a></li>
                    <li><a href="http://www.trip8080.com/">长途汽车时刻查询</a></li>
                </ul>
            </div>
        </div>
    </div>
    </form>
    <!--#include virtual="../Tail/Tail.html"-->
</body>
</html>
