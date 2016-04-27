﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PI.aspx.cs" Inherits="Travel.Head.PI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>个人信息</title>
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
	<div id="log" class="easyui-panel" title="个人信息" style="height:320px;padding:10px;width:100%">
        <div class="lname">手机</div><div class="rinf">1</div>
        <div class="lname">邮箱</div><div class="rinf">1</div>
        <div class="lname">昵称</div><div class="rinf">1</div>
        <div class="lname">姓名</div><div class="rinf">1</div>
        <div class="lname">性别</div><div class="rinf">1</div>
        <div class="lname">生日</div><div class="rinf">1</div>
        <div class="lname">常住城市</div><div class="rinf">1</div>
        <div class="lname"><a href="#" class="submit easyui-linkbutton">编辑</a></div>       
	</div>
    <!--#include virtual="../Tail/Tail.html"-->
	<script>
	    window.onload = function () {
	        var t = $.cookie('phone');
	        alert("跳转"+t);
	        $.post(
                   "PI.ashx",
                    { phone: $.cookie('phone') },
                    function (data) {
                        alert(data);
                    });
	    }
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
