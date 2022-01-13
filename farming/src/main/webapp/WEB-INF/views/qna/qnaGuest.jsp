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
          <li class="breadcrumb-item active">파밍의 첫걸음</li>
        </ol>
        <h1 class="hero-heading">처음 이용하시는 고객님을 위한 파밍 이용팁</h1>
        <div class="row">
          <div class="col-xl-8 mx-auto">
          <p class="text-muted">파밍은 IT 서비스가 필요한 고객과 전문가를 연결합니다.<br>
          다양한 분야의 IT 서비스 숨은 전문가를 파밍 단 한 곳에서 쉽게 만나세요!</p>
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
	                <a class="nav-link mb-2 active" href="#">파밍의 첫걸음</a>
	                <a class="nav-link mb-2" href="<c:url value='/qna/qnaDeveloper'/>">IT 전문가 가이드</a>
	                <a class="nav-link mb-2" href="<c:url value='/qna/qnaList'/>">1:1 질문게시판</a>
                </nav>
              </div>
            </div>
          </div>
          <div class="col-lg-8" style="margin-left: 40px;">                          
            <div class="text-content">
              <p><strong>파밍에 방문해주신 고객님을 환영합니다.</strong>
              파밍에서는 고객님이 필요로 하는 일의 전문가를 찾는 일에 시간과 에너지를 단축시켜주며 
              <code>검증된 IT 전문가</code>의 포트폴리오를 확인하여 원하는 사항에 부합하는 전문가를 쉽고 빠르게 찾을수 있는 서비스를 제공하고있습니다.
              </p>
              <h2>1.&nbsp; 회원가입 하기</h2>
              <ol>
                <li>본인명의와 이메일만으로 빠르게 가입해보세요. </li>
                <li>KakaoTalk , FaceBook 계정으로도 간편하게 가입할 수 있습니다.</li>
              </ol>
              <blockquote class="blockquote blockquote-primary bg-gray-100 p-4">
              파밍은 고객님의 빠르고 신속한 이용을 위해 <a href="<c:url value='../login/loginType'/>">간편회원가입</a> 시스템을 도입하였습니다.<br><br>
              고객님의 본인명의와 이메일만으로 가입하고 원하는 IT전문가를 지금 바로 찾아보세요.<br><br>
              해당 메인페이지의 전문가찾기 검색기능을 사용하시면 각 지역별 / 분야별 전문가를 한눈에 볼수있습니다.
              
              </blockquote>
              <h3>2.&nbsp; 파밍캐시 충전하기</h3>
              <blockquote class="blockquote blockquote-primary bg-gray-100 p-4">
              원하시는 분야의 전문가에게 견적 요청서를 보낼때에는 <a href="<c:url value='../cash/main'/>">파밍캐시</a>가 필요합니다.<br><br>
              또한 전문가에게 견적서 회신을 받은후 해당 사안을 진행하고 싶으시다면 파밍캐시 / 카드결제가 가능합니다.<br><br>
              고객님께서 보낸 견적 요청서를 해당 전문가가 48시간 동안 확인하지 않으면 사용한 파밍캐시를 보너스캐시로 돌려드리니
              걱정하지 마시고 이용하세요.
              
              </blockquote>
              
              <h3>3.&nbsp; 견적서 요청하기</h3>
              <blockquote class="blockquote blockquote-primary bg-gray-100 p-4">
              쉽고 빠르게 원하는 조건의 전문가를 찾아보세요!<br><br>
              고객은 도움이 필요한 IT 서비스에 대해 요청서를 작성합니다.<br><br>
              파밍 웹사이트(PC)에서 원하는 서비스를 선택하시거나 
              홈페이지 메인 화면 상단 검색창에 원하는 서비스를 검색하시면 해당 서비스의 <code>요청서</code>를 작성하실 수 있습니다.
              
              </blockquote>
              
              <h3>4.&nbsp; 전문가와 연락하기</h3>
              <blockquote class="blockquote blockquote-primary bg-gray-100 p-4">
              전문가의 견적서가 도착하면 채팅방이 자동으로 열립니다.<br><br>
              전문가와 채팅방에서 대화를 하거나 안심번호를 통해 전화로 상담할 수 있습니다.<br>
              
              </blockquote>
              
              <h3>5.&nbsp; 전문가에게 이용후기 남기기</h3>
              <blockquote class="blockquote blockquote-primary bg-gray-100 p-4">
              전문가에게 만족스러운 서비스를 받으셨다면 파밍 이용후기 게시판에 리뷰를 남겨주세요.<br><br>
              고객님이 남겨주신 한 마디가 전문가님에게는 큰 힘이 될 수 있습니다.<br><br>
              이용후기 리뷰는 전문가를 고용한 이력이 있는 고객만 작성할 수 있습니다.<br><br>
              파밍캐시 결제 혹은 카드결제를 완료하거나, 고용하기 버튼을 누른 이후에 리뷰를 작성하세요.
              
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
                  		onclick="alert('감사합니다 고객님 . 즐거운 파밍생활 되세요 ! ')"><i class="fa fa-thumbs-up me-2"></i>좋아요</button>
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