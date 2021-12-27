<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../../inc/top.jsp" %>
    <section class="py-5">
      <div class="container">
        <!-- Breadcrumbs -->
        <ol class="breadcrumb ps-0  justify-content-start">
          <li class="breadcrumb-item"><a href="index.html">Home</a></li>
          <li class="breadcrumb-item"><a href="user-account.html">Account</a></li>
          <li class="breadcrumb-item active">Login &amp; security   </li>
        </ol>
        <h1 class="hero-heading mb-0">내 정보 수정</h1>
        <p class="text-muted mb-5">Manage your Login & security and settings here.</p>
        
        <div class="row">
          <div class="col-lg-7 mb-5 mb-lg-0"> 
            <div class="text-block"> 
            <form name="frmWrite" method="post" 
					action="<c:url value='/admin/mypage/profile'/>" >
              <div class="mb-4">
                <label class="form-label" for="name"> name</label>
                <input class="form-control" name="name" id="name" type="text" placeholder="${vo.name}" autocomplete="off" required data-msg="Please enter your name">
              </div>
              <div class="mb-4">
                <label class="form-label" for="email"> Email Address</label>
                <input class="form-control" name="email" id="email" type="email" placeholder="${vo.email}" autocomplete="off" required data-msg="Please enter your email">
                <!-- <span class="invalidText"></span> -->
              </div>
              <div class="mb-4">
                <label class="form-label" for="pwd"> Password</label>
                <input class="form-control" name="pwd" id="pwd" placeholder="${vo.pwd}" type="password" required data-msg="Please enter your password">
              </div>
              <div class="mb-4">
                <label class="form-label" for="address1"> Address</label>
                <input class="form-control" name="address1" id="address1" type="address1" placeholder="${vo.address1}" autocomplete="off" required data-msg="Please enter your address1">
              </div>
              <div class="mb-4">
                <label class="form-label" for="address2"> Detail Address</label>
                <input class="form-control" name="address2" id="address2" type="address2" placeholder="${vo.address2}" autocomplete="off" required data-msg="Please enter your address2">
              </div>
              <div class="mb-4">
                <label class="form-label" for="zipcode"> Zipcode </label>
                <input class="form-control" name="zipcode" id="zipcode" type="zipcode" placeholder="${vo.zipcode}" autocomplete="off" required data-msg="Please enter your zipcode">
              </div>
              <div class="col-lg-2 d-grid">
                    <button class="btn btn-primary rounded-pill h-100" type="submit">수정 </button>
              </div>
              <div class="col-lg-2 d-grid">
                     <button class="btn btn-primary rounded-pill h-100" type="button">뒤로가기 </button>
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
<%@ include file="../../inc/bottom.jsp" %>