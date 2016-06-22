

var updown = document.getElementById("updown");
var detailsupdown = document.getElementById("detailsupdown");
var alignright = document.getElementById("alignright");
var calendar = document.getElementById("calendar");
var Calendar1 = document.getElementById("Calendar1");
var txt;
var vp = document.getElementById("vp");
updown.onclick = function () {
    txt = this.value;
    if (txt === "详情▼") {
        detailsupdown.style.display = "none";
        this.value = "详情▲"
    }
    else {
        detailsupdown.style.display = "block";
        this.value = "详情▼"
    }
}
alignright.onclick = function () {

    detailsupdown.style.display = "none";
    updown.value = "详情▲";
}


var total;
var pri = document.getElementById("price");

$('#num').numberspinner({
    required: true,
    increment: 1,
    min: 0,
    onSpinUp: function () {
        var ih = $('input:radio[name="s"]:checked').val();
        var iht = ih.split("￥");
        var sfpri = parseInt(iht[1]);
        var number = $("#num").val();
        payfor = vp.value;
        total = number * payfor;
        total += sfpri;
        pri.innerHTML = total;

    },

    onSpinDown: function () {
        var ih = $('input:radio[name="s"]:checked').val();
        var iht = ih.split("￥");
        var sfpri = parseInt(iht[1]);
        var number = $("#num").val();
        payfor = vp.value;
        total = number * payfor;
        total += sfpri;
        pri.innerHTML = total;

    }
});

$("input[name=s]").click(function () {
    var ih = $('input:radio[name="s"]:checked').val();
    var iht = ih.split("￥");
    var sfpri = parseInt(iht[1]);
    var number = $("#num").val();
    payfor = vp.value;
    total = number * payfor;
    total += sfpri;
    pri.innerHTML = total;
});

$('#dt').datetimebox({
    value: '3/4/2010 2:3',
    required: true,
    showSeconds: false

});

var v = $('#dt').datetimebox('getValue');


$("#pay").click(function () {
    if ($.cookie('username') != "" && $.cookie('username') != null) {


        var nnn = $("#num").val();
        var ticketholder = $("#N").val();
        var idcardno = $("#I").val();
        var telenum = $("#P").val();
        var ticketprice = vp.value;
        var ticketname = $("#ticname").html();
        $.cookie('tktholder', ticketholder, { path: '/' });
        $.cookie('tktname', ticketname, { path: '/' });
        var date = v;
        var safe = document.getElementsByName("s");
        var ih = $('input:radio[name="s"]:checked').val();
        var iht = ih.split("￥");
        var intHot = iht[0];
        if (total == "" || ticketname == "" || ticketprice == "" || date == "" || ticketholder.length < 3 || ticketholder.length > 10 || idcardno.length != 18 || telenum.length != 11 || safe == "" || nnn == "") {
            alert("支付失败 请确认身份信息");
        }
        else {
            window.location = "confirm.html?tal=" + total + "$" + nnn + "$"
            + ticketprice + "$" + date + "$" + idcardno + "$" + telenum + "$" + intHot;
            //$.post(
            //    "ByTkt.ashx",
            //    { action: "Set", jtotal:total,jnum: $("#num").val(), jsticketname: $("#ticname").html(), jsticketprice: vp.value, jsdate: date, jsticketholder: $("#N").val(), jsidcardno: $("#I").val(), jstelenum: $("#P").val(), jssafe: intHot },
            //    function (data) {
            //        if (data != "") {
            //            alert(data);

            //        }
            //        else {
            //            alert("data为空");
            //        }
            //    }
            //    );
        }
    }
    else {
        alert("请登录");
    }
});
