$("#TJ").click
    (
        function()
        {
            var name = $("#name").val();
            var TravelType = $("#TravelType").val();
            var home = $("#home").val();
            var time = $("#time").val();
            var language = $("#language").val();
            var ticketname = $("#ticketname").val();
            var ticketmoney = $("#ticketmoney").val();
            var TxTmessage = $("#TxTmessage").val();

            $.post
            (
            "NewIntrodce.ashx",
            {
                name: $("#name").val(),
                TravelType: $("#TravelType").val(),
                home: $("#home").val(),
                time: $("#time").val(),
                language:("#language").val(),
                ticketname:("#ticketame").val(),
                ticketmoney: ("#ticketmoney").val(),
                TxTmessage: ("#TxTmessage").val(),
            },
            function(data)
            {
                if(data=="")
                {
                    alert("在次输入");
                }
                else{
                    alert(data + "123");
                }
            }
            )
        }
    )