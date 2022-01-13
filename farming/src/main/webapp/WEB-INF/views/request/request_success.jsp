<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp"%>
<div class="progress rounded-0 sticky-top" style="height: 8px; top: 72px;">
      <div class="progress-bar" role="progressbar" style="width: 100%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
    </div>
    <section class="py-5 py-lg-6">
      <div class="container text-center">
        <p class="subtitle text-primary">Let's Farming</p>
        <h1 class="h2 mb-5">1분 견적서 작성 완료!</h1>
        <p class="mb-5"><img class="img-fluid" src="${pageContext.request.contextPath }/resources/img/illustration/undraw_celebration_0jvk.svg" alt="" style="width: 400px;"></p>
        <p class="text-muted mb-5">견적요청서가 전문가님들에게 보내졌습니다. 전문가의 연락을 기다려보세요.</p>
        <p class="mb-5"><a class="btn btn-primary me-2 mb-2" href="<c:url value='/index'/>">메인화면으로</a><a class="btn btn-outline-muted mb-2" href="<c:url value='/request/requestByExpert'/>">받은 견적 확인하기</a></p>
      </div>
    </section>
    
<%@ include file="../inc/bottom.jsp"%>