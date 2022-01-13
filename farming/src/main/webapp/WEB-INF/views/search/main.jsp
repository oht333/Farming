<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp" %>
    <section class="hero py-5 py-lg-7">
      <div class="container position-relative">
        <!-- Breadcrumbs -->
        <ol class="breadcrumb ps-0  justify-content-center">
          <li class="breadcrumb-item"><a href="<c:url value='../index'/>">Home</a></li>
          <li class="breadcrumb-item active">메인</li>
        </ol>
        <h1 class="hero-heading">디자인 / 개발</h1>
        <div class="row">
          <div class="col-xl-8 mx-auto">
          	<form><p class="text-muted mb-4">지금 파밍과 함께 시작해보세요.</p>
          <div class="input-group">
          	<input class="form-control" type="text" placeholder="어떤 분야의 전문가를 찾으시나요? "><button class="btn btn-primary" type="submit">
          	<i class="fa fa-search"></i></button>
          	</div>
          	</form>
          	</div>
        </div>
      </div>
    </section>
    <section>
      <div class="container">
        <div class="row py-5 pt-lg-0 mt-lg-n5">
          <div class="col-lg-4 mb-3 mb-lg-0 text-center">
            <div class="card border-0 shadow-sm hover-animate h-100">
              <div class="card-body p-4">
                <div class="icon-rounded bg-primary-light mb-3">
                  <svg class="svg-icon text-primary w-2rem h-2rem">
                    <use xlink:href="#destination-map-1"> </use>
                  </svg>
                </div>
                <h3 class="h5">파밍의 첫걸음</h3>
                <p class="text-muted text-sm mb-0">파밍을 처음 이용하시는 고객들을 위한 안내 가이드맵!</p>
                <a class="stretched-link" href="<c:url value='/qna/qnaGuest'/>"> 
                <span class="sr-only">See Topic</span>
                </a>
              </div>
            </div>
          </div>
          <div class="col-lg-4 mb-3 mb-lg-0 text-center">
            <div class="card border-0 shadow-sm hover-animate h-100">
              <div class="card-body p-4">
                <div class="icon-rounded bg-primary-light mb-3">
                  <svg class="svg-icon text-primary w-2rem h-2rem">
                    <use xlink:href="#laptop-screen-1"> </use>
                  </svg>
                </div>
                <h3 class="h5">IT 전문가 가이드</h3>
                <p class="text-muted text-sm mb-0">IT 전문가분들의 파밍사이트 이용관련 안내 가이드! </p>
                <a class="stretched-link" href="<c:url value='/qna/qnaDeveloper'/>"> 
                <span class="sr-only">See Topic</span>
                </a>
              </div>
            </div>
          </div>
          <div class="col-lg-4 mb-3 mb-lg-0 text-center">
            <div class="card border-0 shadow-sm hover-animate h-100">
              <div class="card-body p-4">
                <div class="icon-rounded bg-primary-light mb-3">
                  <svg class="svg-icon text-primary w-2rem h-2rem">
                    <use xlink:href="#chat-app-1"> </use>
                  </svg>
                </div>
                <h3 class="h5">1:1 질문 게시판</h3>
                <p class="text-muted text-sm mb-0"> 더 많은 궁금한점을 게시판에 남겨주세요! </p>
                <a class="stretched-link" href="<c:url value='/qna/qnaList'/>"> 
                <span class="sr-only">See Topic</span>
                </a>
              </div>
            </div>
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