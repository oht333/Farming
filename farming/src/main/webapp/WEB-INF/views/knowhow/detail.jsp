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
</style>  
<body style="padding-top: 72px;">
    
    <!-- Hero Section-->
    <section class="pt-7 pb-5 d-flex align-items-end dark-overlay bg-cover" style="background-image: url('img/photo/restaurant-1515164783716-8e6920f3e77c.jpg');">
      <div class="container overlay-content">
        <div class="d-flex justify-content-between align-items-start flex-column flex-lg-row align-items-lg-end">
          <div class="text-white mb-4 mb-lg-0">
            <div class="badge badge-pill badge-transparent px-3 py-2 mb-4">Knowledge</div>
            <h1 class="text-shadow verified">노하우 게시판</h1>
          </div>
        </div>
      </div>
    </section>
    
<section class="section_padding">
	<div class="container">
	<h3><strong>글 상세보기</strong></h3><br>
		<div class="divForm">
			<ul class="mb50">
				<li>
					<span class="sp1">제목</span> <span class="sp2">${vo.title}</span>
				</li>
			<li>
				<span class="sp1">작성자</span> <span class="sp2">${name }</span>
			</li>
			<li>
				<span class="sp1">등록일</span> <span class="sp2"><fmt:formatDate value="${vo.regdate}" pattern="yyyy-MM-dd hh:mm:ss"/></span>
			</li>	
			<li>			
				<span class="content">${vo.content}</span>
			</li>
			</ul>
		</div>
			<div class="t_center">
				<a href='/farming/knowhow/edit?knowhowNo=${param.knowhowNo}' class="btn btn-primary">수정</a>
	        	<a href='/farming/knowhow/delete?knowhowNo=${param.knowhowNo}' class="btn btn-primary2">삭제</a>
	        	<a href='/farming/knowhow/reply?knowhowNo=${param.knowhowNo}' class="btn btn-primary">답변</a>   	
	        	<a href='/farming/knowhow/list' class="btn btn-primary2">목록</a>			
			</div>
	</div>
</section>

    
<%@ include file="../inc/bottom.jsp" %>  