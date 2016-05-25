<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Preview.aspx.cs" Inherits="Travel.Preview.Preview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="css/Preview.css" rel="stylesheet" />
    <link href="../Head/Head.css" rel="stylesheet" />
    <link href="../Tail/Tail.css" rel="stylesheet" />
    <link href="../easyui/themes/default/easyui.css" rel="stylesheet" />
    <link href="../easyui/themes/icon.css" rel="stylesheet" />
    <link href="../easyui/demo/demo.css" rel="stylesheet" />
    <script src="../easyui/jquery.min.js"></script>
    <script src="../easyui/jquery.easyui.min.js"></script>
    <script src="../References/jquery-1.8.3.min.js"></script>
    <script src="../Head/Head.js"></script>
</head>
<body>
    <!--#include virtual="../Head/Head.html"-->
    <form id="form1" runat="server">
        <%-- 景点预览 --%>
    <div class="yi">
         <%--小导航栏--%>
         <ul> 
             <li><a href="#">精选</a></li> 
             <li><a href="#">跟团游</a></li> 
             <li><a href="#">自由行</a></li> 
             <li><a href="#">当地游</a></li> 
             <li><a href="#">邮轮游</a></li> 
             <li><a href="#">更多特卖汇</a></li> 
         </ul>
         <%--正文--%>
         <div class="er">
             <div class="si">
                 <div class ="img">
                      <a target="_blank" href="/i/tulip_ballade.jpg">
                      <img src="/Preview/img/dde448f3fd9b9343.jpg" />
                      </a>
                      <div class="desca"><%= name %></div>
                      <div class="descb">
                          描述
                          <br/><div id="describe" class ="b">4.8↑</div>
                      </div>
                      <div class="descb">
                          服务
                          <br/><div id="Sellerservice" class ="b">4.8↑</div>
                      </div>
                      <div class="descb">
                          体验值
                          <br/><div class ="b">4.8↑</div>
                      </div>                     
                      <div class="desc">
                          <div class="descc">￥</div>
                          900
                          <div class="descd"><br/>起</div>
                      </div>                    
                 </div>
                 <div class ="img">
                      <a target="_blank" href="/i/tulip_ballade.jpg">
                      <img src="/Preview/img/18cc33a0080a03a5.jpg" />
                      </a>
                      <div class="desca"><%= name %></div>
                      <div class="descb">
                          描述
                          <br/><div class ="b">4.8↑</div>
                      </div>
                      <div class="descb">
                          服务
                          <br/><div class ="b">4.8↑</div>
                      </div>
                      <div class="descb">
                          体验值
                          <br/><div class ="b">4.8↑</div>
                      </div>
                      <div class="desc">
                          <div class="descc">￥</div>
                          900
                          <div class="descd"><br/>起</div>
                      </div> 
                 </div>
                 <div class ="img">
                      <a target="_blank" href="/i/tulip_ballade.jpg">
                      <img src="/Preview/img/497f685f04c0ab8b.jpg" />
                      </a>
                      <div class="desca"><%= name %></div>
                      <div class="descb">
                          描述
                          <br/><div class ="b">4.8↑</div>
                      </div>
                      <div class="descb">
                          服务
                          <br/><div class ="b">4.8↑</div>
                      </div>
                      <div class="descb">
                          体验值
                          <br/><div class ="b">4.8↑</div>
                      </div>
                      <div class="desc">
                          <div class="descc">￥</div>
                          900
                          <div class="descd"><br/>起</div>
                      </div> 
                 </div>
                 <div class ="img">
                      <a target="_blank" href="/i/tulip_ballade.jpg">
                      <img src="/Preview/img/a5cd781a08f8c1f1.jpg" />
                      </a>
                      <div class="desca"><%= name %></div>
                      <div class="descb">
                          描述
                          <br/><div class ="b">4.8↑</div>
                      </div>
                      <div class="descb">
                          服务
                          <br/><div class ="b">4.8↑</div>
                      </div>
                      <div class="descb">
                          体验值
                          <br/><div class ="b">4.8↑</div>
                      </div>
                      <div class="desc">
                          <div class="descc">￥</div>
                          900
                          <div class="descd"><br/>起</div>
                      </div> 
                 </div>
             </div>
             <div class="si">
                 <div class ="img">
                      <a target="_blank" href="/i/tulip_ballade.jpg">
                      <img src="/Preview/img/c9c81519a9c61128.jpg" />
                      </a>
                      <div class="desca"><%= name %></div>
                      <div class="descb">
                          描述
                          <br/><div class ="b">4.8↑</div>
                      </div>
                      <div class="descb">
                          服务
                          <br/><div class ="b">4.8↑</div>
                      </div>
                      <div class="descb">
                          体验值
                          <br/><div class ="b">4.8↑</div>
                      </div>
                      <div class="desc">
                          <div class="descc">￥</div>
                          900
                          <div class="descd"><br/>起</div>
                      </div> 
                 </div>
                 <div class ="img">
                      <a target="_blank" href="/i/tulip_ballade.jpg">
                      <img src="/Preview/img/d551dc3dd22a77db.jpg" />
                      </a>
                      <div class="desca"><%= name %></div>
                      <div class="descb">
                          描述
                          <br/><div class ="b">4.8↑</div>
                      </div>
                      <div class="descb">
                          服务
                          <br/><div class ="b">4.8↑</div>
                      </div>
                      <div class="descb">
                          体验值
                          <br/><div class ="b">4.8↑</div>
                      </div>
                      <div class="desc">
                          <div class="descc">￥</div>
                          900
                          <div class="descd"><br/>起</div>
                      </div> 
                 </div>
                 <div class ="img">
                      <a target="_blank" href="/i/tulip_ballade.jpg">
                      <img src="/Preview/img/e748df4857078110.jpg" />
                      </a>
                      <div class="desca"><%= name %></div>
                      <div class="descb">
                          描述
                          <br/><div class ="b">4.8↑</div>
                      </div>
                      <div class="descb">
                          服务
                          <br/><div class ="b">4.8↑</div>
                      </div>
                      <div class="descb">
                          体验值
                          <br/><div class ="b">4.8↑</div>
                      </div>
                      <div class="desc">
                          <div class="descc">￥</div>
                          900
                          <div class="descd"><br/>起</div>
                      </div> 
                 </div>
                 <div class ="img">
                      <a target="_blank" href="/i/tulip_ballade.jpg">
                      <img src="/Preview/img/e8cd55da374aba56.jpg" />
                      </a>
                      <div class="desca"><%= name %></div>
                      <div class="descb">
                          描述
                          <br/><div class ="b">4.8↑</div>
                      </div>
                      <div class="descb">
                          服务
                          <br/><div class ="b">4.8↑</div>
                      </div>
                      <div class="descb">
                          体验值
                          <br/><div class ="b">4.8↑</div>
                      </div>
                      <div class="desc">
                          <div class="descc">￥</div>
                          900
                          <div class="descd"><br/>起</div>
                      </div> 
                 </div>
             </div>
         </div>
         <div class="san">
             <a target="_blank" href="/i/tulip_ballade.jpg">
             <img src="/Preview/img/276197720360c2be.jpg" />
             </a>
         </div>
    </div>
    <hr/>
    </form>
         <!--#include virtual="../Tail/Tail.html"-->
<%--    <script>
        var objs;
        window.onload = function () {
            var describe = document.getElementById('describe');
            var Sellerservice = document.getElementById('Sellerservice');
            $.post("Preview.ashx", { action: 'getinfo', describe: $.cookie('describe') },
                function (data) {
                    var obj = $.parseJSON(data);
                    describe.innerHTML = $.cookie('describe');
                    Sellerservice.innerHTML = obj.Sellerservice;

                });
        }
    </script>--%>
</body>
</html>
