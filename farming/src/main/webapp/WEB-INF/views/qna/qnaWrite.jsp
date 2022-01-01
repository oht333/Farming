<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp" %>

<body>
<div class="divForm">
<form name="frmWrite" method="post" enctype="multipart/form-data"
	action="<c:url value='/qna/qnaWrite'/>" >
	<input type="hidden" name="memberNo" id="memberNo" value="${memNo }">
 <fieldset>
 	<section >
	<legend>글쓰기</legend>
		<div class="firstDiv">
            <label for="title">문의글 제목</label>
            <input type="text" id="title" name="title" class="infobox" />
        </div> 
       	<div>
            <label for="name">작성자</label>
            <input type="text" id="name" name="name" class="infobox" value="${name }" readonly="readonly"/>
        </div>
        <div>  
        	<label for="content">내용</label>        
 			<textarea id="txtContent" rows="10" cols="100" style="width: 100%;"></textarea>
			<!-- textarea 밑에 script 작성하기 -->
			<script id="smartEditor" type="text/javascript"> 
				var oEditors = [];
				nhn.husky.EZCreator.createInIFrame({
				    oAppRef: oEditors,
				    elPlaceHolder: "txtContent",  //textarea ID 입력
				    sSkinURI: "/libs/smarteditor/SmartEditor2Skin.html",  //martEditor2Skin.html 경로 입력
				    fCreator: "createSEditor2",
				    htParams : { 
				    	// 툴바 사용 여부 (true:사용/ false:사용하지 않음) 
				        bUseToolbar : true, 
						// 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음) 
						bUseVerticalResizer : false, 
						// 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음) 
						bUseModeChanger : false 
					}
				});
			</script>
        </div>
        <div class="center">
            <input type = "submit" class="btn btn-primary" value="등록"/>
            <input type = "Button" id="btList" class="btn btn-primary" value="글목록" />         
        </div>
        </section>
    </fieldset>
</form>
</div>   

<%@ include file="../inc/bottom.jsp" %>