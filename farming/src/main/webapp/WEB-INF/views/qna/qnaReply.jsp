<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<script type="text/javascript">
	$(function(){
		$('form[name=frmWrite]').submit(function(){
			$('.infobox').each(function(idx, item){
				if($(this).val().length<1){
					alert($(this).prev().html() + "을(를) 입력하세요");
					$(this).focus();
					event.preventDefault();
					return false;  //each 탈출
				}
			});
		});
		
		$('#btList').click(function(){
			location.href="<c:url value='/qna/qnaList'/>";	
		});
		
	});
</script>
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
<form name="frmWrite" method="post" 
	action="<c:url value='/qna/qnaReply'/>" >
     <input type="text" name="groupNo" value="${vo.groupNo }" /> 
     <input type="text" name="step" value="${vo.step }" /> 
     <input type="text" name="sortNo" value="${vo.sortNo }" /> 
	
 <fieldset>
	<legend>답변하기</legend>
		<div class="form-floating mb-3">
		  <label for="title">제목</label>
		  <input type="text" class="form-control" id="floatingInput" name="title" placeholder="제목입력"
		  	value="Re : ${vo.title}" />
		</div>
        <div>
            <label for="name">작성자</label>
            <input type="text" id="name" name="name" class="infobox" value="${name }" readonly="readonly"/>
        </div>
        <div>  
        	<label for="content">내용</label>        
 			<textarea id="content" name="content" rows="12" cols="40"></textarea>
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
            <input type = "submit" class="btn btn-primary" value="답변하기"/>
            <input type = "Button" class="btn btn-primary" id="btList" value="글목록" />         
        </div>
    </fieldset>
</form>
</div>   

<%@ include file="../inc/bottom.jsp" %> 