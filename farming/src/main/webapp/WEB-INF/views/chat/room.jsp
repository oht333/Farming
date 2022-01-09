<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp" %>
<section class='py-5'>
     <div class="container">
     	<ol class='breadcrumb ps-0  justify-content-start'>
          <li class='breadcrumb-item'><a href='<c:url value='/index'/>'>Home</a></li>
          <li class='breadcrumb-item active'>전문가와 채팅</li>
        </ol>
      	<div class='d-flex flex-column flex-md-row justify-content-md-between align-items-md-center mb-4'>
          <c:if test="${user eq '사용자' }">
          <h1 class='mb-3 mb-md-0 hero-heading mb-0'>전문가와 채팅하기</h1>
          </c:if>
          <c:if test="${user eq '전문가' }">
          <h1 class='mb-3 mb-md-0 hero-heading mb-0'>의뢰인과 채팅하기</h1>
          </c:if>
          <div><a class='btn btn-link ps-0' href='<c:url value='/chat/rooms'/>'><i class='fa fa-arrow-left me-2'></i>채팅목록</a></div>
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
        
        <c:if test="${user eq '사용자' }">
        	<input type="hidden" value="${memNo }" name="userNo" id="userNo">
        </c:if>
        <c:if test="${user eq '전문가' }">
        	<input type="hidden" value="${expNo }" name="userNo" id="userNo">
        </c:if>
        <input type="hidden" value="${param.roomNo }" name="roomNo" id="roomNo">
        
        
      <div class='px-4 py-5'>
          <div class='row'>
          
			<div id="msgArea" style="overflow:auto; width:100%; height: 650px;">
				<c:if test="${!empty dtoList }">
					<c:forEach var="dto" items="${dtoList }">
						<c:if test="${dto.writer eq name }">
							<div class="d-flex-end col-md-9 col-xl-7 ms-auto mb-3">
					          <div class='me-3'>
					            <div class="bg-primary rounded p-4 mb-2">
					              <p class="text-sm mb-0 text-white">${dto.message }</p>
					            </div>
					            <p class="small text-muted ms-3"><fmt:formatDate value="${dto.time }" pattern="yyyy-MM-dd HH:ss"/></p>
					          </div><img class="avatar avatar-border-white flex-shrink-0" src="<c:url value='/resources/userImg/${userImg }'/>" alt="user">
					        </div>
					    </c:if>
					    <c:if test="${dto.writer ne name }">
					    	<div class="d-flex col-md-9 col-xl-7 mb-3"><img class="avatar avatar-border-white flex-shrink-0" src="<c:url value='/resources/userImg/${userImg }'/>" alt="user">
				              <div class="ms-3">
				                <div class="bg-gray-200 rounded p-4 mb-2">
				                  <p class="text-sm mb-0">${dto.message }</p>				                  
				                </div>
				                <p class="small text-muted ms-3"><fmt:formatDate value="${dto.time }" pattern="yyyy-MM-dd HH:ss"/></p>
				              </div>
				            </div>
					    </c:if>
					</c:forEach>
				</c:if>
			</div>
			
			<div class="bg-light rounded shadow-sm" style="margin: 0; padding: 0;">
				<div class="input-group">
	           	 	<textarea class="form-control border-0 p-4 bg-light text-sm" id="msg" placeholder="Type a message" ></textarea>
	            	<button class="btn btn-link" id="button-send" style="margin: 0;"><i class="fa fa-paper-plane"></i></button>
	        	</div>
			</div>
			<div id="div1"></div>
	 	 </div>
    </div>
  </div>
</section>
<script src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	var userNo = $('#userNo').val();
	
	$('textarea').on('keydown', function(event) {
	    if (event.keyCode == 13){
         	if(!event.shiftKey){
	            event.preventDefault();
	            $('#button-send').click();
          	} 
	    }
	});
	    
	var today = new Date();
	var year = today.getFullYear();
	var month = ('0' + (today.getMonth() + 1)).slice(-2);
	var day = ('0' + today.getDate()).slice(-2);
	// 시 getHours()
	var hours = today.getHours();
	// 분 getMinutes()
	var minutes = today.getMinutes();

	var dateString = year+'-'+month+'-'+day+' '+hours+':'+minutes;
	
	var roomName = "${room.name}";
    var roomNo = "${room.roomNo}";
    var username = "${name}";


    console.log(roomName + ", " + roomNo + ", ");

    var sockJs = new SockJS("/farming/stomp/chat");
    //1. SockJS를 내부에 들고있는 stomp를 내어줌
    var stomp = Stomp.over(sockJs);
	
    //2. connection이 맺어지면 실행
    stomp.connect({}, function (){
       console.log("STOMP Connection")

       //4. subscribe(path, callback)으로 메세지를 받을 수 있음
       stomp.subscribe("/sub/chat/room/" + roomNo, function (chat) {
           var content = JSON.parse(chat.body);

           var writer = content.writer;
           var str = '';
           
           if(writer === username){
        	   str = "<div class='d-flex-end col-md-9 col-xl-7 ms-auto mb-3'>";
               str += "<div class='me-3'>";
               str += "<div class='bg-primary rounded p-4 mb-2'>";
               str += "<p class='text-sm mb-0 text-white'>"+content.message+"</p></div>";
               str += "<p class='small text-muted ms-3'>"+dateString+"</p>";
               str += "</div><img class='avatar avatar-border-white flex-shrink-0' src='<c:url value='/resources/userImg/${userImg }'/>' alt='user'>";
               str += "</div>";
               $("#msgArea").append(str);
           }else{
        	   str = "<div class='d-flex col-md-9 col-xl-7 mb-3'><img class='avatar avatar-border-white flex-shrink-0' src='<c:url value='/resources/userImg/${userImg }'/>' alt='user'>";
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
       stomp.send('/pub/chat/enter', {}, JSON.stringify({roomNo: roomNo, writer: username}))
    });

    $("#button-send").on("click", function(e){
        var msg = document.getElementById("msg");

        $.ajax({
        	url:"<c:url value='/chat/save'/>",
        	type:'post',
        	data:{
        		message:msg.value,
        		userNo:userNo,
        		roomNo:roomNo,
        		username:'${name}'
        	},
        	success : function(data) {},
       		error : function( request, status, error) {
       			console.log("code : "+request.status+"\n"+"message : "+request.responseText);
       		}
        });
        
        console.log(username + ":" + msg.value);
        console.log(userNo);
        stomp.send('/pub/chat/message', {}, JSON.stringify({roomNo: roomNo, message: msg.value, writer: username}));
        msg.value = '';
        
    });
    
});
</script>
<%@ include file="../inc/bottom.jsp" %>