<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp" %>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/style.knowhow.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/style.knowhows.css">
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

<!-- <script type="text/javascript">
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
</script> -->

</head>
<body>
<div class="t_center">
<form name="frmDelete" method="post" action="<c:url value='/knowhow/delete?knowhowNo=${param.knowhowNo}'/>" >
	<input type="hidden" name="no" value="${param.knowhowNo}">
	
		<fieldset>
			<section class="hero py-5 py-lg-7">
				<div class="container position-relative">
					<h1 class="hero-heading">글 삭제</h1>
		        <div class="row">
		        	<div class="col-xl-8 mx-auto">
		        		<p class="text-lg text-muted mb-5">글을 삭제하시겠습니까?</p>
						<p class="mb-0">
				            <input type ="submit" class="btn btn-primary" value="삭제" />
				            <input type = "Button" class="btn btn-primary" value="글목록" 
			                	OnClick="location.href='<c:url value="/knowhow/list"/>'" />
						</p>
					</div>
				</div>
				</div>
			</section>
	    </fieldset>
    </form>
</div>

<%@ include file="../inc/bottom.jsp" %>  

