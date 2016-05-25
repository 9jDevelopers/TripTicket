<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Orderform.aspx.cs" Inherits="Travel.Orderform.Orderform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="css/Orderform.css" rel="stylesheet" />
    <link href="../Head/Head.css" rel="stylesheet" />
    <link href="../easyui/themes/default/easyui.css" rel="stylesheet" />
    <link href="../easyui/themes/icon.css" rel="stylesheet" />
    <link href="../easyui/demo/demo.css" rel="stylesheet" />
    <script src="../easyui/jquery.min.js"></script>
    <script src="../easyui/jquery.easyui.min.js"></script>
    <script type="text/javascript">
        $('#click').click(function () {
            $('#aa').load('new.html');
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="divout" style="border: 1px solid red; margin: auto 90px; height: 800px;">
            <div class="divleft" style="border: 1px solid red; float: left; width: 150px; height: 600px; margin: 10px 20px auto 20px;">
                <div class="easyui-accordion" style="width: 150px; height: 300px;">
                    <div title="订单" data-options="iconCls:'icon-ok'" style="overflow: auto; padding: 10px;">
                        <div id="click">全部订单</div>
                    </div>
                    <div title="Help" data-options="iconCls:'icon-help'" style="padding: 10px;">
                        
                    </div>
                    <div title="TreeMenu" data-options="iconCls:'icon-search'" style="padding: 10px;">
                    </div>
                </div>

            </div>
            <div class="divright" id="aa" style="border: 1px solid red; float: left; width: 930px; height: 600px; margin: 10px 0 auto 0;">
                <div class="divtop" style="border: 1px solid red; width: 930px; height: 50px; margin-bottom: 20px;">
                    您可以在线查看近一年的订单。如需查找更久之前的订单，请致电：110(免长话费) 或 119（座机）。
                </div>
                <div class="easyui-tabs divbottom" style="border: 1px solid red; width: 930px; height: 500px;">
                    <div class="" title="全部订单" style="width: 250px;"></div>
                    <div class="" title="未出行" style="width: 250px;"></div>
                    <div class="" title="待付款"></div>
                    <div class="" title="待评价"></div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
