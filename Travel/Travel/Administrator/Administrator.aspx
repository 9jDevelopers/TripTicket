<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Administrator.aspx.cs" Inherits="Travel.Administrator.Administrator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="Administrator.css" rel="stylesheet" />

    <script src="../easyui/jquery.min.js"></script>
    <link href="../easyui/themes/default/easyui.css" rel="stylesheet" />
    <link href="../easyui/themes/icon.css" rel="stylesheet" />
    <link href="../easyui/demo/demo.css" rel="stylesheet" />
    <script src="../easyui/jquery.easyui.min.js"></script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="addbody"><a href="#" id="addAD">添加管理员</a><a href="#" id="addSec">添加景点</a></div>
        <div id="lbody">
        <div class="easyui-panel" title="登录窗口" style="height:185px;width:400px;padding:30px 70px 20px 70px">
            <div class="bdiv">
                <input id="txtphone" class="incss easyui-textbox" data-options="prompt:'请输入登录名',iconCls:'icon-man',iconWidth:38"/>
            </div>
            <div class="bdiv">
                <input id="txtpassword" class="incss easyui-textbox" type="password" data-options="prompt:'请输入密码',iconCls:'icon-lock',iconWidth:38"/>
            </div>
            <div>
                <a href="#" id="btnlogin" class="easyui-linkbutton" data-options="iconCls:'icon-ok'">
                    <span style="font-size:10px;">登录</span>
                </a>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
