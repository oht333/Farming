<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp" %>
<section class='py-5'>
     <div class="container">
     	<ol class='breadcrumb ps-0  justify-content-start'>
          <li class='breadcrumb-item'><a href='index.html'>Home</a></li>
          <li class='breadcrumb-item'><a href='user-messages.html'>Inbox</a></li>
          <li class='breadcrumb-item active'>Your messages with Anna   </li>
        </ol>
      	<div class='d-flex flex-column flex-md-row justify-content-md-between align-items-md-center mb-4'>
          <h1 class='mb-3 mb-md-0 hero-heading mb-0'>Your messages with Anna</h1>
          <div><a class='btn btn-link ps-0' href='user-messages.html'><i class='fa fa-arrow-left me-2'></i> Back to all messages</a></div>
        </div>
        <div class='card border-0 shadow mb-4'>
          <div class='card-body p-4'>
            <div class='text-block pb-3'>
              <div class='d-flex align-items-center justify-content-between'>
                <div>
                  <h6> <a class='text-reset' href='detail-rooms.html'>Modern Apt - Vibrant Neighborhood</a></h6>
                  <p class='text-muted text-sm mb-0'>Entire home in New York</p>
                  <div class='mt-n1'><i class='fa fa-xs fa-star text-primary'></i><i class='fa fa-xs fa-star text-primary'></i><i class='fa fa-xs fa-star text-primary'></i><i class='fa fa-xs fa-star text-primary'></i><i class='fa fa-xs fa-star text-gray-200'></i>
                  </div>
                </div><a href='detail-rooms.html'><img class='ms-3 rounded flex-shrink-0' src='img/photo/photo-1512917774080-9991f1c4c750.jpg' alt='' width='100'></a>
              </div>
            </div>
            <div class='text-block pt-3 pb-0'>
              <ul class='list-unstyled text-sm mb-0'>
                <li class='mb-3'><i class='fas fa-users fa-fw text-muted me-2'></i>3 guests</li>
                <li class='mb-0'><i class='far fa-calendar fa-fw text-muted me-2'></i>Apr 17, 2019 <i class='fas fa-arrow-right fa-fw text-muted mx-3'></i>Apr 18, 2019</li>
              </ul>
            </div>
          </div>
        </div>
        
      <div class='px-4 py-5'>
          <div class='row'>
          
			<div id="msgArea"></div>
			
			
			<div class='bg-light rounded shadow-sm' style="margin: 0; padding: 0;">
				<div class='input-group'>
	           	 	<textarea class='form-control border-0 p-4 bg-light text-sm' id="msg" placeholder='Type a message' ></textarea>
	            	<button class='btn btn-link' id="button-send" style="margin: 0;"><i class='fa fa-paper-plane'></i></button>
	        	</div>
			</div>
			
	 	 </div>
    </div>
  </div>
</section>
<script src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	
	$(function() {
	    $('textarea').on('keydown', function(event) {
	        if (event.keyCode == 13){
            	if(!event.shiftKey){
	                event.preventDefault();
	                $('#button-send').click();
            	} 
	        }
	    });
	    
	    
	    function button_click() {
	        console.log("you pressed submit button!");
	    }
	});

	var roomName = "${room.name}";
    var roomId = "${room.roomId}";
    var username = "${name}";


    console.log(roomName + ", " + roomId + ", ");

    var sockJs = new SockJS("/farming/stomp/chat");
    //1. SockJS를 내부에 들고있는 stomp를 내어줌
    var stomp = Stomp.over(sockJs);
	
    //2. connection이 맺어지면 실행
    stomp.connect({}, function (){
       console.log("STOMP Connection")

       //4. subscribe(path, callback)으로 메세지를 받을 수 있음
       stomp.subscribe("/sub/chat/room/" + roomId, function (chat) {
           var content = JSON.parse(chat.body);

           var writer = content.writer;
           var str = '';
           
           if(writer === username){
        	   str = "<div class='d-flex-end col-md-9 col-xl-7 ms-auto mb-3'>";
               str += "<div class='me-3'>";
               str += "<div class='bg-primary rounded p-4 mb-2'>";
               str += "<p class='text-sm mb-0 text-white'>"+content.message+"</p></div>";
               str += "<p class='small text-muted ms-3'>12:00 PM | Aug 13</p>";
               str += "</div><img class='avatar avatar-border-white flex-shrink-0' src='img/avatar/avatar-10.jpg' alt='user'>";
               str += "</div>";
               $("#msgArea").append(str);
           }else{
        	   str = "<div class='d-flex col-md-9 col-xl-7 mb-3'><img class='avatar avatar-border-white flex-shrink-0' src='img/avatar/avatar-1.jpg' alt='user'>";
               str +="<div class='ms-3'>";
               str +="<div class='bg-gray-200 rounded p-4 mb-2'>";
               str +="<p class='text-sm mb-0'>"+content.message+"</p></div>";
               str +="<p class='small text-muted ms-3'>12:00 PM | Aug 13</p>";
               str += "</div>";
               str +="</div>";
               $("#msgArea").append(str);
               
           }
       });

       //3. send(path, header, message)로 메세지를 보낼 수 있음
       stomp.send('/pub/chat/enter', {}, JSON.stringify({roomId: roomId, writer: username}))
    });

    $("#button-send").on("click", function(e){
        var msg = document.getElementById("msg");

        console.log(username + ":" + msg.value);
        stomp.send('/pub/chat/message', {}, JSON.stringify({roomId: roomId, message: msg.value, writer: username}));
        msg.value = '';
    });
});
</script>
<%@ include file="../inc/bottom.jsp" %>