<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp" %>
    
    <!-- 카카오로그인 -->
    <script src="${pageContext.request.contextPath }/resources/js/jquery-3.6.0.min.js"></script>
	<script type="text/javascript">
		$(function(){
	  		$('#signin').click(function(){
	  			if($('#email').val().length<1){
	  				alert('이메일을 입력하세요');
	  				$('#email').focus();
	  				event.preventDefault();
	  			}else if($('#pwd').val().length<1){
	  				alert('패스워드를 입력하세요');
	  				$('#pwd').focus();
	  				event.preventDefault();
	  			}
	  		});
	  	});
		
	</script>
	<style type="text/css">
		#kakao:hover{
			background-color: #f9e000;
		}
		#facebook:hover{
			background-color: #3b5998;
		}
	</style>

    <div class="container-fluid px-3">
      <div class="row min-vh-100">
        <div class="col-md-8 col-lg-6 col-xl-5 d-flex align-items-center">
          <div class="w-100 py-5 px-md-5 px-xxl-6 position-relative">
            <div class="mb-5"><img class="img-fluid mb-3" src="${pageContext.request.contextPath }/resources/img/farming-favicon.png" alt="..." style="max-width: 4rem;">
              <h2>관리자 로그인</h2>
            </div>
            <form class="form-validate" method="post" action="<c:url value='/admin/done'/>">
              <div class="mb-4">
                <label class="form-label" for="email"> 이메일</label>
                <input class="form-control" name="email" id="email" type="email" placeholder="example@farming.com" value="${cookie.mCk_email.value }">
              </div>
              <div class="mb-4">
                <div class="row">
                  <div class="col">
                    <label class="form-label" for="pwd"> 비밀번호</label>
                  </div>
                </div>
                <input class="form-control" name="pwd" id="pwd" placeholder="Password" type="password">
              </div>
              <!-- Submit-->
              <div class="d-grid">
                <button class="btn btn-lg btn-primary" id="signin">로그인</button>
              </div>
              
            </form>
          </div>
        </div>
        <div class="col-md-4 col-lg-6 col-xl-7 d-none d-md-block">
          <!-- Image-->
          <div class="bg-cover h-100 me-n3" style="background-image: url(${pageContext.request.contextPath }/resources/img/photo/photo-1497436072909-60f360e1d4b1.jpg);"></div>
        </div>
      </div>
    </div>
<%@ include file="../inc/bottom.jsp" %>