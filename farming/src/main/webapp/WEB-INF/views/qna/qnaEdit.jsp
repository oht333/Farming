<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp" %>
<script type="text/javascript" src="<c:url value='/resources/libs/js/service/HuskyEZCreator.js" charset="utf-8'/>"></script>
<script>

function save(){
	oEditors.getById["txtContent"].exec("UPDATE_CONTENTS_FIELD", []);  
    		//스마트 에디터 값을 텍스트컨텐츠로 전달
	var content = document.getElementById("smartEditor").value;
	alert(document.getElementById("txtContent").value); 
    		// 값을 불러올 땐 document.get으로 받아오기
	return; 
}

</script>
<body>
<div class="divForm">
<form name="frmEdit" method="post" enctype="multipart/form-data"
	action="<c:url value='/qna/qnaEdit'/>"> 
	<!-- 수정시 no가 필요하므로 히든 필드에 담아서 넘겨준다 -->
	<input type="hidden" name="qnaNo" value="${param.qnaNo}">
	
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
        	<label for="content">내용</label>        
 			<textarea id="content" name="content" rows="12" cols="40">${vo.content}</textarea>
 			<!-- textarea 밑에 script 작성하기 -->
			<script id="smartEditor" type="text/javascript"> 
				var oEditors = [];
				nhn.husky.EZCreator.createInIFrame({
				    oAppRef: oEditors,
				    elPlaceHolder: "content",  //textarea ID 입력
				    sSkinURI: "<c:url value='/resources/libs/SmartEditor2Skin.html'/>",  //martEditor2Skin.html 경로 입력
				    fCreator: "createSEditor2",
				    htParams : { 
				    	// 툴바 사용 여부 (true:사용/ false:사용하지 않음) 
				        bUseToolbar : true, 
						// 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음) 
						bUseVerticalResizer : false, 
						// 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음) 
						bUseModeChanger : false,
						fOnBeforeUnload : function(){}
					}
				});
			</script>
        </div>
        <div class="center">
            <input type = "submit" class="btn btn-primary" value="수정하기"/>
            <input type = "Button" class="btn btn-primary" value="글목록" 
            	onclick="location.href	='<c:url value="/qna/qnaList"/>'" />         
        </div>
	</fieldset>
</form>    
</div>

<%@ include file="../inc/bottom.jsp" %>