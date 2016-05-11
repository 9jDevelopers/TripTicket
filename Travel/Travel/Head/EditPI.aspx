﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditPI.aspx.cs" Inherits="Travel.Head.EditPI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>个人信息</title>
    <link href="../References/icomoon/fontIconStyle.css" rel="stylesheet" />
    <link href="../Head/Head.css" rel="stylesheet" />

    <link href="../Tail/Tail.css" rel="stylesheet" />

    <link href="PI.css" rel="stylesheet" />
    <script src="../easyui/jquery.min.js"></script>
    <script src="../References/jQuery_UI/development-bundle/external/jquery.cookie.js"></script>

    <link href="../easyui/themes/default/easyui.css" rel="stylesheet" />
    <link href="../easyui/themes/icon.css" rel="stylesheet" />
    <link href="../easyui/demo/demo.css" rel="stylesheet" />

    <script src="../easyui/jquery.easyui.min.js"></script>

</head>
<body>
    <!--#include virtual="../Head/Head.html"-->
   
    <div id="log" class="easyui-panel" title="个人信息" style="height:350px;padding:10px;width:100%">
        <div class="photo"><i class="edit icon-link"></i> </div>
        <div class="lname">手机</div><div id="phone" class="rinf">
            <input id="textphone" class="easyui-textbox" style="width:200px;height:20px" />
        </div>
        <div class="lname">邮箱</div><div id="email" class="rinf">
            <input id="textemail"class="easyui-textbox" style="width:200px;height:20px" />
        </div>
        <div class="lname">昵称</div><div id="username" class="rinf">
            <input id="textusername" class="easyui-textbox"  style="width:200px;height:20px" />
        </div>
        <div class="lname">姓名</div><div id="name" class="rinf">
            <input id="textname"class="easyui-textbox"  style="width:200px;height:20px" />
        </div>
        <div class="lname">性别</div><div id="sex" class="rinf">
            <input id="textsex" class="easyui-textbox"  style="width:200px;height:20px" />
        </div>
        <div class="lname">生日</div><div id="birthday" class="rinf">
            <input class="easyui-datetimebox" id="textbirthday" value="" style="width:200px; height:28px;line-height:28px;" />
        </div>
        <div class="lname">常住城市</div><div id="home" class="rinf">
            <input id="texthome" class="easyui-textbox"  style="width:200px;height:20px" />
        </div>
        <div class="lname"><a id="btnsave" class="submit easyui-linkbutton">保存</a></div>
    </div>
    <!--#include virtual="../Tail/Tail.html"-->
    <script>
        window.onload = function () {
            alert($.cookie('objs'));
            var obj = $.parseJSON($.cookie('objs'));
            $("#textphone").textbox('setValue', obj.phone);
            $("#textemail").textbox('setValue', obj.email);
            $("#textusername").textbox('setValue', obj.username);
            $("#textname").textbox('setValue', obj.name);
            $("#textsex").textbox('setValue', obj.sex);
            $("#textbirthday").textbox('setValue', obj.birthday);
            $(".photo").css('background-image', 'url(Photo/' + obj.photo + ')');
            $("#texthome").textbox('setValue', obj.home);
        }
        $(document).ready(function () {
            $("#btnsave").click(function () {
                var p = document.getElementById('textphone');
                var textphone = p.innerText;
                $('#dt').datetimebox({
                    value: '3/4/2010 2:3',
                    required: true,
                    showSeconds: false
                });

                var birthday= $('#textbirthday').datetimebox('getValue');
                $.post(
                         "PI.ashx",
                          {
                              action: "editpi",
                              phone: textphone,
                              email: $("#textemail").val(),
                              username: $("#textusername").val(),
                              textname: $("#textname").val(),
                              sex: $("#textsex").val(),
                              birthday:birthday,
                              home: $("#texthome").val()
                          },
                          function (data) {
                              if (data == 1)
                              {
                                  alert('修改成功');
                                  window.location.href = "PI.aspx";
                              }
                              else
                              {
                                  alert('修改失败');
                              }
                              
                          });
            });




        });

		function menuHandler(item){
			$('#log').prepend('<p>Click Item: '+item.name+'</p>');
		}
		$(function(){
			$(document).bind('contextmenu',function(e){
				e.preventDefault();
				$('#mm').menu('show', {
					left: e.pageX,
					top: e.pageY
				});
			});
		});



    </script>
</body>
</html>
