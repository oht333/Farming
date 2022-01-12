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
			<h3><strong>수정하기</strong></h3><br>
			<div class="divForm">
					<form name="frmEdit" method="post" enctype="multipart/form-data" action="<c:url value='/knowhow/edit?knowhowNo=${vo.knowhowNo}'/>"> 
				        <ul class="mb50">
				        	<li>    
				            	<label for="title" class="sp1">제목</label>
				            	<input type="text" id="title" name="title" value="${vo.title}" class="t_input sp2" />
				        	</li>
					        <li>
					        	<label for="content" class="sp1">내용</label>        
					 			<textarea id="content" name="content" rows="12" cols="60" class="sp2">${vo.content}</textarea>
					        </li>
						    <div class="t_center">
					            <input type = "submit" class="btn btn-primary" value="수정하기"/>
					            <input type = "Button" class="btn btn-primary2" value="글목록" onclick="location.href	='<c:url value="/knowhow/list"/>'" />        
						    </div>
				        </ul>  
				    </form>
			</div>
		</div>
	</section>

    
<%@ include file="../inc/bottom.jsp" %>  