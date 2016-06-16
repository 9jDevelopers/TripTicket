<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PersonalCenter.aspx.cs" Inherits="Travel.PersonalCenter.PersonalCenter" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../References/icomoon/fontIconStyle.css" rel="stylesheet" />
    <link href="PersonalCenter.css" rel="stylesheet" />
    <title>个人中心</title>
    <link href="../PI/PI.css" rel="stylesheet" />
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
        <a href="#" class="easyui-linkbutton" data-options="plain:true" onclick="rp()">重置密码</a>
    </div>
    <div id="p" class="easyui-panel" title="个人资料" style="height:auto;padding:10px;"
            data-options="
                tools:[{
                    iconCls:'icon-reload',
                    handler:function(){
                        $('#p').panel('refresh', '../PI/PI.aspx');
                    }
                }]
            ">
    </div>
    <script>
        function pi() {
            $('#p').panel('refresh', '../PI/EditPI.aspx');
        }
        function rp() {
            $('#p').panel('refresh', '../ResetPassword/ResetPassword.aspx');
        }
     
        $(document).ready(function () {
            $("#btnemail").click(function () {
                $.post(
                   "ResetPassword.ashx",
                    { action:'getemail',phone: $("#phone").val()},
                    function (data) {
                        var obj = $.parseJSON(data);
                        var result = obj.result;
                        var no = obj.rano;
                        $("#noneipt").val(no);
                        alert("result:" + result + "no" + no);
                        if (result == "1") {
                            alert("发送成功");
                        }
                        else {
                                                  
                            
                            alert("发送失败");
                        }
                    });
            });//btnemail 点击         END
            $("#btnsubmit").click(function () {
                //var n=$("#noneipt").val();
                //alert(n);
                var p1 = $("#pwd").val();
                var p2 = $("#rpwd").val();
               
                if(p1!=p2){
                    alert('密码不一致');
                }
                else {
                    var noneipt = $("#noneipt").val();
                    var number = $("#number").val();
                    alert('n:' + number + 'i' + noneipt);
                    if ((p1 != "" && p1 != null) && (p2 != "" && p2 != null) && (number != "" && number != null))
                    {
                        if (noneipt == number)
                        {
                            $.post(
                           "ResetPassword.ashx",
                            { action:'resetpwd',phone:$("#phone").val(),password:$("#pwd").val()},
                            function (data) {
                                alert(data);
                            });
                        }
                        else
                        {
                            alert("验证码不正确!");
                        }
                    }
                    else
                    {
                        alert("请将信息填写完全！");
                    }
                }
                
            });//submit                END
            $.extend($.fn.validatebox.defaults.rules, {
                equals: {
                    validator: function (value, param) {
                        return value == $(param[0]).val();
                    },
                    message: '密码不一致'
                }
            });//easyui代码 验证密码是否一致
            
            

        });//ready                  END
    </script>
    <!--#include virtual="../Tail/Tail.html"-->
</body>
</html>
