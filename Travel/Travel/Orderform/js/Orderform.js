
function lk() {

    $('#aa').panel('refresh', 'HtmlPage1.html');
}
function infomation1() {

    $('#aa').panel('refresh', '../PI/EditPI.aspx');
}
function infomation2() {

    $('#aa').panel('refresh', '../ResetPassword/ResetPassword.aspx');
}
function infomation3() {

    $.cookie('username', null, { path: '/' });
    $.post(
            "../Head/LoginHandler.ashx",
            { action: "Logout"},
             function (data) {
                 if (data == "1") {
                     alert('注销成功');
                     window.location.href = "../Index/Index.aspx";
                 }
             });
    
}
setTimeout(function () {
    $('#aa').panel('refresh', '../PI/EditPI.aspx');
}, 10);