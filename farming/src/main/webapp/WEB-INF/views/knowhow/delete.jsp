<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        
<!DOCTYPE HTML>
<html lang="ko">
<head>
<meta charset="utf-8">
<title>노하우 게시판 - 삭제</title>
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/mainstyle.css'/>" />
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/clear.css'/>" />
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/formLayout.css'/>" />
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/mystyle.css'/>" />
<script type="text/javascript" src="<c:url value='/resources/js/jquery-3.6.0.min.js'/>"></script>

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
		$('#delete').click(function(){
			if($('#pwd').val().length<1){
				alert('비밀번호를 입력하세요');
				$('#pwd').focus();
				event.preventDefault();
			}else{
				if(!confirm('삭제하시겠습니까?')){
					event.preventDefault();
				}
			}
		});
	});	
</script>
</head>
<body>
<div class="divForm">
<form name="frmDelete" method="post" 
	action="<c:url value='/knowledge/delete.do'/>" >
	<input type="hidden" name="no" value="${param.no}">
	<input type="text" name="step" value="${param.step}">
	<input type="text" name="groupNo" value="${param.groupNo}">
	<input type="text" name="fileName" value="${param.fileName}">
	
		<fieldset>
			<section class="hero py-5 py-lg-7">
				<div class="container position-relative">
					<h1 class="hero-heading">글 삭제</h1>
		        <div class="row">
		        	<div class="col-xl-8 mx-auto">
		        		<p class="text-lg text-muted mb-5">${param.knowhowNo}번 글을 삭제하시겠습니까?</p>
						<p class="mb-0">
							<a class="btn btn-primary"><input type ="Button"  value="삭제" id="delete" /></a>
							<a class="btn btn-primary" href='<c:url value="/knowhow/list"/>'>글목록</a>
						</p>
					</div>
				</div>
				</div>
			</section>
	    </fieldset>
    </form>
</div>

</body>
</html>