<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="newIntroduce.aspx.cs" Inherits="Travel.景点新建.newIntroduce" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>景点新建</title>
    
    <link href="css/newInteoduce.css" rel="stylesheet" />
    <link href="../Head/Head.css" rel="stylesheet" />
    <link href="../Tail/Tail.css" rel="stylesheet" />
    <link href="../References/icomoon/fontIconStyle.css" rel="stylesheet" />
    
    <link href="../easyui/themes/default/easyui.css" rel="stylesheet" />
    <link href="../easyui/themes/icon.css" rel="stylesheet" />
    <link href="../easyui/demo/demo.css" rel="stylesheet" />
    <%-- 添加图 --%>
    <link href="tu/add.css" rel="stylesheet" />
    <link href="../References/icomoon/fontIconStyle.css" rel="stylesheet" />

 <%--   <script src="../References/jquery-1.8.3.min.js"></script>--%>
    <script src="../References/ajaxupload.3.9.js"></script>
    <script src="../easyui/jquery.min.js"></script>
    <script src="../easyui/jquery.easyui.min.js"></script>

    <script src="css/ajaxupload.3.9.js"></script>
    <style type="text/css">
        .easyui-combobox {
            width: 151px;
        }
    </style>
</head>
<body>
    <!--#include virtual="../Head/Head.html"-->
    <form id="form1" runat="server">
    <div class="back">
        <%-- 景点简介 --%>
        <div class="jianjie ">
            <div class="tu">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/景点介绍/image/T){YV~N)7~3{3H]K}RUY($6_17.gif" Width="650px" Height="400" />
               <div>
                   
                 </div>
            </div>

            <div class="wen">
                <table cellpadding="5">
	    		<tr>
	    			<td>景点标题:</td>
	    			<td><input class="easyui-textbox" type="text" id="name" name="name" data-options="required:true"/></td>
	    		</tr>
		  		<tr>
	    			<td>景点类型:</td>
	    			<td>
                        <select class="easyui-combobox" id="TravelType" name="TravelType">
                            <option value="城市观光" selected="selected">城市观光</option>
                            <option value="自然景观">自然景观</option>
                        </select>
	    			</td>
	    		</tr>
               
	    		<tr>
	    			<td>游玩时长:</td>
	    			<td><input class="easyui-textbox" type="text" id="time" name="time" data-options="required:true"/>></td>
	    		</tr>
	    		<tr>
	    			<td>服务语言:</td>
	    			<td>
	    				<select class="easyui-combobox" id="language" name="language">
                            <option>Arabic</option>
                            <option>Bulgarian</option>
                            <option>Catalan</option>
                            <option  selected="selected">中文</option>
                            <option>Czech</option>
                            <option>Danish</option>
                            <option>Dutch</option>
                            <option>English</option>
                            <option>Estonian</option>
                            <option>Finnish</option>
                            <option>French</option>
                            <option>German</option>
                            <option>Greek</option>
                            <option>Haitian Creole</option>
                            <option>Hebrew</option>
                            <option>Hindi</option>
                            <option value="mww">Hmong Daw</option>
                            <option value="hu">Hungarian</option>
                            <option value="id">Indonesian</option>
                            <option value="it">Italian</option>
                            <option value="ja">Japanese</option>
                            <option value="ko">Korean</option>
                            <option value="lv">Latvian</option>
                            <option value="lt">Lithuanian</option>
                            <option value="no">Norwegian</option>
                            <option value="fa">Persian</option>
                            <option value="pl">Polish</option>
                            <option value="pt">Portuguese</option>
                            <option value="ro">Romanian</option>
                            <option value="ru">Russian</option>
                            <option value="sk">Slovak</option>
                            <option value="sl">Slovenian</option>
                            <option value="es">Spanish</option>
                            <option value="sv">Swedish</option>
                            <option value="th">Thai</option>
                            <option value="tr">Turkish</option>
                            <option value="uk">Ukrainian</option>
                            <option value="vi">Vietnamese</option>

	    				</select>
	    			</td>
	    		</tr>
                <tr>
	    			<td>门票名称:</td>
	    			<td><input class="easyui-textbox" type="text"id="ticketname" name="ticket" data-options="required:true"/><</td>
	    		</tr>
                <tr>
	    			<td>门票价格:</td>
	    			<td><input class="easyui-textbox" type="text" id="ticketmoney" name="money" data-options="required:true"/></td>
	    		</tr>
	    	</table>
                <div class="XX">
                    <div class="DW">玩乐亮点</div>
                    <p>
                        &nbsp;<img src="image/景点简介-恢复的_03.gif" /><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></p>
                    <p>
                       &nbsp;<img src="image/景点简介-恢复的_03.gif" /><asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></p>
                    <p>
                        &nbsp;<img src="image/景点简介-恢复的_03.gif" /><asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></p>                   
                </div>
            </div>         
        </div>      

 <%-- 详细信息 --%>
<%--        <div style="height:500px;width:500px">--%>
       <div class="F">         
        <div class="FD">
            <%-- 细节介绍 --%>
            <%-- 玩了介绍 --%>
            <div class="Q"> 
                <a href="#A1" style="text-decoration:none"><div class="XQ">行程路线</div></a>
                <a href="#A2" style="text-decoration:none"><div class="XQ">玩乐介绍</div></a>
            </div>
            <p><a name="A1"><img src="image/景点简介222_03.gif" /></a></p>
            <%--<p> <i class="s">08:00</i>前往机场,由随团领队协助办理登机及出境手续。</p>--%>
                 <table style="margin-left:40px">
                     <tr>
                         <td>
                             <img src="image/u=1784468057,49342501&fm=21&gp=0.gif" style="height: 17px; width: 17px" /></td>
                         <td><input class="easyui-textbox" type="text" name="time2" data-options="required:'true',prompt:'时间'"></input></td>
                         <td><input class="easyui-textbox" type="text" name="route" data-options="required:'true',prompt:'行程路线'"></input></td>
                     </tr>
                     <tr>
                         <td>
                             <img src="image/u=1784468057,49342501&fm=21&gp=0.gif" style="height: 17px; width: 17px" /></td>
                         <td><input class="easyui-textbox" type="text" name="time2" data-options="required:'true',prompt:'时间'"></input></td>
                         <td><input class="easyui-textbox" type="text" name="route" data-options="required:'true',prompt:'行程路线'"></input></td>
                     </tr>
                     <tr>
                         <td>
                             <img src="image/u=1784468057,49342501&fm=21&gp=0.gif" style="height: 17px; width: 17px" /></td>
                         <td><input class="easyui-textbox" type="text" name="time2" data-options="required:'true',prompt:'时间'"></input></td>
                         <td><input class="easyui-textbox" type="text" name="route" data-options="required:'true',prompt:'行程路线'"></input></td>
                     </tr>
                  </table>
            <p><a name="A2"><img src="image/景点简介222_06.gif" /></a></p>
                <p><h2>文字叙述</h2></p>
                <p>
                    <input class="easyui-textbox" id="TxTmessage" name="TxTmessage" data-options="multiline:true" style="height:95px; width: 434px;"/>
                </p>
            <%-- 添加图片 --%>
                <div id="images">
                         
                    <div id="btnUp1" class="q">                      
                       <i class="tu1 w icon-googleplus" ></i> 
                       <img id="ig1"  src=""/>         
                   </div>

                    <div id="btnUp2" class="q">
                       <i class="tu2 w icon-googleplus"></i> 
                       <img id="ig2" src=""/>         
                   </div>
        
                    <div id="btnUp3" class="q">
                       <i class="tu3 w icon-googleplus" ></i> 
                       <img id="ig3" src=""/>         
                   </div>
        
                    <div id="btnUp4" class="q">
                       <i class="tu4 w icon-googleplus" ></i> 
                       <img id="ig4" src=""/>         
                   </div>
   
                </div>
                        
            </div>
         
        <%-- 系统推荐 --%>
        <div class="XD">
          <input class="shubiao" type="button" id="TJ" value="确认" name="TJ" /><input type="file" class="file-up" onchange=" previewImages()" name="btnim0" style="display:none;"/>
        </div>

        </div>

        </div>
  
        </form>
    <script src="js/NI.js"></script>
      <script type="text/javascript">
        var button1 = $('#btnUp1');
        var image1 = $('#ig1');
        var tu1 = $('.tu1');

        var button2 = $('#btnUp2');
        var image2 = $('#ig2');
        var tu2 = $('.tu2');

        var button3 = $('#btnUp3');
        var image3 = $('#ig3');
        var tu3 = $('.tu3');

        var button4 = $('#btnUp4');
        var image4 = $('#ig4');
        var tu4 = $('.tu4');

        $(function () {
            imagedata(button1, image1,tu1);
            imagedata(button2, image2,tu2);
            imagedata(button3, image3,tu3);
            imagedata(button4, image4, tu4);
            
        });

        function imagedata( button, img,tu) {
          
            new AjaxUpload(button, {
                action: 'NewIntroduce.ashx',
                name: 'myflie',

                //上传结束
                onComplete: function (file, response) {
                    $(function () {tu.hide(); })
                    //alert(response);
                    img.attr("src", "image/" + response);                    
                    img.attr("width", "100");
                    img.attr("height", "100");                  
                }
            })
        }
    </script>

    <script  type="text/javascript">
		$("#TJ").click
    (
        function () {
            var name = $("#name").val();
            var TravelType = $("#TravelType").val();
            var time = $("#time").val();
            var language = $("#language").val();
            var ticketname = $("#ticketname").val();
            var ticketmoney = $("#ticketmoney").val();
            var TxTmessage = $("#TxTmessage").val();

            var image1 = $("#ig1").attr("src");           
            var image2 = $("#ig2").attr("src");        
            var image3 = $("ig3").attr("src");
            var image4 = $("ig4").attr("src");

            //alert("这是" + name+"景点");

            $.post
            (
            "NewIntroduce.ashx",
            {
                shuju:'newshuju',
                name: $("#name").val(),
                TravelType: $("#TravelType").val(),
                time: $("#time").val(),
                language: $("#language").val(),
                ticketname: $("#ticketname").val(),
                ticketmoney: $("#ticketmoney").val(),
                TxTmessage: $("#TxTmessage").val(),

                image1: $("#ig1").attr("src"),     
                image2: $("#ig2").attr("src"),
                image3: $("#ig3").attr("src"),
                image4: $("#ig4").attr("src"),
            },
             function (data) {
                 alert(data);
                 
             }
            )
        }
    )
		
	</script>
    
</body>
  <!--#include virtual="../Tail/Tail.html"-->
</html>
