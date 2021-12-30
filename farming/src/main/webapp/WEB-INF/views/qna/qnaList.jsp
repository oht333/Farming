<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp" %>

<body style="padding-top: 72px;">
    
    <!-- Hero Section-->
    <section class="pt-7 pb-5 d-flex align-items-end dark-overlay bg-cover" style="background-image: url('img/photo/restaurant-1515164783716-8e6920f3e77c.jpg');">
      <div class="container overlay-content">
        <div class="d-flex justify-content-between align-items-start flex-column flex-lg-row align-items-lg-end">
          <div class="text-white mb-4 mb-lg-0">
            <div class="badge badge-pill badge-transparent px-3 py-2 mb-4">Q n A</div>
            <h1 class="text-shadow verified">질문 게시판</h1>
          </div>
          <div class="calltoactions"><a class="btn btn-primary" href="<c:url value='/qna/qnaMain'/>" >Qna 메인페이지로 돌아가기</a></div>
        </div>
      </div>
    </section>
    <div class="container">
      <div class="list-group shadow mb-5">
          <div class="list-group-item list-group-item-action p-4">
            <div class="row">
              
              <div class="col-9 col-lg-4 align-self-center mb-3 mb-lg-0">
                <div class="d-flex align-items-center mb-1 mb-lg-3">
                  <h2 class="h5 mb-0">이름</h2>
                </div>
                <p class="text-sm text-muted">제목</p><a class="stretched-link" href="user-messages-detail.html"></a>
              </div>
              <div class="col-10 ms-auto col-lg-7">
                <div class="row">
                  <div class="col-md-8 py-3">
                    <p class="text-sm mb-0">내용</p>
                  </div>
                  <div class="col-md-4 text-end py-3">
                    <p class="text-sm">날짜</p>
                  </div><a class="stretched-link" href="user-messages-detail.html"></a>
                </div>
              </div>
            </div>
          </div>
         
 </div>
  </div>
   
    
<%@ include file="../inc/bottom.jsp" %>