<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Insert title here</title>
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
<link rel="icon" href="/favicon.ico" type="image/x-icon">
</head>
<body>
	<div class="section section-lg bg-soft">
            <div class="container">
                <div class="col-12">
	<div class="col-8 col-lg-8" style="margin:0 auto;">
		<div id="msgArea"></div>
		<textarea class="form-control border border-light-gray" id="msg" placeholder="Your Message" rows="6" maxlength="1000" required></textarea>
		<div>
	    	<button id="button-send" class="btn btn-dark mt-0" style="width: 100%">전송</button>
		</div>
	</div>
</div>
</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){

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
        	   str = "<div class='card bg-primary text-white border-light p-4 ml-md-5 ml-lg-6 mb-4'>";
               str += "<div class='d-flex justify-content-between align-items-center mb-2'>";
               str += "<span class='font-small'>";
               str += "<span class='font-weight-bold'>"+writer+"</span>";
               str += "<span class='ml-2'>March 26, 19:25</span>";
               str += "</span></div><p class='m-0'>"+content.message+"</p></div>";
               str += "</div></div>";
               $("#msgArea").append(str);
           }else{
        	   str = "<div class='card bg-white border-light p-4 mb-4'>";
               str +="<div class='d-flex justify-content-between align-items-center mb-2'>";
               str +="<span class='font-small'>";
               str +="<a href='#'>";
               str +="<img class='avatar-sm img-fluid rounded-circle mr-2' src='../../assets/img/team/profile-picture-1.jpg' alt='avatar'>";
               str += "<span class='font-weight-bold'>"+writer+"</span>";
               str +="</a><span class='ml-2'>March 26, 19:25</span></span>";
               str +="</div><p class='m-0'>"+content.message+"</p></div>";
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
</body>
</html>