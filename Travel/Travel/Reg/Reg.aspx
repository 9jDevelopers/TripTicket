<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reg.aspx.cs" Inherits="Travel.Reg.Reg1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>会员注册</title>
    <link href="../Head/Head.css" rel="stylesheet" />  
    <script src="../easyui/jquery.min.js"></script>
    <script src="../References/jQuery_UI/development-bundle/external/jquery.cookie.js"></script>
    <link href="../Tail/Tail.css" rel="stylesheet" />
    <link href="../easyui/themes/default/easyui.css" rel="stylesheet" />
    <link href="../easyui/themes/icon.css" rel="stylesheet" />
    <link href="../easyui/demo/demo.css" rel="stylesheet" />
    <script src="../easyui/jquery.easyui.min.js"></script>
    <style>
        a {
            TEXT-DECORATION: none;
        }
    </style>
    <script>
        $(document).ready(function () {
            $("#btnReg").click(function () {

                var username = $("#username").val();
                var phone = $("#phone").val();
                var email = $("#email").val();
                var password = $("#password").val();
                var password1 = $("#password1").val();
                if (username == "" || phone == "" || email == "" || password == "" || password1 == "")
                {
                    alert("请将信息填写完全！");
                }
                else if (password != password1)
                {
                    alert("两次密码不一致!");
                }
                else {
                    $.post(
                       "Reg.ashx",
                        { action: "Reg", username: $("#username").val(), phone: $("#phone").val(), email: $("#email").val(), password: $("#password").val() },
                        function (data) {
                            if (data != "" || data != null) {
                                alert('成功');
                            }
                            else {
                                alert('失败');
                            }
                        });
                }

            });
        });
    </script>
</head>
<body>
    <!--#include virtual="../Head/Head.html"--> 
    <center>
        <div class="easyui-panel" title="请填写注册信息" style="width:100%;padding:30px 60px">


            <div style="margin-bottom:20px">
                <div>用户名：</div>
                <input id="username" class="easyui-textbox" style="width:35%;height:32px"/>
            </div>
            <div style="margin-bottom:20px">
                
                <div>手机号：</div>
                <input id="phone"  class="easyui-textbox" style="width:35%;height:32px"/>
            </div>
            <div style="margin-bottom:20px">
                <div>Email:</div>
                <input id="email" class="easyui-textbox" style="width:35%;height:32px"/>
            </div>
            <div style="margin-bottom:20px">
                <div>密码:</div>
                <input id="password" type="password" class="easyui-textbox" style="width:35%;height:32px"/>
            </div>
            <div style="margin-bottom:20px">
                <div>确认密码:</div>
                <input id="password1" type="password" class="easyui-textbox" style="width:35%;height:32px"/>
            </div>
            <div style="margin-left:110px">
                <a id="btnReg" class="easyui-linkbutton">完成注册</a>
            </div>

        </div>
    </center>
    <!--#include virtual="../Tail/Tail.html"-->
</body>
</html>
