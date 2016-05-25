$(document).ready(function () {
    var btn = document.getElementById('btnl');
    $("#btnlogin").click(function () {
        alert(1);
        $.post(
               "Administrator.ashx",
                { loginname:$("#txtloginname").val(), password: $("#txtpassword").val() },
                function (data) {
                    if (data == "") {
                        alert("账户名或密码错误");
                    }
                    else{
                        $("#lbody").hide();
                        var obj = $.parseJSON(data);
                        if(obj.addAD=="1")
                        {
                            $("#addAD").show();
                        }
                        if(obj.addScenic=="1")
                        {
                            $("#addSec").show();
                        }
                    }
                });
    });
});