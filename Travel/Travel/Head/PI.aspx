<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PI.aspx.cs" Inherits="Travel.Head.PI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>个人信息</title>
    <link href="../easyui/themes/default/easyui.css" rel="stylesheet" />
    <link href="../easyui/themes/icon.css" rel="stylesheet" />
    <link href="../easyui/demo/demo.css" rel="stylesheet" />
    <script src="../easyui/jquery.min.js"></script>
    <script src="../easyui/jquery.easyui.min.js"></script>
</head>
<body>
	
	<div id="log" class="easyui-panel" title="个人信息" style="height:250px;padding:10px">
        <div class="lname"></div><div class="rinf"></div>
        <div class="lname"></div><div class="rinf"></div>
        <div class="lname"></div><div class="rinf"></div>
        <div class="lname"></div><div class="rinf"></div>
        <div class="lname"></div><div class="rinf"></div>
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
