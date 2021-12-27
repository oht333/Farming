<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../inc/top.jsp"%>

<div class="progress rounded-0 sticky-top" style="height: 8px; top: 72px;">
      <div class="progress-bar" role="progressbar" style="width: 0%" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
    </div>
    <section class="py-5 py-lg-7">
      <div class="container">
        <div class="row">
          <div class="col-lg-5">
            <p class="subtitle text-primary">Let's Farming</p>
            <h1 class="h2 mb-5">파밍을 통해 내가 찾던 전문가를 만나보세요!</h1>
            <p class="text-muted">
            파밍은 서비스가 필요한 고객과 서비스를 제공하는 전문가를 쉽고 빠르게 연결해드리는 전문가 매칭 서비스입니다.
			1분 내외의 요청서를 작성하면, 여러 전문가님들이 맞춤형 견적을 보내드려요.
			맘에 쏙 드는 전문가의 맞춤형 서비스를 받아보세요.
            </p>
            <p class="text-muted mb-5">
            PPT 디자인 전문 업체를 찾고 계시나요?
			기획부터 디자인까지 차별화된 프레젠테이션 디자인 서비스를 받아보실 수 있어요.
			지금 바로 요청서를 작성하시고, 쉽고 편하게 프레젠테이션 디자인 고수님을 만나보세요!
            </p>
            <p class="mb-5 mb-lg-0"> <a class="btn btn-primary" href="${pageContext.request.contextPath }/sendRequest/develop/request1">1분 견적서 작성하기</a></p>
          </div>
          <div class="col-lg-5 ms-auto d-flex align-items-center"><img class="img-fluid" src="${pageContext.request.contextPath }/resources/img/illustration/undraw_celebration_0jvk.svg" alt="" style="width: 400px;"></div>
        </div>
      </div>
</section>

<%@ include file="../inc/bottom.jsp"%>