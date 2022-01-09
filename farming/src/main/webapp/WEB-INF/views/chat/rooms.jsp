<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp" %>


<section class="py-5">
  <div class="container">
       <!-- Breadcrumbs -->
    <ol class="breadcrumb ps-0  justify-content-start">
      <li class="breadcrumb-item"><a href="<c:url value='/index'/>">Home</a></li>
      <li class="breadcrumb-item active">채팅</li>
    </ol>
    <div class="d-flex justify-content-between align-items-center mb-5">
      <h1 class="hero-heading mb-0">Inbox</h1><a class="btn btn-link text-muted" href="#">채팅목록</a>
    </div>
    
    <div class="list-group shadow mb-5">
      <c:if test="${empty list }">
      <div class="list-group-item list-group-item-action p-4">
       	<p>채팅방이 없습니다.</p>
       	</div>
      </c:if> 
      <c:if test="${!empty list }">
      	<c:forEach var="map" items="${list }">
          <div class="list-group-item list-group-item-action p-4">
            <div class="row">
              <div class="col-2 col-lg-1 align-self-lg-center py-3 d-flex align-items-lg-center z-index-10">
                <div class="form-check">
                <input class="form-check-input" id="select_message_4" type="checkbox">
                <label class="form-check-label" for="select_message_4"> </label>
              </div>
            </div>
            <div class="col-9 col-lg-4 align-self-center mb-3 mb-lg-0">
              <div class="d-flex align-items-center mb-1 mb-lg-3">
                <h2 class="h5 mb-0">${map["ROOM_NAME"] }</h2><img class="avatar avatar-sm avatar-border-white ms-3" src="img/avatar/avatar-4.jpg" alt="전문가이미지">
              </div>
              <span class="badge badge-pill p-2 badge-secondary-light">전문분야</span><a class="stretched-link" href="<c:url value='/chat/room?roomNo=${map["ROOM_NO"] }'/>"></a>
            </div>
            <div class="col-10 ms-auto col-lg-7">
              <div class="row">
                <div class="col-md-8 py-3">
                  <p class="text-sm mb-0">마지막메시지 내용</p>
                </div>
                <div class="col-md-4 text-end py-3">
                  <p class="text-sm">마지막메시지 날짜</p>
                </div><a class="stretched-link" href="<c:url value='/chat/room?roomNo=${map["ROOM_NO"] }'/>"></a>
              </div>
            </div>
          </div>
        </div>
        </c:forEach>
      </c:if>
          
    </div>
  </div>
</section>
        <form method="post" action="<c:url value='/chat/create'/> ">
            <input type="text" name="expertEmail" value="${test }" class="form-control">
            <button class="btn btn-secondary btn-create">상대와 채팅방 개설하기</button>
        </form>
<script type="text/javascript">
$(document).ready(function(){

	var roomName = "${room.name}";

    $(".btn-create").on("click", function (e){
        e.preventDefault();

        if(roomName != null){
            console.log("방이 개설되었습니다.");    	
        }
        var name = $("input[name='name']").val();

        if(name == ""){
            alert("Please write the name.");
            name.focus();
        }
        else{
            $("form").submit();        	
        }
    });

});
</script>

<%@ include file="../inc/bottom.jsp" %>