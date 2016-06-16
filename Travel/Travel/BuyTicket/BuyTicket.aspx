<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BuyTicket.aspx.cs" Inherits="Travel.BuyTicket" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="css/BuyTicket.css" rel="stylesheet" />
    <link href="../Head/Head.css" rel="stylesheet" />
    <link href="../Tail/Tail.css" rel="stylesheet" />
    <link href="../easyui/themes/default/easyui.css" rel="stylesheet" />
    <link href="../easyui/themes/icon.css" rel="stylesheet" />
    <link href="../easyui/demo/demo.css" rel="stylesheet" />
    <script src="../easyui/jquery.min.js"></script>
    <script src="../References/jQuery_UI/development-bundle/external/jquery.cookie.js"></script>
    <script src="../easyui/jquery.easyui.min.js"></script>
    <script>
        //function getUrlParam(name) {
        //    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)"); //构造一个含有目标参数的正则表达式对象
        //    var r = window.location.search.substr(1).match(reg);  //匹配目标参数
        //    if (r != null) return unescape(r[2]); return null; //返回参数值
        //}
        //var zi = getUrlParam("introduceid");
        var zi =17;   
        $(function () {
            var payfor;
            $.post("ByTkt.ashx", { action: "GetPrice", ticketID: zi }, function (data) {
                if (data == "") {
                    alert("失败");
                }
                else {
                    var dt = data.split('$');
                    payfor = dt[1];

                    $("#ticname").html(dt[0]);
                    var vp = document.getElementById("vp"); 
                    vp.value = payfor;

                }
            });
        }
        )
    </script>
</head>
<body>
    <!--#include virtual="../Head/Head.html"-->
    <form id="form1" runat="server">
        <div class="web">
            <div class="Title">预订信息</div>
            <div class="line"></div>
            <div class="Ticketintroduce">
                <div id="ticname"></div>
                <input type="text" readonly="true" id="updown" value="详情▼" class="packupdown" />
                <div class="details" id="detailsupdown">
                    提前预订时间  &nbsp<span class="wcolor">您最晚要在当天12：00前下单，请尽早预订，以免耽误行程</span><br />
                    费用包含&nbsp&nbsp&nbsp <span class="wcolor">梅岭竹海明珠门票一张</span><br />
                    兑换方式&nbsp&nbsp&nbsp <span class="wcolor">凭确认短信至梅岭竹海明珠景区售票处换票</span><br />
                    重要条款&nbsp&nbsp&nbsp <span class="wcolor">如需发票，请致电客服</span><br />
                    退改规则&nbsp&nbsp&nbsp <span class="wcolor">该产品一经预订，不支持退改</span><br />
                    <input class="packupdown" type="text" readonly="true" id="alignright" value="收起" />
                </div>
            </div>
            <div class="choosedate">
                <div class="date">
                    <div class="d2">
                        <span class="colorred">&nbsp&nbsp&nbsp* </span><span class="txtsty">日期:</span>
                    </div>
                    <input class="easyui-datetimebox" id="dt" value="" style="width: 200px; height: 28px; line-height: 28px;" />
                    <%-- <div class="d1">
                        <a href="" id="calendar"><img src="img/日历.png" /></a>
                    </div>--%>
                </div>

                <div class="number">
                    <div class="d1">
                        <span class="colorred">&nbsp&nbsp&nbsp* </span><span class="txtsty">数量:</span>

                    </div>
                    <div class="d2">
                        <input class="easyui-numberspinner" value="0" id="num" data-options="increment:1" style="width: 60px; height: 28px" />
                        <%--<a href="">
                            <img src="img/-.png" /></a>
                        <input class="num" type="text" readonly="true" placeholder="1" />
                        <a href="">
                            <img src="img/加.png" /></a>--%>
                    </div>

                </div>

                <div class="safe">
                    <div class="txtsty">添加保险：</div>
                    <div class="mgn">
                        <input type="radio" name="s" value="1￥15" /><span class="ncolor">￥15</span><span class="wcolor">/人平安景区门票保险 豪华型</span>&nbsp<a class="packupdown">详情</a><br />
                        <input type="radio" name="s" value="2￥10" /><span class="ncolor">￥10</span><span class="wcolor">/人平安景区门票保险 尊贵型</span>&nbsp<a class="packupdown">详情</a><br />
                        <input type="radio" name="s" value="3￥5" /><span class="ncolor">￥5</span><span class="wcolor">/人平安景区门票保险 经典型</span>&nbsp<a class="packupdown">详情</a><br />
                        <input type="radio" name="s" value="4￥3" /><span class="ncolor">￥3</span><span class="wcolor">/人平安景区门票保险 普通型</span>&nbsp<a class="packupdown">详情</a><br />
                        <input type="radio" name="s" value="5￥0" checked="checked" /><span class="wcolor">不需要保险</span>
                    </div>
                </div>

            </div>
            <div class="wcolor"><span class="Title">取票人/出行人信息</span> 您需要填写<span class="Title">1</span>个出行人信息</div>
            <div class="line"></div>
            <%--          <div class="Touristinfo">
                <span class="oftenuser">常用出行人 </span>
                <span class="users">
                    <asp:CheckBox ID="CheckBox1" runat="server" />赵虎</span>
                <span class="users">
                    <asp:CheckBox ID="CheckBox2" runat="server" />代瑶</span>

            </div>--%><br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <div class="line2"></div>
            <span class="oftenuser">出行人1（取票人、被保险人）</span><span class="wtype">接收确认信息</span>
            <div class="easyui-panel confirminfo" style="padding-left: 15%; height: 130px; border: none; padding-top: 20px;">
                <div class="info">
                    <span class="colorred">*</span>
                    中文姓名：<input id="N" class="easyui-validatebox textbox" data-options="required:true,validType:'length[3,10]'"
                        placeholder="中文姓名" style="width: 30%; height: 19px;" />&nbsp
                </div>
                <div class="info">
                    <span class="colorred">*</span>
                    身份证号：<input id="I" class="easyui-validatebox textbox" data-options="required:true,validType:'length[18,18]'"
                        placeholder="取票时必须出示身份证" style="width: 30%; height: 19px;" />
                </div>
                <div class="info">
                    <span class="colorred">*</span>
                    手机号码：<input id="P" class="easyui-validatebox textbox" data-options="required:true,validType:'length[11,11]'"
                        placeholder="接收确认信息" style="width: 30%; height: 19px;" />
                </div>
            </div>
            <div class="Touristagree">
                <asp:CheckBox ID="CheckBox3" runat="server" />同意 <a class="packupdown">梅岭国家级风景名胜区协议</a>

            </div>

        </div>
        <div class="payfor">
            <div class="pageend">
                <div class="money">订单总金额：<span class="Title">￥</span><span id="price" class="price">0</span></div>
                <a id="pay" class="pay">去支付</a>
                <input type="hidden" id="vp" />


            </div>
        </div>
        <script src="js/BuyTicket.js" type="text/javascript"></script>
        <script src="../Head/Head.js"></script>
    </form>
    <!--#include virtual="../Tail/Tail.html"-->
</body>
</html>
