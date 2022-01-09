<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp" %>
<script type="text/javascript" src="<c:url value='/resources/libs/js/service/HuskyEZCreator.js" charset="utf-8'/>"></script>
<style type="text/css">
	body{
		padding:5px;
		margin:5px;
	 }
	.divForm{
		width:650px;
		border:1px solid #ddd;		
	}
	/* .divForm form{
		width:650px;
	} */
	.divForm div	{
		/* clear: both; */
		border:none;
		padding: 7px 0;
		margin: 0;
		overflow: auto;
	}	
	.sp{
		font-size:0.9em;
		color:#0056AC;			
	}
	.divForm fieldset	{
		border:0;
	}
</style>

<script type="text/javascript">
	$(function(){
		$('form[name=frmDelete]').submit(function(){
			
				if(!confirm('삭제하시겠습니까?')){
					event.preventDefault();
				}
			
		});
	});	
</script>
<body>
<div class="divForm">
<form name="frmDelete" method="post" 
	action="<c:url value='/qna/qnaDelete'/>" >
	<input type="hidden" name="qnaNo" value="${param.qnaNo}">
	<input type="hidden" name="step" value="${param.step}">
	<input type="hidden" name="groupNo" value="${param.groupNo}">
	
		<fieldset>
		<legend>게시글 삭제</legend>
	        <div>           
	        	<span class="sp">${param.qnaNo}번 글을 삭제하시겠습니까?</span>                        
	        </div>
	       
	        <div class="center">
	            <input type ="submit" class="btn btn-primary" value="삭제" />
	            <input type = "Button" class="btn btn-primary" value="글목록" 
                	OnClick="location.href='<c:url value="/qna/qnaList"/>'" />
	        </div>
	    </fieldset>
    </form>
</div>
<%@ include file="../inc/bottom.jsp" %> 