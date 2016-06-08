<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PersonalCenter.aspx.cs" Inherits="Travel.PersonalCenter.PersonalCenter" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="PersonalCenter.css" rel="stylesheet" />
    <title>个人中心</title>
    <link href="../Head/Head.css" rel="stylesheet" />  
    <script src="../References/jquery-1.8.3.min.js"></script>
    <script src="../References/jQuery_UI/development-bundle/external/jquery.cookie.js"></script>
    <link href="../Tail/Tail.css" rel="stylesheet" />
    <%-----------------------------------------------------------%>
    <link href="../easyui/themes/default/easyui.css" rel="stylesheet" />
    <link href="../easyui/themes/icon.css" rel="stylesheet" />
    <link href="../easyui/demo/demo.css" rel="stylesheet" />
    <script src="../easyui/jquery.easyui.min.js"></script>
</head>
<body>
    <!--#include virtual="../Head/Head.html"-->
    <div class="easyui-panel" style="padding:5px;">
		<a href="#" class="easyui-linkbutton" data-options="plain:true" onclick="pi()">个人资料</a>
        <a href="#" class="easyui-linkbutton" data-options="plain:true">查看订单</a>
        <a href="#" class="easyui-linkbutton" data-options="plain:true">重置密码</a>
    </div>
    <div id="p" class="easyui-panel" title="个人资料" style="height:auto;padding:10px;"
            data-options="
                tools:[{
                    iconCls:'icon-reload',
                    handler:function(){
                        $('#p').panel('refresh', 'two.aspx');
                    }
                }]
            ">
    </div>
    <script>
        function pi() {
            $('#p').panel('refresh', '../PI/PI.aspx');
        }
    </script>
    <!--#include virtual="../Tail/Tail.html"-->
</body>
</html>
