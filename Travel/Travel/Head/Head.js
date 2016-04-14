$(document).ready(function () {
    $("#btnclose").click(function () {
        $("#qbody").hide();
    });
    $("#btnl").click(function () {
        $("#qbody").show();
    });
    $("#btnlogin").click(function(){
        var u = $("#txtusername").val();
        var p = $("#txtpassword").val();
        alertl();
        alert(u);
        alert(p);
        $.post(
               "../LoginHandler.ashx",
                { userName: $("#txtusername").val(), passWord: $("#txtpassword").val() },
                function (data) {
                    if (data == "") {
                        alert("账户名或密码错误");
                    }
                    else {
                        alertl();
                    }
                }
        );
    });
});

