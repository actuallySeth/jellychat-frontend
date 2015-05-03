window.onload = function() {
    $("#Start-Chat").click(function() {
        if($(".chat-name").val() != "" && $(".chat-room").val() != "") {
            nick = $(".chat-name").val()
            room = $(".chat-room").val()
            $(".chat-config").hide()
            $(".chat").show()
            $(this).removeClass("active");
    });
    $("#Go-Home").click(function() {
      $(".chat-config").show()
      $(".chat").hide()
    });
}
