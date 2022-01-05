<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp"%>
<script type="text/javascript"
	src="<c:url value='/resources/libs/js/service/HuskyEZCreator.js" charset="utf-8'/>"></script>
<script type="text/javascript">
$(function(){
	var oEditors = []; 
	nhn.husky.EZCreator.createInIFrame({ 
		oAppRef : oEditors, 
		elPlaceHolder : "content", 
		sSkinURI : "<c:url value='/resources/libs/SmartEditor2Skin.html'/>", 
		fCreator : "createSEditor2",
		htParams : { 
			bUseToolbar : true, 
			bUseVerticalResizer : true, 
			bUseModeChanger : true, 
		} 
	});
	$("#savebutton").click(function(){ 
		oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD", []); 
		if(validation()) { 
			$("#frm").submit(); 
		} 
	});
});
	
	function validation(){ 
		var contents = $.trim(oEditors[0].getContents()); 
		if(contents === '<p>&bnsp;</p>' || contents === ''){ 
			alert("내용을 입력하세요."); 
			oEditors.getById['content'].exec('FOCUS'); 
			return false; 
		} 
		return true; 
	}

</script>
<body>
	<div class="divForm">
		<form name="frmWrite" method="post" enctype="multipart/form-data"
			action="<c:url value='/knowhow/write'/>">
			<fieldset>
				<legend>
					<br> <strong>글 작성</strong><br> <br>
				</legend>
				<div class="firstDiv">
					<label for="title"><strong>제목</strong>&nbsp;&nbsp;&nbsp;</label> <input
						type="text" id="title" name="title" class="infobox" />
				</div>
				<br> <label for="content"><strong>내용</strong>&nbsp;&nbsp;&nbsp;</label>
				<div>
					<textarea id="content" name="content" rows="10" cols="50"
						style="width: 50%;"></textarea>
				</div>
				<div id="se2_sample" style="margin: 10px 0;">
					<button class="btn btn-primary" id="savebutton">submit</button>
					<a class="btn btn-primary" href="<c:url value='/knowhow/list'/>">돌아가기</a>
				</div>
			</fieldset>
		</form>
	</div>

	<%@ include file="../inc/bottom.jsp"%>