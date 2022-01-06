<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp" %>
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/mainstyle.css'/>" />
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/clear.css'/>" />
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/formLayout.css'/>" />
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/mystyle.css'/>" />
<script type="text/javascript" src="<c:url value='/resources/js/jquery-3.6.0.min.js'/>"></script>

<style type="text/css">
	body{
		padding-top: 70px;
		padding-bottom: 30px;
	 }
	.divForm {
		width: 500px;
		}

</style>  
<body style="padding-top: 72px;">
    
    <!-- Hero Section-->
    <section class="pt-7 pb-5 d-flex align-items-end dark-overlay bg-cover" style="background-image: url('img/photo/restaurant-1515164783716-8e6920f3e77c.jpg');">
      <div class="container overlay-content">
      <ol class="breadcrumb ps-0  justify-content-center">
          <li class="breadcrumb-item"><a href="index.html">Home</a></li>
          <li class="breadcrumb-item"><a href="<c:url value='/qna/qnaMain'/>">메인</a></li>
          <li class="breadcrumb-item active">1 : 1 문의게시판</li>
        </ol>
        <div class="d-flex justify-content-between align-items-start flex-column flex-lg-row align-items-lg-end">
          <div class="text-white mb-4 mb-lg-0">
            <div class="badge badge-pill badge-transparent px-3 py-2 mb-4">Q n A</div>
            <h1 class="text-shadow verified">질문 게시판</h1>
          </div>
        </div>
      </div>
    </section><br>
    <article>
		<div class="container" role="main">
    		<h2>1 : 1 질문 내역</h2><br>
		
			<div class="bg-white rounded shadow-sm">
				<label for="exampleFormControlInput1" class="form-label">[문의글 제목] : </label>
				<span> ${vo.title}</span> 
			
		<div>
			<label for="exampleFormControlInput1" class="form-label">[등록 날짜] : </label> 
			<span>${vo.regdate}</span>
		</div>
		
		<% pageContext.setAttribute("newLine", "\r\n"); %>
		
		<div class="lastDiv">	
			<label for="exampleFormControlInput1" class="form-label">[문의 내용]</label>		
			<p class="content">${fn:replace(vo.content, newLine, "<br>")}</p>
		</div>
	</div><br>
		<div class="center">
			<a class="btn btn-primary" href='<c:url value="/qna/qnaEdit?qnaNo=${param.qnaNo }"/>'>게시글 수정</a>
        	<a class="btn btn-primary" href='<c:url value="/qna/qnaDelete?qnaNo=${param.qnaNo }"/>'>게시글 삭제</a>
        	<a class="btn btn-primary" href='<c:url value="/qna/qnaReply?qnaNo=${param.qnaNo }"/>'>답변하기</a>
        	<a class="btn btn-primary" href='<c:url value="/qna/qnaList"/>'>게시글 목록</a>			
		</div><br>
	</article>
    
<%@ include file="../inc/bottom.jsp" %>  
    