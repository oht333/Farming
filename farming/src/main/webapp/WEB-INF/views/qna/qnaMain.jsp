<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp" %>
    <section class="hero py-5 py-lg-7">
      <div class="container position-relative">
        <!-- Breadcrumbs -->
        <ol class="breadcrumb ps-0  justify-content-center">
          <li class="breadcrumb-item"><a href="index.html">Home</a></li>
          <li class="breadcrumb-item active">자주하는 질문</li>
        </ol>
        <h1 class="hero-heading">파밍을 이용하면서 궁금하신 점이 있으신가요 ?</h1>
        <div class="row">
          <div class="col-xl-8 mx-auto">
          	<form><p class="text-muted mb-4">파밍을 이용하시면서 궁금하신 점들을 언제든지 검색해보세요.</p>
          <div class="input-group">
          	<input class="form-control" type="text" placeholder="이곳에 입력하기 ... "><button class="btn btn-primary" type="submit">
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
                <h3 class="h5">질문 게시판</h3>
                <p class="text-muted text-sm mb-0"> 더 많은 궁금한점을 게시판에 남겨주세요! </p>
                <a class="stretched-link" href="knowledge-base-topic.html"> 
                <span class="sr-only">See Topic</span>
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="py-5">
            <p class="subtitle text-secondary"> &nbsp;&nbsp; 무엇이 궁금하세요 ?  </p>
            <h2> &nbsp; ※ 가장 많이 들어온 질문사항  </h2><br>
         
      <div class="accordion" id="accordionExample">
  <div class="accordion-item">
    <h2 class="accordion-header" id="headingOne">
      <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
        <strong>Q.&nbsp; 파밍은 어떤 서비스인가요 ?</strong>
      </button>
    </h2>
    <div id="collapseOne" class="accordion-collapse collapse" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
      <div class="accordion-body">
        <br><h6>A.&nbsp; 파밍은 IT관련서비스가 필요한 고객과 전문가를 연결합니다.</h6><br> 
        <strong>고객 이용안내</strong><br><br>
        <code>고객이 원하는 서비스를 선택하여 요청서를 작성하면</code> 48시간 내에 전문가가 견적(견적금액과 프로필)을 보냅니다.<br>
        여러 명의 전문가 견적을 확인한 후 채팅방을 통해 상담을 받고, 나에게 딱 맞는 전문가를 선택하세요.<br><br>
        <strong>전문가 이용안내</strong><br><br>
        고객이 직접 작성한 요청서를 전문가에게 보내드립니다.<br>
        받은 요청서 중에서 적합한 고객을 선택하여 <code>고객의 요구사항이 반영되도록 견적(견적금액과 프로필)을 보내세요.</code><br>
        채팅 혹은 유선 통화를 통해 고객과 빠르게 연락할 수 있습니다.<br>
        
      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header" id="headingTwo">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
        <strong>Q.&nbsp; 전문가 / 고객과 어떻게 거래하나요 ?</strong>
      </button>
    </h2>
    <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
      <div class="accordion-body">
      	<br><h6>A.&nbsp; 고객이 원하는 서비스의 요청서를 작성해서 보내면 , 전문가는 고객에게 견적(견적금액과 프로필)을 보냅니다</h6><br>
        고객은 최대 48시간 이내에 여러 전문가들의 견적을 받아볼 수 있습니다.<br><br>
        고객과 전문가는 채팅이나 전화번호를 이용한 유선통화로 전문가와 상세 내용을 조율할 수 있습니다.<br><br>
        서비스를 진행하기로 협의했다면 파밍캐시결제 혹은 카드결제를 이용할 수 있습니다.<br><br>
        파밍캐시로 결제를 해도, <code>고객이 거래를 확정하기 전까지 전문가에게 대금이 지급되지 않습니다.</code><br><br>
		빠르고 안전한 거래를 위해 되도록 파밍캐시 결제를 이용해주세요.
       
      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header" id="headingThree">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
        <strong>Q.&nbsp; 요청서는 무엇인가요? 작성은 어떻게 하나요 ?</strong>
      </button>
    </h2>
    <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
      <div class="accordion-body">
         <br><h6>A.&nbsp; 고객은 전문가에게 서비스 견적을 요청하기 위해 요청서를 작성합니다.</h6><br>
         원하는 서비스를 선택하거나 홈페이지 검색창에서 원하는 서비스를 찾으면 서비스별 요청서를 작성할 수 있습니다.<br><br>
         요청서를 작성하실 때는, 요청서의 <code>모든 질문에 답변을 해야 합니다.</code><br><br>
         원하는 서비스 내용을 구체적으로 작성해야 정확한 견적금액을 확인할 수 있고, 조건에 맞는 전문가를 찾을 확률이 더 높아집니다.<br><br>
         마지막으로 고객님의 이메일 주소, 휴대폰 번호를 입력하고, 휴대폰 번호 인증을 받으세요.<br><br>
		 내 요청에 꼭 맞는 전문가의 견적이 들어오면, 이메일과 휴대폰으로 알려드립니다.<br><br>
		 전문가는 요청서를 확인한 후 본인에게 잘 맞는 요청이라고 생각하면 견적(견적금액과 프로필)을 발송합니다.<br><br>
		 고객님은 최대 48시간 이내에 다양한 전문가의 견적을 받아보실 수 있습니다.<br><br>
		 <code>단, 작성한 요청서 조건에 해당하는 전문가가 없다면 견적이 도착하지 않을 수 있습니다.</code><br><br>
        
      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header" id="headingFour">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
        <strong>Q.&nbsp; 파밍을 통해 전문가 / 고객이 연결되면 수수료가 있나요 ?</strong>
      </button>
    </h2>
    <div id="collapseFour" class="accordion-collapse collapse" aria-labelledby="headingFour" data-bs-parent="#accordionExample">
      <div class="accordion-body">
      	<br><h6>A.&nbsp; 파밍을 통해 전문가와 거래를 하더라도 고객에게 수수료가 부과되지 않습니다.</h6><br>
       	고객이 서비스 요청서를 작성하면 적합한 전문가에게 전달되고, 전문가는 요청서를 확인한 후 견적을 보냅니다.<br><br>
        전문가와 고객은 채팅과 유선통화를 통해 고용을 확정할 수 있습니다.<br><br>
        고용 의사가 전혀 없는 상태에서 <code>견적만을 알아보기 위해 요청서를 남발하는 것은 자제해 주세요.</code>  
      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header" id="headingFive">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
        <strong>Q.&nbsp; 파밍의 전문가로 가입하고 싶어요. 자격조건이 있나요 ?</strong>
      </button>
    </h2>
    <div id="collapseFive" class="accordion-collapse collapse" aria-labelledby="headingFive" data-bs-parent="#accordionExample">
      <div class="accordion-body">
      	<br><h6>A.&nbsp; 누구나 본인인증 후 파밍에 가입해서 고객을 만날 수 있습니다.</h6><br>
        단, 특정 개발분야에서 전문가로 활동하려면 <code>유효한 사업자등록증</code>이 필요합니다.<br><br>
        파밍에서는 전문가와 고객 서로가 다양성을 존중하고 각자 주도적인 선택을 할 수 있도록 돕습니다.<br><br>
        지금 바로, 회원가입 후 파밍에서 고객을 만나보세요.
      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header" id="headingSix">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseSix" aria-expanded="false" aria-controls="collapseSix">
        <strong>Q.&nbsp; 파밍캐시는 무엇인가요 ?</strong>
      </button>
    </h2>
    <div id="collapseSix" class="accordion-collapse collapse" aria-labelledby="headingSix" data-bs-parent="#accordionExample">
      <div class="accordion-body">
        <br><h6>A.&nbsp; 파밍 웹에서 전문가와 연락을 하려면 파밍캐시가 필요합니다.</h6><br>
        파밍캐시는 파밍 웹에 로그인한 뒤 충전할 수 있습니다.<br><br>
        필요할 때마다 충전할 수도 있고, 사용하지 않은 충전캐시는 언제든지 환불할 수 있습니다.<br><br>
        파밍캐시는 미리 충전했다가, 전문가에게 견적을 요청할때 차감됩니다.<br><br>
        <code>고객님께서 보낸 견적을 해당 전문가가 48시간 동안 확인하지 않으면 사용한 파밍캐시를 보너스캐시로 돌려드립니다.</code>
      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header" id="headingSeven">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseSeven" aria-expanded="false" aria-controls="collapseSeven">
        <strong>Q.&nbsp; 견적은 어떻게 보내나요 ?</strong>
      </button>
    </h2>
    <div id="collapseSeven" class="accordion-collapse collapse" aria-labelledby="headingSeven" data-bs-parent="#accordionExample">
      <div class="accordion-body">
        <br><h6>A.&nbsp; 관심이 있는 요청서를 받으셨다면 고객에게 견적을 보내보세요.</h6><br>
        요청서를 여러 개 받았더라도, 나와 조건이 맞는 요청서에만 견적을 보내면 됩니다.<br><br>
        견적을 발송하여 고객님과의 협의를 통해 사안들을 조정해보세요.<br><br>
        파밍은 전문가분들의 능력향상과 원만한 조건 매칭을 최대한 지원해드립니다.
      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header" id="headingEight">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseEight" aria-expanded="false" aria-controls="collapseEight">
        <strong>Q.&nbsp; 파밍의 전문가는 믿을 수 있나요 ?</strong>
      </button>
    </h2>
    <div id="collapseEight" class="accordion-collapse collapse" aria-labelledby="headingEight" data-bs-parent="#accordionExample">
      <div class="accordion-body">
        <br><h6>A.&nbsp; 파밍에서는 전문가의 자격이나 자질, 역량 등을 검증하기 위해 꾸준히 노력하고 있습니다.</h6><br>
        만일 전문가가 프로필에 허위 정보를 기재하였거나, 서비스를 제공할 역량이 충분하지 않다고 판단되는 경우에는 전문가의 계정을 제한하고 있습니다.<br><br>
        각종 개발분야 및 디자인의 <code>전문적인 서비스는 관련 법령에 따라 사업자등록증 및 자격증을 필수로 등록합니다.</code><br><br>
        파밍은 개인정보보호를 위해 사업자등록증, 자격증의 등록 여부만을 프로필에 기재하고 있습니다.
      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header" id="headingNine">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseNine" aria-expanded="false" aria-controls="collapseNine">
        <strong>Q.&nbsp; 파밍에서 활동하는 전문가는 숨고의 직원인가요 ?</strong>
      </button>
    </h2>
    <div id="collapseNine" class="accordion-collapse collapse" aria-labelledby="headingNine" data-bs-parent="#accordionExample">
      <div class="accordion-body">
        <br><h6>A.&nbsp; 파밍에서 활동하는 전문가는 파밍의 직원이 아닙니다.</h6><br>
        전문가는 각 서비스에 전문 역량을 가진 개인, 업체로서 본인 인증 절차를 거친 뒤 전문가로 등록한 회원입니다.<br><br>
        <code>파밍은 전문가와 고용이나 도급, 근로계약을 체결하지 않습니다.</code><br><br>
        따라서 파밍 고객센터에서 전문가의 개인정보는 제공해드릴 수 없습니다.<br><br>
        서비스에 대한 구체적인 내용은 파밍 채팅이나 유선통화로 전문가님께 직접 문의해 주세요.<br><br>
        그밖에 파밍 이용에 불편한 점이 있거나 문의 사항이 있다면 질문게시판을 이용해주세요.
      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header" id="headingTen">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTen" aria-expanded="false" aria-controls="collapseTen">
        <strong>Q.&nbsp; 아이디(이메일 주소), 비밀번호가 기억나지 않아요.</strong>
      </button>
    </h2>
    <div id="collapseTen" class="accordion-collapse collapse" aria-labelledby="headingTen" data-bs-parent="#accordionExample">
      <div class="accordion-body">
        <br><h6>A.[1]&nbsp; 아이디(이메일 주소)</h6><br>
        파밍의 아이디는 이메일 주소입니다.<br><br> 
        파밍의 요청서를 작성하셨었다면 요청서 작성 마지막 단계에서 입력하셨던 이메일 주소가 파밍의 아이디입니다.<br><br>
        기억이 나지 않으신다면, 파밍 고객센터 이메일을 통해 문의주시면 도와드리겠습니다.<br><br>
        <h6>A.[2]&nbsp; 비밀번호</h6><br> 
        파밍 고객센터 이메일을 통해 연락해 주시면 임시 비밀 번호 발급을 도와드리겠습니다.
      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header" id="headingEle">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseEle" aria-expanded="false" aria-controls="collapseEle">
        <strong>Q.&nbsp; 전문가에게 리뷰는 어떻게 남기나요 ?</strong>
      </button>
    </h2>
    <div id="collapseEle" class="accordion-collapse collapse" aria-labelledby="headingEle" data-bs-parent="#accordionExample">
      <div class="accordion-body">
        <br><h6>A.&nbsp; 전문가에게 만족스러운 서비스를 받으셨다면 이용후기 게시판에 리뷰를 남겨주세요.</h6><br>
        고객님이 남겨주신 한 마디가 전문가님에게는 큰 힘이 될 수 있습니다.<br><br> 
        <code>전문가 리뷰는 전문가를 고용한 이력이 있는 고객만 작성할 수 있습니다.</code><br><br>
        입금을 완료하거나, 고용하기 버튼을 누른 이후에 리뷰를 작성하세요.<br><br>
        <strong>※ 리뷰에 포함되면 좋은 내용</strong><br><br>
        ☞ 기대했던 만큼 서비스가 잘 진행되었나요?<br><br>
        ☞ 서비스 일정 조율이 잘 되었나요?<br><br>
        ☞ 전문가님이 서비스에 대한 약속은 잘 지키셨나요?<br><br>
        ☞ 특별히 전문가님에게 감동 받은 부분이 있나요?
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