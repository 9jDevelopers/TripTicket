function submitbox() {            //函数名需要和前台onclick一样
    $('#sf').form('submit');
    $("#submitbox").click(
        function () {
            $.post(
                         "judge.ashx",
                 {
                     //Evaluationofgood: $("#mement1").val(),    把前台"#id名"赋给后台id
                     Evaluationofgood:$("#mement1").val(),
                     Evaluationservice:$("#mement2").val(),
                 },
                 function (data) {
                     if (data == "1") {
                         alert("提交成功");
                     }
                     else {
                         alert("提交失败");
                     }
                 }
                )
        }
        )
}