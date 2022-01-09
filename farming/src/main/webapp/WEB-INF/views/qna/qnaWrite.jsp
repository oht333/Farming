<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp" %>
<script type="text/javascript" src="<c:url value='/resources/libs/js/service/HuskyEZCreator.js" charset="utf-8'/>"></script>
<script>

function save(){
	oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD", []);  
    		//스마트 에디터 값을 텍스트컨텐츠로 전달
	var content = document.getElementById("smartEditor").value;
	alert(document.getElementById("content").value); 
    		// 값을 불러올 땐 document.get으로 받아오기
	return; 
}

</script>

<body>
<div class="divForm">
<form name="frmWrite" method="post" enctype="multipart/form-data"
	action="<c:url value='/qna/qnaWrite'/>" >
	<input type="hidden" name="memberNo" id="memberNo" value="${userNo }">
	<input type="hidden" id="name" name="name" class="infobox" value="${name }" readonly="readonly"/>
 <fieldset>
 	<section>
	<br><h3><strong>질문 게시글 작성</strong></h3>
		<div class="form-floating mb-3">
		  <input type="text" class="form-control" id="floatingInput" name="title" placeholder="제목입력">
		  <label for="title">제목</label>
		</div>
        <div>  
        	<label for="content"></label>        
 			<textarea id="content" name="content" rows="10" cols="50" style="width: 50%;"></textarea>
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
        <div id="se2_sample" style="margin:10px 0;">
			<input type="submit" class="btn btn-primary" onclick="save();" value="게시글 등록">
            <a class="btn btn-primary" href="<c:url value='/qna/qnaList'/>" >글 목록 리스트</a>         
		</div>
       
        </section>
    </fieldset>
</form>
</div>   

<%@ include file="../inc/bottom.jsp" %>