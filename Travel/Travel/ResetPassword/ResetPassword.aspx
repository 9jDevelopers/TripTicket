<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResetPassword.aspx.cs" Inherits="Travel.Head.GetPassword.getpassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../Head/Head.css" rel="stylesheet" />  
    <script src="../easyui/jquery.min.js"></script>
    <script src="../References/jQuery_UI/development-bundle/external/jquery.cookie.js"></script>
    <link href="../Tail/Tail.css" rel="stylesheet" />
    <%-----------------------------------------------------------%>
    <link href="../easyui/themes/default/easyui.css" rel="stylesheet" />
    <link href="../easyui/themes/icon.css" rel="stylesheet" />
    <link href="../easyui/demo/demo.css" rel="stylesheet" />
    <script src="../easyui/jquery.easyui.min.js"></script>
    <script>
        $(document).ready(function () {
            $("#btnemail").click(function () {
                
                var phone = $("#phone").val();
                alert(phone);
                $.post(
                   "getpassword.ashx",
                    { phone: $("#phone").val()},
                    function (data) {
                        if (data == "") {
                            alert("无账户名");
                        }
                        else {
                            alert(data);
                        }
                    });
            });

        });//ready                  END
    </script>
</head>
<body>
    <!--#include virtual="../Head/Head.html"-->
	<div class="easyui-panel" title="重置登录密码" style="width:100%;padding:30px 60px">


            <div style="margin-bottom:20px">
                <div>手机号</div>
                <input id="phone" class="easyui-textbox" style="width:250px;height:32px"/>
            </div>
            <div style="margin-bottom:20px">
                <div>新密码</div>
                <input id="password" class="easyui-textbox" style="width:250px;height:32px"/>
            </div>
            <div style="margin-bottom:20px">
                <div>确认新密码</div>
                <input id="password2" class="easyui-textbox" style="width:250px;height:32px"/>
            </div>
            <div style="margin-bottom:20px">
                
                <div>验证码</div>
                <input id="phone"  class="easyui-textbox" style="width:140px;height:32px"/><a id="btnemail" class="easyui-linkbutton" style="width:110px;height:32px">向邮箱发送验证码</a>
            </div>
            <div style="margin-left:110px">
                <a id="btnReg" class="easyui-linkbutton">修改密码</a>
            </div>

        </div>
</body>
</html>
