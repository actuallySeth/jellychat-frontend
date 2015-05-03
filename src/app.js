window.onload = function() {
    $("#Start-Chat").click(function() {
        if($(".chat-name").val() != "" && $(".chat-room").val() != "") {
            nick = $(".chat-name").val()
            room = $(".chat-room").val()
            $(".chat-config").hide()
            $(".chat").show()
            $(".header").show()
            $(".room").show()
            $(".room").text("Room: " + room)
          }
    });

    $("#Go-Home").click(function() {
      $(".chat-config").show()
      $(".chat").hide()
      $(".header").hide()
      $(".room").hide()
      $(".chat-room").val("")
    });

    $("#Send-Chat").click(function() {
       console.log($(".chat-textarea").val())
    });
}
