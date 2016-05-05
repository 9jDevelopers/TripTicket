<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Orderform.aspx.cs" Inherits="Travel.Orderform.Orderform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="css/BuyTicket.css" rel="stylesheet" />
    <link href="../Head/Head.css" rel="stylesheet" />
    <link href="../easyui/themes/default/easyui.css" rel="stylesheet" />
    <link href="../easyui/themes/icon.css" rel="stylesheet" />
    <link href="../easyui/demo/demo.css" rel="stylesheet" />
    <script src="../easyui/jquery.min.js"></script>
    <script src="../easyui/jquery.easyui.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="divout" style="border:1px solid red;margin:auto 90px;height:800px;">
        <div class="divleft" style="border:1px solid red;float:left;width:150px;height:600px;margin:10px 20px auto 20px;"></div>
        <div class="divright" style="border:1px solid red;float:left;width:930px;height:600px;margin:10px 0 auto 0;">
            <div class="divtop" style="border:1px solid red;width:930px;height:50px;margin-bottom:20px;"></div>
            <div class="easyui-tabs divbottom" style="border:1px solid red;width:930px;height:500px;">
                <div class="" title="全部订单" style="width:250px;"></div>
                <div class="" title="未出行" style="width:250px;"></div>
                <div class="" title="待付款"></div>
                <div class="" title="待评价"></div>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
