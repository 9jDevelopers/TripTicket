<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResetPassword.aspx.cs" Inherits="Travel.Head.GetPassword.getpassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script src="../easyui/jquery.min.js"></script>
    <script src="../References/jQuery_UI/development-bundle/external/jquery.cookie.js"></script>
    <%-----------------------------------------------------------%>
    <link href="../easyui/themes/default/easyui.css" rel="stylesheet" />
    <link href="../easyui/themes/icon.css" rel="stylesheet" />
    <link href="../easyui/demo/demo.css" rel="stylesheet" />
    <script src="../easyui/jquery.easyui.min.js"></script>
    
</head>
<body>
	<div class="easyui-panel" title="重置登录密码" style="width:100%;padding:30px 60px">


            <div style="margin-bottom:20px">
                <div>手机号</div>
                <input id="phone" name="pwd" type="text" class="easyui-textbox" data-options="required:true" style="width:250px;height:32px"/>
            </div>
            <div style="margin-bottom:20px">
                <div>新密码</div>
                <input id="pwd" name="pwd" type="password" class="easyui-textbox" data-options="required:true" style="width:250px;height:32px"/>
            </div>
            <div style="margin-bottom:20px">
                <div>确认新密码</div>
                <input id="rpwd" name="rpwd" type="password" class="easyui-textbox" required="required"  validType="equals['#pwd']" style="width:250px;height:32px"/>
            </div>
            <div style="margin-bottom:20px">
              
                <div>验证码</div><input type="text" id="noneipt"style="display:none;" />
                <input id="number"  class="easyui-textbox" style="width:130px;height:32px;margin:5px;"/><a id="btnemail" class="easyui-linkbutton" style="width:110px;height:32px">向邮箱发送验证码</a>
            </div>
            <div style="margin-left:110px">
                <a id="btnsubmit" class="easyui-linkbutton">重置密码</a>
            </div>
        </div>
    <script>
        setTimeout(function () {
            if ($.cookie('phone') != "" && $.cookie('phone') != null) {
                $("#phone").textbox('setValue', $.cookie('phone'));
            }
        }, 100);
        $(document).ready(function () {
            $("#btnemail").click(function () {
                $.post(
                   "../ResetPassword/ResetPassword.ashx",
                    { action:'getemail',phone: $("#phone").val()},
                    function (data) {
                        var obj = $.parseJSON(data);
                        var result = obj.result;
                        var no = obj.rano;
                        $("#noneipt").val(no);
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
                    if ((p1 != "" && p1 != null) && (p2 != "" && p2 != null) && (number != "" && number != null))
                    {
                        if (noneipt == number)
                        {
                            $.post(
                           "../ResetPassword/ResetPassword.ashx",
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
</body>
</html>
