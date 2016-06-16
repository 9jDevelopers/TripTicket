function lk() {

    $('#aa').panel('refresh', 'HtmlPage1.html');
}
function infomation1() {

    $('#aa').panel('refresh', '../PI/EditPI.aspx');
}
function infomation2() {

    $('#aa').panel('refresh', '../ResetPassword/ResetPassword.aspx');
}
setTimeout(function () {
    $('#aa').panel('refresh', '../PI/EditPI.aspx');
}, 10);