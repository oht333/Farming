<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<footer class="position-relative z-index-10 d-print-none">
      <!-- Main block - menus, subscribe form-->
      <div class="py-6 bg-gray-200 text-muted"> 
        <div class="container">
          <div class="row">
            <div class="col-lg-4 mb-5 mb-lg-0">
              <div class="fw-bold text-uppercase text-dark mb-3"><h6>1588-1818</h6></div>
              <p>평일 10:00 - 18:00 <br>
              		(점심시간 13:00 - 14:00 제외 · 주말/공휴일 제외)</p>
              
            </div>
            <div class="col-lg-2 col-md-6 mb-5 mb-lg-0">
              <h6 class="text-uppercase text-dark mb-3">파밍소개</h6>
              <ul class="list-unstyled">
                <li><a class="text-muted" href="<c:url value='/introduce/company'/>">회사소개</a></li>
              </ul>
            </div>
            <div class="col-lg-2 col-md-6 mb-5 mb-lg-0">
              <h6 class="text-uppercase text-dark mb-3">고객안내</h6>
              <ul class="list-unstyled">
                <li><a class="text-muted" href="compare.html">이용안내</a></li>
                <li><a class="text-muted" href="team.html">전문가찾기</a></li>
              </ul>
            </div>
            <div class="col-lg-2 col-md-6 mb-5 mb-lg-0">
              <h6 class="text-uppercase text-dark mb-3">전문가안내</h6>
              <ul class="list-unstyled">
                <li><a class="text-muted" href="compare.html">이용안내</a></li>
                <li><a class="text-muted" href="<c:url value='/expert/agreement'/>">전문가가입</a></li>
                <li><a class="text-muted" href="team.html">전문가센터</a></li>
              </ul>
            </div>
            <div class="col-lg-2 col-md-6 mb-5 mb-lg-0">
              <h6 class="text-uppercase text-dark mb-3">고객센터</h6>
              <ul class="list-unstyled">
                <li><a class="text-muted" href="<c:url value='/qna/qnaList'/>">공지사항</a></li>
                <li><a class="text-muted" href="<c:url value='/qna/qnaMain'/>">자주묻는질문</a></li>
              </ul>
            </div>
          </div>
          <br>
          <div class="row">
          	<div class="col-lg-1 col-md-6 mb-5 mb-lg-0">
              <a style="font-size: 14px;" href="<c:url value='/member/agreement'/>">이용약관</a>
            </div>
             <div class="col-lg-2 col-md-6 mb-5 mb-lg-0">
              <a style="font-size: 14px;" href="#">개인정보처리방침</a>
             </div>
          </div>
           <br>
          <div class="row">
          	<div class="col-lg-8 col-md-6 mb-5 mb-lg-0" style="margin-bottom: 0; padding-bottom: 0;">
              <p style="font-size: 12px;">(주)파밍은 통신판매중개자로서 통신판매의 당사자가 아니며 개별 판매자가 제공하는 서비스에 대한 이행, 계약사항 등과 관련한 의무와 책임은 거래당사자에게 있습니다.<br>
					상호명:(주)그린파밍 · 대표이사:오지문 · 개인정보책임관리자:양명숙 · <a href="#">주소:경기도 성남시 분당구 북정로 6(정자동 178-1)</a><br>
					사업자등록번호:000-00-00000 · 고객센터:1588-1818 · 이메일green@farming.com</p>
            </div>
            <div class="col-lg-4 col-md-6 mb-5 mb-lg-0" style="text-align: center;">
              <ul class="list-inline">
                <li class="list-inline-item"><a class="text-muted text-primary-hover" href="#" target="_blank" title="twitter"><i class="fab fa-twitter"></i></a></li>
                <li class="list-inline-item"><a class="text-muted text-primary-hover" href="#" target="_blank" title="facebook"><i class="fab fa-facebook"></i></a></li>
                <li class="list-inline-item"><a class="text-muted text-primary-hover" href="#" target="_blank" title="instagram"><i class="fab fa-instagram"></i></a></li>
                <li class="list-inline-item"><a class="text-muted text-primary-hover" href="#" target="_blank" title="pinterest"><i class="fab fa-pinterest"></i></a></li>
                <li class="list-inline-item"><a class="text-muted text-primary-hover" href="#" target="_blank" title="vimeo"><i class="fab fa-vimeo"></i></a></li>
              </ul>
              <c:if test="${empty userNo }">
              <ul class="list-inline">
              	<li class="list-inline-item"><a class="text-muted text-primary-hover" href="<c:url value='/admin/login'/>" title="admin">관리자로그인</a></li>
              </ul>
              </c:if>
            </div>
          </div>
        </div>
      </div>
      <!-- Copyright section of the footer-->
      <div class="py-4 fw-light bg-gray-800 text-gray-300">
        <div class="container">
          <div class="row align-items-center">
            <div class="col-md-6 text-center text-md-start">
              <p class="text-sm mb-md-0">&copy; 2022, gr.farming.  All rights reserved.</p>
            </div>
            <div class="col-md-6">
              <ul class="list-inline mb-0 mt-2 mt-md-0 text-center text-md-end">
                <li class="list-inline-item"><img class="w-2rem" src="${pageContext.request.contextPath }/resources/img/visa.svg" alt="..."></li>
                <li class="list-inline-item"><img class="w-2rem" src="${pageContext.request.contextPath }/resources/img/mastercard.svg" alt="..."></li>
                <li class="list-inline-item"><img class="w-2rem" src="${pageContext.request.contextPath }/resources/img/paypal.svg" alt="..."></li>
                <li class="list-inline-item"><img class="w-2rem" src="${pageContext.request.contextPath }/resources/img/western-union.svg" alt="..."></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </footer>
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
    <script src="${pageContext.request.contextPath }/resources/js/jquery-3.6.0.min.js"></script>
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
  </body>
</html>