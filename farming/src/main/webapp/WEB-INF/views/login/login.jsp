<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>파밍-로그인</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- Price Slider Stylesheets -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendor/nouislider/nouislider.css">
    <!-- Google fonts - Playfair Display-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700">
    <!-- Google fonts - Poppins-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,400i,700">
    <!-- swiper-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/css/swiper.min.css">
    <!-- Magnigic Popup-->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendor/magnific-popup/magnific-popup.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="${pageContext.request.contextPath }/resources/img/favicon.png">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    
    <!-- 카카오로그인 -->
    <script src="${pageContext.request.contextPath }/resources/js/jquery-3.6.0.min.js"></script>
	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
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
	  		
	  		$('#facebook').click(function(){
	  			location.href="<c:url value='/member/facebookjoin'/>";
	  		});
	  		$('#kakao').click(function(){
	  			location.href="<c:url value='/member/kakaojoin'/>";
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
  </head>
  <body>
    <div class="container-fluid px-3">
      <div class="row min-vh-100">
        <div class="col-md-8 col-lg-6 col-xl-5 d-flex align-items-center">
          <div class="w-100 py-5 px-md-5 px-xxl-6 position-relative">
            <div class="mb-5"><img class="img-fluid mb-3" src="${pageContext.request.contextPath }/resources/img/farming-favicon.png" alt="..." style="max-width: 4rem;">
              <h2>파밍 로그인</h2>
            </div>
            <form class="form-validate" method="post" action="<c:url value='/login/login'/>">
              <div class="mb-4">
                <label class="form-label" for="email"> 이메일</label>
                <input class="form-control" name="email" id="email" type="email" placeholder="example@farming.com" value="${cookie.ck_email.value }">
              </div>
              <div class="mb-4">
                <div class="row">
                  <div class="col">
                    <label class="form-label" for="pwd"> 비밀번호</label>
                  </div>
                  <div class="col-auto"><a class="form-text small text-primary" href="#">Forgot password?</a></div>
                </div>
                <input class="form-control" name="pwd" id="pwd" placeholder="Password" type="password">
              </div>
              <div class="mb-4">
                <div class="form-check">
                  <input class="form-check-input" id="chkSave" name="chkSave" type="checkbox">
                  <label class="form-check-label text-muted" for="chkSave" name="chkSave"> <span class="text-sm">이메일저장</span></label>
                </div>
              </div>
              <!-- Submit-->
              <div class="d-grid">
                <button class="btn btn-lg btn-primary" id="signin">로그인</button>
              </div>
              <hr class="my-3 hr-text letter-spacing-2" data-content="OR">
              
              <div class="mb-4 kakao">
	                <input class="form-control" name="kakao" id="kakao" type="button" value="Connect with Kakaotalk" title="카카오톡로그인">
	          </div>
	          <div class="mb-4 facebook">
	                <input class="form-control" name="facebook" id="facebook" type="button" value="Connect with Facebook" title="페이스북로그인">
	          </div>
              <hr class="my-4">
              <p class="text-center">
              <small class="text-muted text-center">아직 회원이 아니세요? <a href="<c:url value='/member/agreement'/>">회원가입</a></small>
              </p>
            </form>
            <a class="close-absolute me-md-5 me-xl-6 pt-5" href="<c:url value='/index'/>"> 
              <svg class="svg-icon w-3rem h-3rem">
                <use xlink:href="#close-1"> </use>
              </svg>
            </a>
          </div>
        </div>
        <div class="col-md-4 col-lg-6 col-xl-7 d-none d-md-block">
          <!-- Image-->
          <div class="bg-cover h-100 me-n3" style="background-image: url(${pageContext.request.contextPath }/resources/img/photo/photo-1497436072909-60f360e1d4b1.jpg);"></div>
        </div>
      </div>
    </div>
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
  </body>
</html>