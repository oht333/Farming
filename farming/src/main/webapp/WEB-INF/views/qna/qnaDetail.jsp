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
		padding:5px;
		margin:5px;
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
    </section>
    
    <h2>글 상세보기</h2>
	<div class="divForm">
		
		<div class="firstDiv">
			<span class="sp1">제목</span> <span>${vo.title}</span>
		</div>
		<div>
			<span class="sp1">등록일</span> <span>${vo.regdate}</span>
		</div>
		
		<% pageContext.setAttribute("newLine", "\r\n"); %>
		
		<div class="lastDiv">			
			<p class="content">${fn:replace(vo.content, newLine, "<br>")}</p>
		</div>
		<div class="center">
			<a class="btn btn-primary" href='<c:url value="/qna/qnaEdit?qnaNo=${param.qnaNo }"/>'>게시글 수정</a>
        	<a class="btn btn-primary" href='<c:url value="/qna/qnaDelete?qnaNo=${param.qnaNo }"/>'>게시글 삭제</a>
        	<a class="btn btn-primary" href='<c:url value="/qna/qnaReply?qnaNo=${param.qnaNo }"/>'>답변</a>
        	<a class="btn btn-primary" href='<c:url value="/qna/qnaList"/>'>게시글 목록</a>			
		</div>
	</div>
    
<%@ include file="../inc/bottom.jsp" %>  
    