<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditPI.aspx.cs" Inherits="Travel.Head.EditPI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>个人信息</title>
    <script src="../easyui/jquery.min.js"></script>
    <script src="../References/jQuery_UI/development-bundle/external/jquery.cookie.js"></script>
    <link href="../easyui/themes/default/easyui.css" rel="stylesheet" />
    <link href="../easyui/themes/icon.css" rel="stylesheet" />
    <link href="../easyui/demo/demo.css" rel="stylesheet" />

    <script src="../easyui/jquery.easyui.min.js"></script>

</head>
<body>
    <form id="frm" runat="server">
        <div id="log" class="easyui-panel" title="个人信息" style="height:350px;padding:10px;width:100%">
        <div  class="photo"><i class="edit icon-link"></i></div>
        <input type="file" class="file-up" name="btnim" style="display:none;" />
        <div class="lname">手机</div><div id="phone" class="rinf">
            <input id="textphone" name="phone" class="easyui-textbox" readonly="readonly" style="width:200px;height:20px" />
        </div>
        <div class="lname">邮箱</div><div id="email" class="rinf">
            <input id="textemail" name="email" class="easyui-textbox" style="width:200px;height:20px" />
        </div>
        <div class="lname">昵称</div><div id="username" class="rinf">
            <input id="textusername" name="username" class="easyui-textbox"  style="width:200px;height:20px" />
        </div>
        <div class="lname">姓名</div><div id="name" class="rinf">
            <input id="textname" name="_name" class="easyui-textbox"  style="width:200px;height:20px" />
        </div>
        <div class="lname">性别</div><div id="sex" class="rinf">
            <input id="textsex" name="sex" class="easyui-textbox"  style="width:200px;height:20px" />
        </div>
        <div class="lname">生日</div><div id="birthday" class="rinf">
            <input class="easyui-datetimebox" name="birthday" id="textbirthday" value="" style="width:200px; height:28px;line-height:28px;" />
        </div>
        <div class="lname">常住城市</div><div id="home" class="rinf">
            <input id="texthome" class="easyui-textbox" name="home" style="width:200px;height:20px" />
        </div>
        <div class="lname"><a id="btnsave" class="submit easyui-linkbutton">保存</a></div>
       </div>
    </form>
    <script>
        setTimeout(function () {
            alert(1);
            $.post(
            "../PI/PI.ashx",
            { action: 'getinfo' },
            function (data) {
                var obj = $.parseJSON(data);
                $("#textphone").textbox('setValue', obj.phone);
                $("#textemail").textbox('setValue', obj.email);
                $("#textusername").textbox('setValue', obj.username);
                $("#textname").textbox('setValue', obj.name);
                $("#textsex").textbox('setValue', obj.sex);
                $("#textbirthday").textbox('setValue', obj.birthday);
                $(".photo").css('background-image', 'url(../PI/Photo/' + obj.photo + ')');
                $("#texthome").textbox('setValue', obj.home);
            });
            },100);
        $(document).ready(function () {
            $("#btnsave").click(function () {
                var formData = new FormData($("#frm")[0]);
                alert(formData);
                $.ajax({
                    cache: true, //缓存
                    type: "POST", //提交方式post get
                    url: "PI.ashx",
                    data: formData,
                    async: true, //异步
                    contentType: false, //避免jQuery将你的表格数据转换为字符串，导致提交失败。
                    //默认值: "application/x-www-form-urlencoded"。发送信息至服务器时内容编码类型。默认值适合大多数情况。
                    //上传文件的制定方式：multipart/form-data形式传递文件。
                    processData: false, //是否转换信息//false避免数据转换成查询字符串
                    error: function (request) {
                        alert(request);
                    },
                    success: function (data) {
                        alert(data);//后台返回值
                    }
                });
            });//保存点击事件  END

            //点击事件触发上产控件
            $(".photo").click(function () {
                alert(1);
                $(".file-up").click();
            });
            $(".file-up").change(function () {
                alert(7);
                var file = $(".file-up").eq(0)[0].files[0];
                alert(2);
                if (typeof FileReader != undefined) {
                    var reader = new FileReader();
                    reader.readAsDataURL(file);
                    reader.onload = function () {
                        var imu = this.result;
                        alert("图片地址" + imu);
                        $(".photo").css('background-image', 'url(' + imu + ')')
                    };
                }
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
