

var updown = document.getElementById("updown");
var detailsupdown = document.getElementById("detailsupdown");
var alignright = document.getElementById("alignright");
var calendar = document.getElementById("calendar");
var Calendar1 = document.getElementById("Calendar1");
var txt;
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

$('#num').numberspinner({
    required: true,
    increment: 1,
    min: 0,
    onSpinUp: function () {
        var number = $("#num").val();
        var pri = document.getElementById("price");

        payfor = vp.value;
        total = number * payfor;
        pri.innerHTML = total;

    },

    onSpinDown: function () {
        var number = $("#num").val();
        var pri = document.getElementById("price");

        payfor = vp.value;
        total = number * payfor;
        pri.innerHTML = total;

    }

});

$('#dt').datetimebox({
    value: '3/4/2010 2:3',
    required: true,
    showSeconds: false

});

var v = $('#dt').datetimebox('getValue');



$("#pay").click(function () {
    var ticketprice = vp.value;
    var ticketname = $("#ticname").html();
    var date = v;
    var ticketholder = $("#N").val();
    var idcardno = $("#I").val();
    var telenum = $("#P").val();
    var safe = document.getElementsByName("s");
    for (var i = 0; i < safe.length; i++) {
        if (safe[i].checked)
            var intHot = safe[i].value;
    }
    if (ticketname == "" || ticketprice == "" || date == "" || ticketholder == "" || idcardno == "" || telenum == "" || safe == "") {
        alert("支付失败 请确认身份信息");
    }
    else {
        $.post(
            "../ByTkt.ashx",
            { action: "Set", jsticketname: $("#ticname").html(), jsticketprice: vp.value, jsdate: date, jsticketholder: $("#N").val(), jsidcardno: $("#I").val(), jstelenum: $("#P").val(), jssafe: intHot },
            function () { }
            );
    }
});
