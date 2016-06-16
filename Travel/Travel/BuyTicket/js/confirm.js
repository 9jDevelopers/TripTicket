function sent1() {
    alert(info[0]);
    $.post(
        "ByTkt.ashx",
        {
            action: "Set", jtotal: info[0], jnum: info[1], jsticketname: info[2], jsticketprice: info[3], jsdate: info[4],
            jsticketholder: info[5], jsidcardno: info[6], jstelenum: info[7], jssafe: info[8], t: "待评价"
        },
        function (data) {
            if (data != "") {
                alert(data);
            }
            else {
                alert("data为空");
            }
        }
        );
}
function sent2() {
    $.post(
        "ByTkt.ashx",
        {
            action: "Set", jtotal: info[0], jnum: info[1], jsticketname: info[2], jsticketprice: info[3], jsdate: info[4],
            jsticketholder: info[5], jsidcardno: info[6], jstelenum: info[7], jssafe: info[8], t: "未付款"
        },
        function (data) {
            if (data != "") {
                alert(data);
            }
            else {
                alert("data为空");
            }
        }
        );
}