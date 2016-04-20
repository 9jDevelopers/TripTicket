<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PI.aspx.cs" Inherits="Travel.Head.PI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>个人信息</title>
    <link href="PI.css" rel="stylesheet" />
    <link href="../easyui/themes/default/easyui.css" rel="stylesheet" />
    <link href="../easyui/themes/icon.css" rel="stylesheet" />
    <link href="../easyui/demo/demo.css" rel="stylesheet" />
    <script src="../easyui/jquery.min.js"></script>
    <script src="../easyui/jquery.easyui.min.js"></script>
</head>
<body>
	
	<div id="log" class="easyui-panel" title="个人信息" style="height:300px;padding:10px;width:100%">
        <div class="lname">手机</div><div class="rinf"><%=phone%></div>
        <div class="lname">邮箱</div><div class="rinf"><%=email%></div>
        <div class="lname">昵称</div><div class="rinf"><%=username%></div>
        <div class="lname">姓名</div><div class="rinf"><%=name%></div>
        <div class="lname">性别</div><div class="rinf"><%=sex%></div>
        <div class="lname">生日</div><div class="rinf"><%=birthday%></div>
        <div class="lname">常住城市</div><div class="rinf"><%=home%></div>
	</div>
	<script>
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
