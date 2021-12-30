<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp" %>

<body>
<div class="divForm">
<form name="frmWrite" method="post" enctype="multipart/form-data"
	action="<c:url value='/qna/qnaWrite.do'/>" >
 <fieldset>
	<legend>글쓰기</legend>
        <div class="firstDiv">
            <label for="title">제목</label>
            <input type="text" id="title" name="title" class="infobox" />
        </div>
        <div>
            <label for="name">이름</label>
            <input type="text" id="name" name="name" class="infobox" />
        </div>
        <div>  
        	<label for="content">내용</label>        
 			<textarea id="content" name="content" rows="12" cols="40"></textarea>
        </div>
        <div class="center">
            <input type = "submit" value="등록"/>
            <input type = "Button" id="btList" value="글목록" />         
        </div>
    </fieldset>
</form>
</div>   

<%@ include file="../inc/bottom.jsp" %>