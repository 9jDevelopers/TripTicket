<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="newIntroduce.aspx.cs" Inherits="Travel.景点新建.newIntroduce" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>景点新建</title>
    
    <link href="css/newInteoduce.css" rel="stylesheet" />
    <link href="../Head/Head.css" rel="stylesheet" />
    <link href="../Tail/Tail.css" rel="stylesheet" />
    
    
    <link href="../easyui/themes/default/easyui.css" rel="stylesheet" />
    <link href="../easyui/themes/icon.css" rel="stylesheet" />
    <link href="../easyui/demo/demo.css" rel="stylesheet" />
    <%-- 添加图 --%>
    <link href="tu/add.css" rel="stylesheet" />
    <link href="../References/icomoon/fontIconStyle.css" rel="stylesheet" />
    <script src="tu/add.js"></script>
 <%--   <script src="../References/jquery-1.8.3.min.js"></script>--%>

    <script src="../easyui/jquery.min.js"></script>
    <script src="../easyui/jquery.easyui.min.js"></script>
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
	    			<td><input class="easyui-textbox" type="text" id="name" name="name" data-options="required:true"></input></td>
	    		</tr>
		  		<tr>
	    			<td>景点类型:</td>
	    			<td>
                        <select class="easyui-combobox" id="TravelType" name="TravelType">
                            <option value="ciyt" selected="selected">城市观光</option>
                            <option value="mountain">自然景观</option>
                        </select>
	    			</td>
	    		</tr>
                <tr>
	    			<td>出发地:</td>
	    			<td><input class="easyui-textbox" type="text" id="home" name="home" data-options="required:true"></input></td>
	    		</tr>
	    		<tr>
	    			<td>游玩时长:</td>
	    			<td><input class="easyui-textbox" type="text" id="time" name="time" data-options="required:true"></input></td>
	    		</tr>
	    		<tr>
	    			<td>服务语言:</td>
	    			<td>
	    				<select class="easyui-combobox" id="language" name="language">
                            <option value="ar">Arabic</option>
                            <option value="bg">Bulgarian</option>
                            <option value="ca">Catalan</option>
                            <option value="zh-cht" selected="selected">中文</option>
                            <option value="cs">Czech</option>
                            <option value="da">Danish</option>
                            <option value="nl">Dutch</option>
                            <option value="en" >English</option>
                            <option value="et">Estonian</option>
                            <option value="fi">Finnish</option>
                            <option value="fr">French</option>
                            <option value="de">German</option>
                            <option value="el">Greek</option>
                            <option value="ht">Haitian Creole</option>
                            <option value="he">Hebrew</option>
                            <option value="hi">Hindi</option>
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
	    			<td><input class="easyui-textbox" type="text"id="ticketname" name="ticket" data-options="required:true"></input></td>
	    		</tr>
                <tr>
	    			<td>门票价格:</td>
	    			<td><input class="easyui-textbox" type="text" id="ticketmoney" name="money" data-options="required:true"></input></td>
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
        <div style="height:500px;width:500px">
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
                    <input class="easyui-textbox" id="TxTmessage" name="TxTmessage" data-options="multiline:true" style="height:95px; width: 434px;"></input>
                </p>
            <%-- 添加图片 --%>
                <div id="images">
                        <a id="btnimage"  onclick="test()" class="icon-googleplus" style="margin-left:20px;"></a>  
                        <div id="fileups">               
                            
                        <input type="file" class="file-up" name="btnim1"onchange=" previewImages()" style="display:none;"/>
                        <input type="file" class="file-up" name="btnim2" onchange=" previewImages()" style="display:none;"/>
                        <input type="file" class="file-up" name="btnim3" onchange=" previewImages()" style="display:none;"/>
                        </div>
                </div>
                  
                
            </div>
         </div>
        <%-- 系统推荐 --%>
        <div class="XD">
            
        </div>
        </div>
        <input type="button" id="TJ" value="确认" name="TJ" /><input type="file" class="file-up" onchange=" previewImages()" name="btnim0" style="display:none;"/>
     </div>

    </form>
    <script src="js/NI.js"></script>
    <script>
		function submitForm(){
			$('#ff').form('submit');
		}
		function clearForm(){
			$('#ff').form('clear');
		}
	</script>
</body>
  <!--#include virtual="../Tail/Tail.html"-->
</html>
