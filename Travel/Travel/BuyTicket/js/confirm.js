/// <reference path="E:\tl\TripTicket\Travel\Travel\Orderform/Orderform.aspx" />


function sent1() {
    var th = $.cookie('tktholder');
    var tn = $.cookie('tktname');
    $.post(
        "ByTkt.ashx",
        {
            action: "Set", jtotal: info[0], jnum: info[1], jsticketname: tn, jsticketprice: info[2], jsdate: info[3],
            jsticketholder: th, jsidcardno: info[4], jstelenum: info[5], jssafe: info[6], t: "待评价"
        },
        function (data) {
            if (data != "") {
                alert(data);
                window.location.href = "/Orderform/Orderform.aspx";
            }
            else {
                alert("data为空");
            }
        }
        );
}
function sent2() {
    
    var th = $.cookie('tktholder');
    var tn = $.cookie('tktname');
    $.post(
        "ByTkt.ashx",
        {
            action: "Set", jtotal: info[0], jnum: info[1], jsticketname: tn, jsticketprice: info[2], jsdate: info[3],
            jsticketholder: th, jsidcardno: info[4], jstelenum: info[5], jssafe: info[6], t: "未付款"
        },
        function (data) {
            if (data != "") {
                alert(data);
                window.location.href = "/Orderform/Orderform.aspx";
            }
            else {
                alert("data为空");
            }
        }
        );
}