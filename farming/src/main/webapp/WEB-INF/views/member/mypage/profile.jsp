<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../../inc/top.jsp" %>
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.6.0.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript">
	var contextPath = "/farming";
		$(function(){
			$('#edit').click(function(){
				if($('#pwd').val().length<1){
  					alert('비밀번호를 입력하세요');
  					$('#pwd').focus();
  					event.preventDefault();
				}
			});
			$('#searchAddr').click(function(){
  				new daum.Postcode({
  			        oncomplete: function(data) {
  			        	var addr = ''; // 주소 변수
  		 
  		                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
  		                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
  		                    addr = data.roadAddress;
  		                } else { // 사용자가 지번 주소를 선택했을 경우(J)
  		                    addr = data.jibunAddress;
  		                }
  		                document.getElementById('zipcode').value = data.zonecode;
  		                document.getElementById("address1").value = addr;
  		                // 커서를 상세주소 필드로 이동한다.
  		                document.getElementById("address2").focus();
  			        	
  			        }
  			    }).open();
  			});
		});
</script>
    <section class="py-5">
      <div class="container">
        <!-- Breadcrumbs -->
        <ol class="breadcrumb ps-0  justify-content-start">
          <li class="breadcrumb-item"><a href="index.html">Home</a></li>
          <li class="breadcrumb-item"><a href="user-account.html">마이페이지</a></li>
          <li class="breadcrumb-item active">내 정보 수정   </li>
        </ol>
        <h1 class="hero-heading mb-0">내 정보 수정</h1>
        <p class="text-muted mb-5">Update your personal information</p>
        
        <div class="row">
          <div class="col-lg-7 mb-5 mb-lg-0"> 
            <div class="text-block"> 
            <form name="frmEdit" method="post" 
					action="<c:url value='/member/mypage/profile'/>" >
			<%-- <input type="hidden" name="email" value="${param.email}"> --%>
              <div class="mb-4">
                <label class="form-label" for="name"> 이름</label>
                <input class="form-control" name="name" id="name" type="text" placeholder="${name}" autocomplete="off">
              </div>
              <div class="mb-4">
                <label class="form-label" for="email"> 이메일</label>
                <input class="form-control" name="email" id="email" type="email" placeholder="${email}" autocomplete="off" readonly="readonly">
                <!-- <span class="invalidText"></span> -->
              </div>
              <div class="mb-4">
                <label class="form-label" for="pwd"> 비밀번호</label>
                <input class="form-control" name="pwd" id="pwd" type="password">
              </div>
              
              <div class="mb-4">
              	<div class="col-lg-7 d-grid" style="float: left;">
	                <label class="form-label" for="address1"> 주소</label>
	                <input class="form-control" name="address1" id="address1" placeholder="${vo.address1}" type="text" readonly="readonly">
	              </div>
	              <div class="col-lg-4" style="float: right; margin-top: 3px;">
	                <label class="form-label" for=""></label>
	                <input class="form-control" name="searchAddr" id="searchAddr" type="button" value="주소검색" title="주소검색">
	              </div>
              </div>
              <div class="mb-4" style="clear: both;">
                <label class="form-label" for="address2"> 상세주소</label>
                <input class="form-control" name="address2" id="address2" placeholder="${vo.address2}" type="text">
              </div>
              <div class="mb-4" style="clear: both;">
                <label class="form-label" for="zipcode"> 우편번호</label>
                <input class="form-control" name="zipcode" id="zipcode" placeholder="${vo.zipCode}" type="text">
              </div>
              
              <div class="mb-4">
                    <button class="btn btn-outline-success" type="submit" id="edit">&nbsp;&nbsp;&nbsp;수정&nbsp;&nbsp;&nbsp;</button>
                    <a style="float:right;" class="btn btn-outline-success" href="<c:url value='/member/mypage/main'/>">&nbsp;&nbsp;뒤로가기&nbsp;&nbsp;</a>
                    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
                    <a style="margin-left: 40%;" class="btn btn-outline-success" href="<c:url value='/member/mypage/out'/>">&nbsp;&nbsp;&nbsp;탈퇴&nbsp;&nbsp;&nbsp;</a>
              </div>
            </form>
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