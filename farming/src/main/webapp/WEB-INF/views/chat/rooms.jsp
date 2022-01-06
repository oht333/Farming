<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp" %>


<head>
	<meta charset="UTF-8" />
	<title>Hello2</title>
</head>
<body>
        <div class="container">
            <div>
                <ul>
                <c:if test="${empty list }">
                	<p>채팅방이 없습니다.</p>
                </c:if>
                <c:if test="${!empty list }">
	                <c:forEach var = "ChatRoomDTO" items="${list }">
	                	<li><a href="<c:url value='/chat/room?roomId=${ChatRoomDTO.roomId }'/>" target="_blank">${ChatRoomDTO.name }</a></li>
	                </c:forEach>
                </c:if>
                </ul>
            </div>
        </div>
        <form method="post" action="<c:url value='/chat/room'/> ">
            <input type="text" name="name" class="form-control">
            <button class="btn btn-secondary btn-create">상대와 채팅방 개설하기</button>
        </form>
<script type="text/javascript">
$(document).ready(function(){

	var roomName = "${room.name}";

    $(".btn-create").on("click", function (e){
        e.preventDefault();

        if(roomName != null)
            alert("방이 개설되었습니다.");
        var name = $("input[name='name']").val();

        if(name == "")
            alert("Please write the name.")
        else
            $("form").submit();
    });

});
</script>

<%@ include file="../inc/bottom.jsp" %>