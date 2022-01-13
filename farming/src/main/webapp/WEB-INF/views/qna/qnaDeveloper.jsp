<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp" %>

    <!-- Hero Section-->
    <section class="hero py-5 py-lg-7">
      <div class="container position-relative">
        <!-- Breadcrumbs -->
        <ol class="breadcrumb ps-0  justify-content-center">
          <li class="breadcrumb-item"><a href="../index">Home</a></li>
          <li class="breadcrumb-item"><a href="<c:url value='/qna/qnaMain'/>">메인</a></li>
          <li class="breadcrumb-item active">IT 전문가 가이드</li>
        </ol>
        <h1 class="hero-heading">처음 이용하시는 IT 전문가님을 위한 파밍 이용팁</h1>
        <div class="row">
          <div class="col-xl-8 mx-auto">
          <p class="text-muted">파밍은 IT 서비스가 필요한 고객과 전문가를 연결합니다.<br>
          다양한 분야의 IT 서비스 숨은 전문가를 파밍 단 한 곳에서 쉽게 만나세요 !</p>
          </div>
        </div>
      </div>
    </section>
    <section class="py-6">
    <div class="container-fluid">
        <div class="row px-xl-5">
        <div class="col-lg-2">
            <div class="sticky-top mb-5" style="top: 120px;">
              <div class="sidebar-block">
                <h6 class="sidebar-heading ms-3">거래내역</h6>
                <nav class="nav nav-pills flex-column">
	                <a class="nav-link mb-2" href="<c:url value='/qna/qnaGuest'/>">파밍의 첫걸음</a>
	                <a class="nav-link mb-2 active" href="#">IT 전문가 가이드</a>
	                <a class="nav-link mb-2" href="<c:url value='/qna/qnaList'/>">1:1 질문게시판</a>
                </nav>
              </div>
            </div>
          </div>
          <div class="col-lg-8" style="margin-left: 40px;">                          
            <div class="text-content">
              <p><strong>파밍에 방문해주신 고객님을 환영합니다.</strong>
              파밍에서는 새로운 고객을 만날 수 있는 기회를 창출, 자신의 능력과 조건에 맞는 고객의 요청서를 확인하고
              본인이 희망하는 고객이용자와 바로 연결해주는 서비스를 제공하고있습니다.
              </p>
              <h2>1.&nbsp; IT전문가 등록하기</h2>
              <ol>
                <li>우선 파밍에서 회원가입을 해주세요  </li>
                <li>이후 메인사이트 상단에있는 전문가 등록버튼을 이용하여 전문가 신청이 가능합니다.</li>
              </ol>
              <blockquote class="blockquote blockquote-primary bg-gray-100 p-4">
              파밍에서 제공중인 여러분야의 IT카테고리에 해당하는 전문 역량이 있는 분들이라면<br>
              누구나 본인인증 후 파밍에 가입해서 고객을 만날 수 있습니다.<br><br>
              단, 특정 분야에서 전문가로 활동하려면 <code>유효한 사업자등록증 및 자격증</code>이 필요할 수도 있습니다.
              
              </blockquote>
              <h3>2.&nbsp; 견적금액 산출하기</h3>
              <blockquote class="blockquote blockquote-primary bg-gray-100 p-4">
              견적금액은 전문가의 경력, 서비스 방식, 서비스 지역이나 시간 등에 따라 달라지므로 정확한 가격을 안내하기 어렵습니다.<br><br>
              하지만 파밍 다른 전문가들의 <code>홍보게시판 페이지</code>를 통해 평균 견적을 확인할 수 있습니다.<br><br>
              나의 서비스 견적금액을 결정할 때에는 다른 전문가들의 견적가를 참고하되, 반드시 그 금액에 맞출 필요는 없습니다.<br><br>
              요청서의 세부 내용을 찬찬히 살펴보시고, 고객의 상황과 니즈에 맞는 서비스의 맞춤 가격을 보내시면, 
              고객과 더 쉽게 상담을 진행할 수 있고 고객의 신뢰도 얻을 수 있습니다.<br><br>  
              또한, <code>전문가님의 프로필</code>을 통해 고수님만의 서비스 특성이나 차별점, 부가 혜택 등을 고객에게 어필한다면, 
              고용을 유도할 수 있습니다.
              </blockquote>
              <h3>3.&nbsp; 견적 발송하기</h3>
              <blockquote class="blockquote blockquote-primary bg-gray-100 p-4">
              고객의 요청서를 확인하신 후, 전문가님과 조건이 맞는 요청서에 대해서만 견적을 보내세요.<br><br>
              요청서 내용으로 산출한 견적금액을 고객에게 보내면, 고객과 채팅방에서 세부사항을 협의할 수 있습니다.<br><br>
              고객님에게 받은 요청서에 대한 견적서 발송은 무료입니다.<br><br>
              요청서를 받은 이후 <code>48시간 이내에</code> 회신하는것을 잊지 마세요. 
              
              </blockquote>
              <h3>4.&nbsp; 견적 발송 후 고객과 연락하기</h3>
              <blockquote class="blockquote blockquote-primary bg-gray-100 p-4">
              요청서를 받고, 고객에게 견적을 보내면 채팅방에서 고객과 대화할 수 있습니다.<br><br>
              또한, 견적서를 발송한 이후 고객님과의 <code>전화를 통하여 유선으로도 협의가 가능</code>합니다.<br><br>
              
              
              </blockquote>
              <h3>5.&nbsp; 서비스 완료후 리뷰 요청하기</h3>
              <blockquote class="blockquote blockquote-primary bg-gray-100 p-4">
              <code>이용후기 게시판 리뷰</code>는 고객이 전문가님을 선택하는 기준이 됩니다.<br><br>
              리뷰 수가 많고 평점이 높으면 ‘전문가 찾기’ 페이지에서 상단에 노출될 가능성이 높습니다.<br><br>
              고객에게 서비스를 제공했다면 리뷰를 요청해 보세요 ! 
              
              </blockquote>
            </div>
            <div class="row my-5">
              <div class="col-lg-6 mx-auto">
                <div class="card shadow border-0 text-center">
                  <div class="card-header bg-gray-100 border-0">
                    <h4 class="h5 card-text">파밍 첫 이용에 도움이 되셨나요 ?</h4>
                  </div>
                  <div class="card-body py-4">
                    <button type="button" class="btn btn-success text-white" 
                  		onclick="alert('감사합니다 지금 바로 전문가로 등록해보세요 ! ')"><i class="fa fa-thumbs-up me-2"></i>좋아요</button>
                    <button type="button" class="btn btn-danger"
                    	onclick="alert('죄송합니다 . 지금 바로 1:1 문의게시판을 이용해보세요 ! ')"><i class="fa fa-thumbs-down me-2"></i>아니요</button>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    
   

<%@ include file="../inc/bottom.jsp" %>