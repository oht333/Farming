<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp" %>
<body>
<div class="divForm">
<form name="frmEdit" method="post" enctype="multipart/form-data"
	action="<c:url value='/qna/qnaEdit.do'/>"> 
	<!-- 수정시 no가 필요하므로 히든 필드에 담아서 넘겨준다 -->
	<input type="hidden" name="no" value="${param.no}">
	
    <fieldset>
	<legend>글수정</legend>
        <div class="firstDiv">
            <label for="title">제목</label>
            <input type="text" id="title" name="title" value="${vo.title}" />
        </div>
        <div>
            <label for="name">이름</label>
            <input type="text" id="name" name="name" value="${vo.name}" />
        </div>
        <div>
            <label for="pwd">비밀번호</label>
            <input type="password" id="pwd" name="pwd" />
        </div>
        <div>  
        	<label for="content">내용</label>        
 			<textarea id="content" name="content" rows="12" cols="40">${vo.content}</textarea>
        </div>
        <div class="center">
            <input type = "submit" value="수정"/>
            <input type = "Button" value="글목록" 
            	onclick="location.href	='<c:url value="/qna/qnaList.do"/>'" />         
        </div>
	</fieldset>
</form>    
</div>

<%@ include file="../inc/bottom.jsp" %>