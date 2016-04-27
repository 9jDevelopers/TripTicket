<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="judge.aspx.cs" Inherits="Travel.judge.judge" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="css/judging.css" rel="stylesheet" />
    <link href="../Head/Head.css" rel="stylesheet" />
    <link href="../Tail/Tail.css" rel="stylesheet" />
    <script src="../easyui/easyloader.js"></script>
    <script src="../easyui/jquery.easyui.min.js"></script>
    <script src="../easyui/jquery.easyui.mobile.js"></script>
    <script src="../easyui/jquery.min.js"></script>
    <title></title>
    </head>
<body>
     <!--#include virtual="../Head/Head.html"-->
    <form id="form1" runat="server">
      <div class="da">

           <div class="yu">

             <div class="dh">  
              <div class="leftbox">
                         <div class="first"><div class="ga"><a href="#"><img src="images/er'r.jpg"/></a></div></div> 
                         <div class="se">
                         <div class="tu"><a><</a></div>
                         <div class="io"><a href="#"><img class="" src="images/e.jpg"/></a></div>
                         <div class="io"><a href="#"><img class="" src="images/er'r.jpg"/></a></div>
                         <div class="io"><a href="#"><img class="" src="images/er.jpg" /></a></div>
                         <div class="io"><a href="#"><img class="" src="images/f.jpg" /></a></div>
                         <div class="tu"><a>></a></div>
                         </div>
               </div>

               <div class="centerbox"> <!--产品介绍-->
                  <div> <h3><a href="#"><%=titlename %><%--【上海-台湾】台湾环岛7晚8日经典跟团游
                 （免费升等2晚五花酒店，囊括经典环岛路线）“去台湾，正当时！一去就爱上”【处境特卖】--%></a></h3></div>
                  <div> 台湾经典环岛游，最全的环岛路线！</div>
                  <div>出发地：上海</div>
                  <div>目的地：台湾  台北  高雄  花莲市</div>
                  <div>出行日期：2016.10.15</div>
                  <div class="price"> ￥ 3580起  6.8折  <s>￥5280</s></div>
               </div>

            </div>

               <div class="rightbox"> <!--公司信誉简介-->
                 <div class="q">
                 <div>产品编号 43399</div>
                 <div>好评率 <span class="red"> 100%</span></div>
                 <div class="r">￥价格保证</div>
                 <div class="r"> #推定保障</div>
                 <div class="r"> *救援保障</div>
                 <div class="r"> @7*24小时服务</div>
                   <hr />
                 <div><img  src="images/20131211092723-939931253.jpg"/></div>
                 <div> 扫一扫更优惠</div>
                    <hr />
                 <div>  &分享   + 收藏</div>
                 </div>
              </div>

        </div>

        <!--表二-->
                <div class="downbox">
                    <div class="s">认真写评价最多可获得天猫达人成长值20点！</div>
                   <div class="ty"><h2>其他买家，需要你的建议哦！</h2></div>

                   <div class="sd">
                    <div class="e">
                         <div class="j1"><div class="tx1">景点评价</div>
                          <div class="b1"> <input class="easyui-textbox" id="TxTmessage1" name="TxTmessage" data-options="multiline:true" style="height:130px; width: 100%;"/>
                           </div></div>
                          <div class="j2"><div class="tx2">服务评价</div>
                          <div class="b2"><input class="easyui-textbox" id="TxTmessage2" name="TxTmessage" data-options="multiline:true" style="height:90px; width: 100%;"/>
                          </div></div>
                          <div class="j3"><div class="tx3">晒图片</div>
                              <div class="b3">
                          <a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-add'">
                          <img src="images/xing.jpg" /></a><div class="pic">0/5</div></div></div>
                     </div>
                    

                    <div class="ee">
                          <div><div>描述相符</div>
                             <div class="star_bg">
                             <a class="star star_1"></a>
                             <a class="star star_2"></a>
                             <a class="star star_3"></a>
                             <a class="star star_4"></a>
                              <a class="star star_5"></a>  
                           </div>
                          </div>
                          <div><div>卖家服务</div><div class="star_bg">
                             <a class="star star_1"></a>
                             <a class="star star_2"></a>
                             <a class="star star_3"></a>
                             <a class="star star_4"></a>
                              <a class="star star_5"></a>
                           </div>
                          </div>
                          <div>
                              <div>物流服务</div><div class="star_bg">
                             <a class="star star_1"></a>
                             <a class="star star_2"></a>
                             <a class="star star_3"></a>
                             <a class="star star_4"></a>
                              <a class="star star_5"></a>
                           </div>
                          </div>
                     </div>
                    </div>

                   <div>

                   <div class="fu">
                       <div><h2>关于服务</h2></div>
                       <hr/>
                       <div class="f"><input type="text"  placeholder="快递员：服务态度" /></div>
                       <div class="f"><input type="radio" name="identity" value="" checked="checked" />失望</div>
                       <div class="f"><input type="radio" name="identity" value="" />不满</div>
                       <div class="f"><input type="radio" name="identity" value="" />一般</div>
                       <div class="f"><input type="radio" name="identity" value="" />满意</div>
                       <div class="f"><input type="radio" name="identity" value="" />惊喜</div>
                    </div>
                  </div>

                   <div class="qwe">
                     <div class="l"><input type="checkbox" />匿名评价</div>
                    <div  class="submit"><a href="#"><input type="submit" class="red" value="提交评价"/></a></div>
                  </div>
             </div>
       
      
      
       <!--表三-->
         
             <div class="boxthree"> 
                  <div class="l"><input type="checkbox" /> 全部</div>
                  <div class="l"><input type="checkbox"/>追评（12）</div>
                  <div class="l"><input type="checkbox"/>图片（18）</div>
                  <div class="c"><input type="checkbox"/>有内容</div>
                  <div class="c">
                  <select> 
                  <option>按默认</option> 
                  <option></option> 
                  <option></option> 
                  <option></option> 
                  <option></option> 
                  </select>
                  </div>
             </div>

       
    </div>
    </form>
    <!--#include virtual="../Tail/Tail.html"-->
</body>
</html>
