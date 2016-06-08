
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="css/Orderform.css" rel="stylesheet" />
    <link href="../Tail/Tail.css" rel="stylesheet" />
    <link href="../Head/Head.css" rel="stylesheet" />
    <link href="../easyui/themes/default/easyui.css" rel="stylesheet" />
    <link href="../easyui/themes/icon.css" rel="stylesheet" />
    <link href="../easyui/demo/demo.css" rel="stylesheet" />
    <script src="../easyui/jquery.min.js"></script>
    <script src="../easyui/jquery.easyui.min.js"></script>
    <script src="js/Orderform.js"></script>
    <script>
        $(function () {
            var id = 1;
            
            $.post("Orderform.ashx", { eid: id}, function (data) {
                if(data!="")
                {
                    var ofinfo = data.split('$');
                    var buytime = ofinfo[8].substring(0, 8);
                    var usetime = ofinfo[1].substring(0, 8);
                    $("#e1").html(ofinfo[0]);
                    $("#e2").html(buytime);
                    $("#e3").html(ofinfo[4]);
                    $("#e4").html(ofinfo[5]);
                    $("#e5").html(ofinfo[3]);
                    $("#e6").html(usetime);
                    $("#e7").html(ofinfo[6]);
                    $("#e8").html(ofinfo[7]);
                }

            });
        });
    </script>
</head>
<body>
    <!--#include virtual="../Head/Head.html"-->
    <form id="form1">
        <div class="divout" style="min-width: 300px; width: 100%; margin: 50px 0 100px 0">
            <table>
                <tr>
                    <td>
                        <div class="divleft" style="width: 150px; margin: 0 20px 0 50px;">
                            <div class="easyui-accordion" style="width: 150px; height: 599px;">
                                <div title="订单" data-options="iconCls:'icon-ok'" style="overflow: auto; padding: 10px;">
                                    <a class="of1" id="click" onclick="lk()">全部订单</a>
                                </div>
                                <div title="帮助" data-options="iconCls:'icon-help'" style="padding: 10px;">
                                </div>
                                <div title="搜索" data-options="iconCls:'icon-search'" style="padding: 10px;">
                                </div>
                            </div>

                        </div>
                    </td>
                    <td>
                        <div class="easyui-panel divright" id="aa" style="width: 1030px; height: 600px; margin-right: 50px;border:none;">
                            <div class="divtop" style="border:1px solid #95B8E7; width: 1028px; height: 50px; margin-bottom: 20px;">
                                您可以在线查看近一年的订单。如需查找更久之前的订单，请致电：110(免长话费) 或 119（座机）。
                            </div>
                            <div class="easyui-tabs divbottom" style="width: 1030px; height: 527px;">
                                <div class="" title="全部订单">

                                    <table class="tb1">
                                        <tr style="height: 40px; background-color: #95B8E7;text-align:center;">
                                            <td>全选</td>
                                            <td>数量</td>
                                            <td>旅客</td>
                                            <td>行程/有效日期</td>
                                            <td>总金额</td>
                                            <td>订单状态</td>
                                            <td>操作</td>
                                        </tr>
                                        <tr style="height: 10px;">
                                            <td colspan="7"></td>
                                        </tr>
                                        <tr class="t3" style="height: 35px; background-color: #E0ECFF;">
                                            <td class="borderleft">订单号：<span id="e1"></span></td>
                                            <td>预定日期：<span id="e2"></span></td>
                                            <td class="borderright" colspan="5"></td>
                                        </tr>
                                        <tr class="t4" style="height: 70px;text-align:center;">
                                            <td class="borderleft" id="e3"></td>
                                            <td id="e4"></td>
                                            <td id="e5"></td>
                                            <td id="e6"></td>
                                            <td class="mcl" id="e7" style="border-left:1px solid #95B8E7;"></td>
                                            <td id="e8" style="border-left:1px solid #95B8E7;"></td>
                                            <td class="borderright" id="e9"></td>
                                        </tr>
                                    </table>
                                    <div class="easyui-panel">
                                        <div class="easyui-pagination" data-options="total:114"></div>
                                    </div>
                                </div>
                                <div class="" title="未出行"></div>
                                <div class="" title="待付款"></div>
                                <div class="" title="待评价"></div>
                            </div>

                        </div>
                    </td>
                </tr>
            </table>
        </div>
    </form>
    <!--#include virtual="../Tail/Tail.html"-->
</body>
</html>
