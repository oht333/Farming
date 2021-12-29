<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../inc/top.jsp" %>
    <section class="py-5">
      <div class="container">
        <!-- Breadcrumbs -->
        <ol class="breadcrumb ps-0  justify-content-start">
          <li class="breadcrumb-item"><a href="<c:url value='/index'/>">HOME</a></li>
          <li class="breadcrumb-item active">로그인</li>
        </ol>
        <h1 class="hero-heading mb-0">로그인</h1>
        <p class="text-muted mb-5">로그인 타입선택</p>
        <div class="row">
          <div class="col-6 col-md-6 mb-30px" style="text-align: center;">
            <div class="card h-100 border-0 shadow hover-animate">
              <div class="card-body">
                <div class="icon-rounded bg-secondary-light mb-3">
                  <i class="fas fa-user-alt fa-2x"></i>
                </div>
                <h5 class="card-title mb-3"><a class="text-decoration-none text-dark stretched-link" href="<c:url value='/login/login'/>">일반회원</a></h5>
                <p class="text-muted card-text text-sm">전문가로부터 원하는 서비스를 제공받으세요!<br><br><br><br>
                	고객이 원하는 서비스를 선택하여 요청서를 작성하면 <br>48시간 내에 전문가가 견적(견적금액과 프로필)을 보냅니다.<br>
                	여러 명의 전문가의 견적을 확인한 후 채팅방을 통해 상담을 받고,<br> 나에게 딱 맞는 전문가를 선택하세요.
                </p>
              </div>
            </div>
          </div>
          <div class="col-6 col-md-6 mb-30px" style="text-align: center; height: 500px;">
            <div class="card h-100 border-0 shadow hover-animate">
              <div class="card-body">
                <div class="icon-rounded bg-secondary-light mb-3">
                  <i class="fas fa-chalkboard-teacher fa-2x"></i>
                </div>
                <h5 class="card-title mb-3"><a class="text-decoration-none text-dark stretched-link" href="<c:url value='/login/expLogin'/>">전문가회원</a></h5>
                <p class="text-muted card-text text-sm">당신의 서비스를 회원들에게 제공해주세요!<br><br><br><br>
                	고객이 직접 작성한 요청서를 전문가에게 보내드립니다.<br>
					받은 요청서 중에서 적합한 고객을 선택하여<br> 고객의 요구사항이 반영되도록 견적(견적금액과 프로필)을 보내세요.<br>
					채팅 혹은 이메일을 통해 고객과 빠르게 연락할 수 있습니다.
                </p>
              </div>
            </div>
          </div>
    </section>
    <!-- JavaScript files-->
    <script>
      // ------------------------------------------------------- //
      //   Inject SVG Sprite - 
      //   see more here 
      //   https://css-tricks.com/ajaxing-svg-sprite/
      // ------------------------------------------------------ //
      function injectSvgSprite(path) {
      
          var ajax = new XMLHttpRequest();
          ajax.open("GET", path, true);
          ajax.send();
          ajax.onload = function(e) {
          var div = document.createElement("div");
          div.className = 'd-none';
          div.innerHTML = ajax.responseText;
          document.body.insertBefore(div, document.body.childNodes[0]);
          }
      }    
      // to avoid CORS issues when viewing using file:// protocol, using the demo URL for the SVG sprite
      // use your own URL in production, please :)
      // https://demo.bootstrapious.com/directory/1-0/icons/orion-svg-sprite.svg
      //- injectSvgSprite('${path}icons/orion-svg-sprite.svg'); 
      injectSvgSprite('https://demo.bootstrapious.com/directory/1-4/icons/orion-svg-sprite.svg'); 
      
      
      
    </script>
    <!-- jQuery-->
    <script src="${pageContext.request.contextPath }/resources/vendor/jquery/jquery.min.js"></script>
    <!-- Bootstrap JS bundle - Bootstrap + PopperJS-->
    <script src="${pageContext.request.contextPath }/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Magnific Popup - Lightbox for the gallery-->
    <script src="${pageContext.request.contextPath }/resources/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
    <!-- Smooth scroll-->
    <script src="${pageContext.request.contextPath }/resources/vendor/smooth-scroll/smooth-scroll.polyfills.min.js"></script>
    <!-- Bootstrap Select-->
    <script src="${pageContext.request.contextPath }/resources/vendor/bootstrap-select/js/bootstrap-select.min.js"></script>
    <!-- Object Fit Images - Fallback for browsers that don't support object-fit-->
    <script src="${pageContext.request.contextPath }/resources/vendor/object-fit-images/ofi.min.js"></script>
    <!-- Swiper Carousel                       -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/js/swiper.min.js"></script>
    <script>var basePath = ''</script>
    <!-- Main Theme JS file    -->
    <script src="${pageContext.request.contextPath }/resources/js/theme.js"></script>
<%@ include file="../inc/bottom.jsp" %>