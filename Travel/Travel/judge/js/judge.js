function submitbox() {
    $('#sf').form('submit');
    $("submitbox").click(
        function (){
            $.post(
                         "../../../judge.aspx",
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