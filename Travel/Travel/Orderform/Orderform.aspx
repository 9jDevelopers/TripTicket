
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../PI/PI.css" rel="stylesheet" />
    <link href="css/Orderform.css" rel="stylesheet" />
    <link href="../Tail/Tail.css" rel="stylesheet" />
    <link href="../Head/Head.css" rel="stylesheet" />
    <link href="../easyui/themes/default/easyui.css" rel="stylesheet" />
    <link href="../easyui/themes/icon.css" rel="stylesheet" />
    <link href="../easyui/demo/demo.css" rel="stylesheet" />
    <script src="../easyui/jquery.min.js"></script>
    <script src="../References/jQuery_UI/development-bundle/external/jquery.cookie.js"></script>
    <script src="../easyui/jquery.easyui.min.js"></script>
    <script src="js/Orderform.js"></script>
    <script>
        

        function formatPrice(val, row) {
            if (val == "待评价") {
                return '<a href=../judge/judge.aspx>' + val + '</a>';
            }
            else {
                return val;
            }
        }
        //$(function () {            
        //    $.post("Orderform.ashx", function (data) {
        //        if(data!="")
        //        {
        //            alert(data);
        //        }

        //    });
        //});
    </script>
</head>
<body>
    <!--#include virtual="../Head/Head.html"-->
    <form id="form1">
        <div class="divout" style="min-width: 300px; width: 1366px; margin: 50px 0 100px 0;">
            <table>
                <tr>
                    <td>
                        <div class="divleft" style="width: 150px;height:600px; margin: 0 20px 0 50px;">
                            <div class="easyui-accordion" style="width: 150px; height:400px;">
                                <div title="个人信息" data-options="iconCls:'icon-ok'" style="overflow: auto; padding: 10px;">
                                    <a class="of1" href="#" id="info1" onclick="infomation1()">个人资料</a>
                                    <a class="of1" href="#" id="info2" onclick="infomation2()">重置密码</a>
                                    <a class="of1" href="#" id="info3" onclick="infomation3()">注销登录</a>
                                </div>
                                <div title="订单" data-options="iconCls:'icon-ok'" style="overflow: auto; padding: 10px;">
                                    <a class="of1" href="#" id="click" onclick="lk()">全部订单</a>
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
                           <%-- <div class="divtop" style="border:1px solid #95B8E7; width: 1028px; height: 50px; margin-bottom: 20px;">
                                您可以在线查看近一年的订单。如需查找更久之前的订单，请致电：110(免长话费) 或 119（座机）。
                            </div>
                            <div class="easyui-tabs divbottom" style="width: 1030px; height: 527px;">
                                <div class="" title="全部订单">
                                    <table class="easyui-datagrid" title="全部订单" style="width:1030px;height:250px;"
                                           data-options="singleSelect:true,pagination:true,url:'Orderform.ashx',method:'get'">
                                        <thead>
                                            <tr>
                                                <th data-options="field:'EntID',width:80">订单号</th>
                                                <th data-options="field:'Entname',width:250">订单名称</th>
                                                <th data-options="field:'Buytime',width:150">预定日期</th>
                                                <th data-options="field:'Num',width:80,align:'right'">数量</th>
                                                <th data-options="field:'TicketBuyer',width:80,align:'right'">旅客</th>
                                                <th data-options="field:'Usertime',width:250,align:'center'">行程/有效日期</th>
                                                <th data-options="field:'Price',width:70,align:'center'">总金额</th>
                                                <th data-options="field:'Status',width:68,align:'center',formatter:formatPrice">订单状态</th>
                                                
                                            </tr>
                                        </thead>
                                    </table>
                                    <!--<table class="tb1">
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
                                    </div>-->
                                </div>
                                <div class="" title="未出行"></div>
                                <div class="" title="待付款"></div>
                                <div class="" title="待评价"></div>
                            </div>--%>

                        </div>
                    </td>
                </tr>
            </table>
        </div>
    </form>
    <!--#include virtual="../Tail/Tail.html"-->
</body>
</html>
