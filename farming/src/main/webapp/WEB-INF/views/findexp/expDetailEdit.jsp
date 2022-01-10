<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp" %>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/expDetail.css">
<style>
.btEdit + input{display:none}
#btEdit1 + input{display:none}
#btEdit2 + input{display:none}
#btEdit3 + div#demo-basic{display:none}
#btEdit4 + div#payMethod{display:none}
#btEdit5 + .select_box{display:none}
#btEdit6 + .select_box{display:none}
#btEdit7 ~ div.imgBox{display:none}
#btEdit8 ~ div.imgBox{display:none}
#btEdit9 + .radio_box{display:none}

.thumb {
	width:5rem;
	height:5rem;
	border-radius: 8px;
    border: 0.0625rem solid #f2f2f2;
    cursor: pointer;
    background: url(data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCI+PGcgZmlsbD0iI0I1QjVCNSIgZmlsbC1ydWxlPSJldmVub2RkIj48cGF0aCBkPSJNOSAwaDJ2MjBIOXoiLz48cGF0aCBkPSJNMCAxMVY5aDIwdjJ6Ii8+PC9nPjwvc3ZnPg==) no-repeat 50%,#f2f2f2;
}

.select_box{
 	position:relative;
}
.select_box::after{
	content:'';
	display:block;
	position:absolute;
	right:20px;
	top:50%;
	transform:translateY(-50%);
	width:18px;
	height:13px;
     	background: url(${pageContext.request.contextPath }/resources/img/arrow-down-sign-to-navigate.png) 96% center no-repeat;
	background-size: 10px;    		
}    
</style>

<section>
      <!-- Slider main container-->
      <div class="swiper-container detail-slider slider-gallery">
        <!-- Additional required wrapper-->
        <div class="swiper-wrapper">
          <!-- Slides-->
          <div class="swiper-slide"><a href="${pageContext.request.contextPath }/resources/img/photo/photo-1426122402199-be02db90eb90.jpg" data-toggle="gallery-top" title="Our street"><img class="img-fluid" src="${pageContext.request.contextPath }/resources/img/photo/photo-1426122402199-be02db90eb90.jpg" alt="Our street"></a></div>
          <div class="swiper-slide"><a href="${pageContext.request.contextPath }/resources/img/photo/photo-1512917774080-9991f1c4c750.jpg" data-toggle="gallery-top" title="Outside"><img class="img-fluid" src="${pageContext.request.contextPath }/resources/img/photo/photo-1512917774080-9991f1c4c750.jpg" alt="Outside"></a></div>
          <div class="swiper-slide"><a href="${pageContext.request.contextPath }/resources/img/photo/photo-1494526585095-c41746248156.jpg" data-toggle="gallery-top" title="Rear entrance"><img class="img-fluid" src="${pageContext.request.contextPath }/resources/img/photo/photo-1494526585095-c41746248156.jpg" alt="Rear entrance"></a></div>
          <div class="swiper-slide"><a href="${pageContext.request.contextPath }/resources/img/photo/photo-1484154218962-a197022b5858.jpg" data-toggle="gallery-top" title="Kitchen"><img class="img-fluid" src="${pageContext.request.contextPath }/resources/img/photo/photo-1484154218962-a197022b5858.jpg" alt="Kitchen"></a></div>
          <div class="swiper-slide"><a href="${pageContext.request.contextPath }/resources/img/photo/photo-1522771739844-6a9f6d5f14af.jpg" data-toggle="gallery-top" title="Bedroom"><img class="img-fluid" src="${pageContext.request.contextPath }/resources/img/photo/photo-1522771739844-6a9f6d5f14af.jpg" alt="Bedroom"></a></div>
          <div class="swiper-slide"><a href="${pageContext.request.contextPath }/resources/img/photo/photo-1488805990569-3c9e1d76d51c.jpg" data-toggle="gallery-top" title="Bedroom"><img class="img-fluid" src="${pageContext.request.contextPath }/resources/img/photo/photo-1488805990569-3c9e1d76d51c.jpg" alt="Bedroom"></a></div>
        </div>
        <div class="swiper-pagination swiper-pagination-white"></div>
        <div class="swiper-button-prev swiper-button-white"></div>
        <div class="swiper-button-next swiper-button-white"></div>
      </div>
    </section>
    <c:if test="${expVo.expertNo eq expNo }">
    <div class="container py-5">
      <div class="row">
        <div class="col-lg-8"> 
        <ul class="nav nav-tabs" id="myTab" role="tablist">
          <li class="nav-item"><a class="nav-link active" id="tab1" data-bs-toggle="tab" href="#tab1-content" role="tab" aria-controls="tab1-content" aria-selected="true">전문가 정보</a></li>
          <li class="nav-item"><a class="nav-link" id="tab2" href="#review" role="tab" aria-controls="tab2-content">서비스 후기</a></li>
          <li class="nav-item"><a class="nav-link" id="tab3" data-bs-toggle="tab" href="#tab3-content" role="tab" aria-controls="tab3-content" aria-selected="false">질문 답변</a></li>
        </ul>
        <div class="tab-content py-5 px-3">
	        <!-- 1. 한줄 소개 -->
	        <div class="text-block row">
	        	<input type="hidden" name="expertNo" value="${expNo }">
	          <h1 class="mb-4">${expVo.name }</h1>
	          <h6 class="mb-3 col-md-8">한줄 소개</h6>
	          	<a id="btEdit1" class="btEdit text-primary col-md-4 d-md-flex align-items-center justify-content-end"
	          		>수정</a>
	          	<input class="form-control mb-sm-4" type="text" name="intro" value="${infoVo.intro }">
	          <p id="introBox1" class="text-muted fw-light">${infoVo.intro}</p>
	          
	        </div>
	        
	        <!-- 제공서비스 -->
	        <div class="text-block ">
	          <h4 class="mb-4">제공 서비스</h4>
	          <ul class="list-inline">
	          	<c:forEach var="map" items="${fieldList }">
	             <li class="list-inline-item mb-2"><span class="badge rounded-pill bg-light p-3 text-muted fw-normal">${map['DETAIL'] }</span></li>
	          	</c:forEach>
	          </ul>
	        </div>
	        
	        <!-- 2. 서비스 상세 설명 -->
	        <div class="text-block row">
	          <h4 class="mb-4 col-md-8">서비스 상세 설명</h4>
	         	<a id="btEdit2" class="mb-4 btEdit text-primary col-md-4 d-md-flex align-items-center justify-content-end"
	         		>수정</a>
	         	<input class="form-control mb-sm-4" type="text" name="detailInfo" value="${infoVo.detailInfo }">
	          <p id="infoBox2" class="text-muted fw-light">${infoVo.detailInfo}</p>
	        </div>
	        
	        <!-- 전문가 활동지역 -->
	        <div class="text-block">
	          <h5 class="mb-4">전문가 활동지역</h5>
	          <div class="map-wrapper-300 mb-3">
	         	  <input type="hidden" id="address" value="${expVo.address1}">
	            <div class="h-100 " id="map"></div>
	        <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ff1949cec1418c92938f079cf57f3c3e&libraries=services"></script>
			<script type="text/javascript">
				var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
			    mapOption = {
			        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
			        level: 3 // 지도의 확대 레벨
			    };  
		
				// 지도를 생성합니다    
				var map = new kakao.maps.Map(mapContainer, mapOption); 
			
				// 주소-좌표 변환 객체를 생성합니다
				var geocoder = new kakao.maps.services.Geocoder();
			
				var address=$('#address').val();
				// 주소로 좌표를 검색합니다
				geocoder.addressSearch(address, function(result, status) {
					//console.log("search 안에서 주소=>"+address);
			
				    // 정상적으로 검색이 완료됐으면 
				     if (status === kakao.maps.services.Status.OK) {
			
				        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
			
				        // 결과값으로 받은 위치를 마커로 표시합니다
				        var marker = new kakao.maps.Marker({
				            map: map,
				            position: coords
				        });
			
			
				        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
				        map.setCenter(coords);
				    } 
				});
			</script>
	           </div>
	         </div>
	         
	         <!-- 3. 연락 가능 시간 -->
	         <div class="text-block row">
	           <h4 class="mb-4 col-md-8">연락 가능 시간</h4>
	          	<a id="btEdit3" class="mb-4 btEdit text-primary col-md-4 d-md-flex align-items-center justify-content-end"
	          		>수정</a>
	          	<div id="demo-basic" class="col-md-8">
	          		<p>
	                <input type='time' class='timepicker' id='demo-custom-intervals-1' min='00:00' max='24:00' step='1800' required >
	                <label for='demo-custom-intervals-1'>부터</label> 
	                <input type='time' class='timepicker' id='demo-custom-formats-1' min='12:00' max='24:00' step='1800' required >
	                <label for='demo-custom-formats-1'>까지</label> 
	            </p>
			</div>
	         		<c:if test="${infoVo.contactTime=='N'}">
	         			<p class="text-muted fw-light">등록되지 않음</p>
	         		</c:if>
	         		<c:if test="${infoVo.contactTime!='N'}">
	         			<p id="infoBox3" class="text-muted fw-light">${infoVo.contactTime}</p>
	         		</c:if>
	         </div>
	         <script>
	         	$(function(){
	         		$('.timepicker').timepicker({
	         		    timeFormat: 'h:mm p',
	         		    interval: 60,
	         		    minTime: '10',
	         		    maxTime: '6:00pm',
	         		    defaultTime: '11',
	         		    startTime: '10:00',
	         		    dynamic: false,
	         		    dropdown: true,
	         		    scrollbar: true
	         		});
	         	});
	         </script>
	         <!-- 4. 결제수단 -->
	         <div class="text-block row">
	           <h4 class="mb-4 col-md-8">결제 수단</h4>
	          	<a id="btEdit4" class="mb-4 btEdit text-primary col-md-4 d-md-flex align-items-center justify-content-end"
	          		>수정</a>
	         		<div id="payMethod">
	         		 <ul class="list-inline mb-0">
	                <li class="list-inline-item">
	           	<div class="form-check">
	            	<input type="checkbox" name="payMethod" id="payMethod1" class="form-check-input" value="파밍페이">
	            	<label class="form-check-label text-muted" for="payMethod1">파밍페이</label>	
	            </div>	
	           </li>
	           <li class="list-inline-item">
	            <div class="form-check">
	            	<input type="checkbox" name="payMethod" id="payMethod2" class="form-check-input" value="카드결제">
	            	<label class="form-check-label text-muted" for="payMethod2">카드결제</label>	
	            </div>	
	           </li>
	           <li class="list-inline-item">
	            <div class="form-check">
	            	<input type="checkbox" name="payMethod" id="payMethod3" class="form-check-input" value="계좌이체">
	            	<label class="form-check-label text-muted" for="payMethod3">계좌이체</label>	
	            </div>
	           </li>
	          </ul>
	           </div>
	           <p id="infoBox4" class="text-muted fw-light">${infoVo.payMethod}</p>
	         </div>
	         
	         <!-- 5. 경력 -->
	         <div class="text-block row">
	           <h4 class="mb-4 col-md-8">경력</h4>
	          	<a id="btEdit5" class="mb-4 btEdit text-primary col-md-4 d-md-flex align-items-center justify-content-end"
	          		>수정</a>
	          	<div class="select_box col-2">
	          		<select class="test_select form-control  " name="career" id="career" data-style="btn-selectpicker">
	          			<option value="신입">신입</option>
	          			<option value="1년 이상">1년 이상</option>
	          			<option value="3년 이상">3년 이상</option>
	          			<option value="5년 이상">5년 이상</option>
	          			<option value="10년 이상">10년 이상</option>
	          		</select>
	          	</div>
	           <p id="infoBox5" class="text-muted fw-light">${infoVo.career}</p>
	         </div>
	         
	         <!-- 6. 직원수 -->
	         <div class="text-block row">
	           <h4 class="mb-4 col-md-8">직원수</h4>
	          	<a id="btEdit6" class="mb-4 btEdit text-primary col-md-4 d-md-flex align-items-center justify-content-end"
	          		>수정</a>
	          	<div class="select_box col-2">
	          		<select class="test_select form-control" name="staff" id="staff" data-style="btn-selectpicker">
	          			<option value="1명 이상">1명 이상</option>
	          			<option value="5명 이상">5명 이상</option>
	          			<option value="10명 이상">10명 이상</option>
	          			<option value="20명 이상">20명 이상</option>
	          			<option value="30명 이상">30명 이상</option>
	          		</select>
	          	</div>
	           <p id="infoBox6" class="text-muted fw-light">${infoVo.staff}</p>
	         </div>
	         
	         <!-- 7. 사업자 등록증 -->
	         <div class="text-block row">
	           <h4 class="mb-2 col-md-8">사업자등록증</h4>
	          	<a id="btEdit7" class="mb-2 btEdit text-primary col-md-4 d-md-flex align-items-center justify-content-end"
	          		>수정</a>
	            <p class="text-body small">허위정보에 대한 모든 책임은 본인에게 있습니다</p>
	          		<div class="imgBox">
	           		<!-- <div class="thumb"></div> -->
	           		<div>
	            		<input type="file" name="businessLicense" id="businessLicense">
	           		</div>
		        </div>
	           	<c:if test="${infoVo.businessLicense!='N'}">
		            <p id="infoBox7" class="btEdit text-muted fw-light">${infoVo.businessLicense}</p>
		            <img src="<c:url value='/resources/pd_images/${infoVo.businessLicense }'/>"
	 				border="0" width="150">
		        </c:if>
	         </div>
	         
	         <!-- 8. 자격증 -->
	         <div class="text-block row">
	           <h4 class="mb-2 col-md-8">자격증 및 기타 서류</h4>
	          	<a id="btEdit8" class="mb-2 text-primary col-md-4 d-md-flex align-items-center justify-content-end"
	          		>수정</a>
	          	<p class="text-body small">허위정보에 대한 모든 책임은 본인에게 있습니다</p>
	          	<div class="imgBox">
	          		<div class="thumb"></div>
	        </div>
	          	<c:if test="${!empty infoVo.license}">	
	           	<input class="form-control mb-sm-4" type="text" name="license" value="${infoVo.license }">
	            <p id="infoBox8" class="text-muted fw-light">${infoVo.license}</p>
	           </c:if>
	         </div>
	         
	         <!-- 9. 세금계산서 발행 -->
	         <div class="text-block row">
	           <h4 class="mb-4 col-md-8">세금계산서 발행</h4>
	          	<a id="btEdit9" class="btEdit mb-4 text-primary col-md-4 d-md-flex align-items-center justify-content-end"
	          		>수정</a>
	          	<div class="radio_box">
	         			<input type="radio" name="taxInvoice" id="taxInvoice1" value="Y">
	         			<label for="taxInvoice1" class="form-check-inline ">네, 가능합니다</label>
	         			<input type="radio" name="taxInvoice" id="taxInvoice2" value="N" >
	         			<label for="taxInvoice2">아니요, 불가합니다</label>
	          	</div>
	          	<c:if test="${infoVo.taxInvoice=='Y'}">
	           	<p id="infoBox9" class="text-muted fw-light">네, 가능합니다</p>
	           </c:if>
	           <c:if test="${infoVo.taxInvoice=='N'}">
	           	<p id="infoBox9" class="text-muted fw-light">아니요, 불가합니다</p>
	           </c:if>
	         </div>
	         
	         <!-- 10. 이미지 업로드 -->
	         <div class="text-block">
	           <h5 class="mb-4">사진</h5>
	           <div class="row gallery mb-3 ms-n1 me-n1">
	             <div class="col-lg-4 col-6 px-1 mb-2"><a href="${pageContext.request.contextPath }/resources/img/photo/photo-1426122402199-be02db90eb90.jpg" data-fancybox="gallery" title="Our street"><img class="img-fluid" src="${pageContext.request.contextPath }/resources/img/photo/photo-1426122402199-be02db90eb90.jpg" alt="..."></a></div>
	             <div class="col-lg-4 col-6 px-1 mb-2"><a href="${pageContext.request.contextPath }/resources/img/photo/photo-1512917774080-9991f1c4c750.jpg" data-fancybox="gallery" title="Outside"><img class="img-fluid" src="${pageContext.request.contextPath }/resources/img/photo/photo-1512917774080-9991f1c4c750.jpg" alt="..."></a></div>
	             <div class="col-lg-4 col-6 px-1 mb-2"><a href="${pageContext.request.contextPath }/resources/img/photo/photo-1494526585095-c41746248156.jpg" data-fancybox="gallery" title="Rear entrance"><img class="img-fluid" src="${pageContext.request.contextPath }/resources/img/photo/photo-1494526585095-c41746248156.jpg" alt="..."></a></div>
	             <div class="col-lg-4 col-6 px-1 mb-2"><a href="${pageContext.request.contextPath }/resources/img/photo/photo-1484154218962-a197022b5858.jpg" data-fancybox="gallery" title="Kitchen"><img class="img-fluid" src="${pageContext.request.contextPath }/resources/img/photo/photo-1484154218962-a197022b5858.jpg" alt="..."></a></div>
	             <div class="col-lg-4 col-6 px-1 mb-2"><a href="${pageContext.request.contextPath }/resources/img/photo/photo-1522771739844-6a9f6d5f14af.jpg" data-fancybox="gallery" title="Bedroom"><img class="img-fluid" src="${pageContext.request.contextPath }/resources/img/photo/photo-1522771739844-6a9f6d5f14af.jpg" alt="..."></a></div>
	             <div class="col-lg-4 col-6 px-1 mb-2"><a href="${pageContext.request.contextPath }/resources/img/photo/photo-1488805990569-3c9e1d76d51c.jpg" data-fancybox="gallery" title="Bedroom"><img class="img-fluid" src="${pageContext.request.contextPath }/resources/img/photo/photo-1488805990569-3c9e1d76d51c.jpg" alt="..."></a></div>
	           </div>
	         </div>
         </div>
         <!-- 11. 이용후기 -->
         <div class="tab-content py-5 px-3">
	         <div class="text-block" id="review">
		         <p class="subtitle text-sm text-primary">Reviews</p>
				<h5 class="mb-4">서비스 후기</h5>
		       		<c:import url="/reviewList?expertNo=${expVo.expertNo }"/>
	         </div>
         </div>
        </div> 
        <div class="col-lg-4">
          <div class="p-4 shadow ms-lg-4 rounded sticky-top" style="top: 100px;">
          	<h5 class="mb-3 col-md-8">프로필 완성도 </h5>
            <p class="text-muted">프로필의 완성도를 높히면 전문가님을 선택할 확률이 높아집니다 </p>
            <form class="form" id="booking-form" method="get" action="#" autocomplete="off">
             <div class="mb-4">
             <!-- 프로세스바 넣기 -->
              </div>
              <hr class="my-4">
	            <p class="text-muted text-sm text-center">단골손님에세 링크를 보내 리뷰를 모으세요! 파밍고객님이 아니여도 후기를 남길 수 있습니다.</p>
              <div class="d-grid mb-4">
                <button class="btn btn-primary btn-lg" type="submit">링크 복사하기</button>
              </div>
            </form>
            <hr class="my-4">
            <div class="text-center">
              <p> <a class="text-warning text-sm" href="#"> <i class="fa fa-heart"></i>좋아요/즐겨찾기</a></p>
              <p class="text-muted text-sm">79 명의 회원님에게 좋아요를 받았습니다.</p>
            </div>
          </div>
        </div>
      </div>
    </div>
   </c:if>
<script>
	
	$(function(){
		textchange=false;
		$('#btEdit1').click(function(){
			if(textchange){
				textchange=false;
				$(this).text('수정');
			}else{
				textchange=true;
				$(this).text('저장');
				$(this).click(function(){
					$.ajax({
						url:'<c:url value="/findexp/editExpInfo"/>',
						type:"GET",
						data:{
							intro : $('input[name=intro]').val(),
							expertNo : $('input[name=expertNo]').val()
						},success: function(res){
							$('#introBox1').text(res.intro);
						}
					});
				})
			}
			$(this).next('input').toggle();
			$(this).siblings('p').toggle();
		});
		
		$('#btEdit2').click(function(){
			if(textchange){
				textchange=false;
				$(this).text('수정');
			}else{
				textchange=true;
				$(this).text('저장');
				$(this).click(function(){
					$.ajax({
						url:'<c:url value="/findexp/editExpInfo"/>',
						type:"GET",
						data:{
							detailInfo : $('input[name=detailInfo]').val(),
							expertNo : $('input[name=expertNo]').val()
						},success: function(res){
							$('#infoBox2').text(res.detailInfo);
						}
					});
				})
			}
			$(this).next('input').toggle();
			$(this).siblings('p').toggle();
		});
		$('#btEdit3').click(function(){
			if(textchange){
				textchange=false;
				$(this).text('수정');
			}else{
				textchange=true;
				$(this).text('저장');
				$(this).click(function(){
					$.ajax({
						url:'<c:url value="/findexp/editExpInfo"/>',
						type:"GET",
						data:{
							contactTime : $('#demo-custom-intervals-1').val()+"  -  "+$('#demo-custom-formats-1').val(),
							expertNo : $('input[name=expertNo]').val()
						},success: function(res){
							$('#infoBox3').text(res.contactTime);
						}
					});
				})
			}
			$(this).next('div').toggle();
			$(this).siblings('p').toggle();
		});
		
		
		
		$('#btEdit4').click(function(){
			if(textchange){
				textchange=false;
				$(this).text('수정');
			}else{
				textchange=true;
				$(this).text('저장');
				$(this).click(function(){
					var list = [];
					$('input[name=payMethod]:checked').each(function(i){  
						list.push(" "+$(this).val());
					}); 
					
					$.ajax({
						url:'<c:url value="/findexp/editExpInfo"/>',
						type:"POST",
						data:{
							payMethod : list,
							expertNo : $('input[name=expertNo]').val()
						},success: function(res){
							$('#infoBox4').text(res.payMethod);
						}
					});
				})
			}
			$(this).next('div').toggle();
			$(this).siblings('p').toggle();
		});
		
		$('#btEdit5').click(function(){
			if(textchange){
				textchange=false;
				$(this).text('수정');
			}else{
				textchange=true;
				$(this).text('저장');
				$(this).click(function(){
					$.ajax({
						url:'<c:url value="/findexp/editExpInfo"/>',
						type:"GET",
						data:{
							career : $('select[name=career] option:selected').val(),
							expertNo : $('input[name=expertNo]').val()
						},success: function(res){
							$('#infoBox5').text(res.career);
						}
					});
				})
			}
			$(this).next('.select_box').toggle();
			$(this).siblings('p').toggle();
		});
		$('#btEdit6').click(function(){
			if(textchange){
				textchange=false;
				$(this).text('수정');
			}else{
				textchange=true;
				$(this).text('저장');
				$(this).click(function(){
					$.ajax({
						url:'<c:url value="/findexp/editExpInfo"/>',
						type:"GET",
						data:{
							staff : $('select[name=staff] option:selected').val(),
							expertNo : $('input[name=expertNo]').val()
						},success: function(res){
							$('#infoBox6').text(res.staff);
						}
					});
				})
			}
			$(this).next('.select_box').toggle();
			$(this).siblings('p').toggle();
		});
		$('#btEdit7').click(function(){
			if(textchange){
				textchange=false;
				$(this).text('수정');
			}else{
				textchange=true;
				$(this).text('저장');
				$(this).click(function(){
					$.ajax({
						url:'<c:url value="/findexp/editExpInfo"/>',
						type:"GET",
						data:{
							businessLicense : $('input[name=businessLicense]').val(),
							expertNo : $('input[name=expertNo]').val()
						},success: function(res){
							$('#infoBox7').text(res.businessLicense);
						}
					});
				})
			}
			$(this).siblings('div.imgBox').toggle();
			//$(this).siblings('p').toggle();
		});
		$('#btEdit8').click(function(){
			if(textchange){
				textchange=false;
				$(this).text('수정');
			}else{
				textchange=true;
				$(this).text('저장');
				$(this).click(function(){
					$.ajax({
						url:'<c:url value="/findexp/editExpInfo"/>',
						type:"GET",
						data:{
							license : $('input[name=license]').val(),
							expertNo : $('input[name=expertNo]').val()
						},success: function(res){
							$('#infoBox8').text(res.license);
						}
					});
				})
			}
			$(this).siblings('div.imgBox').toggle();
			//$(this).siblings('p').toggle();
		});
		
		$('#btEdit9').click(function(){
			if(textchange){
				textchange=false;
				$(this).text('수정');
			}else{
				textchange=true;
				$(this).text('저장');
				$(this).click(function(){
					$.ajax({
						url:'<c:url value="/findexp/editExpInfo"/>',
						type:"GET",
						data:{
							taxInvoice : $('input[name=taxInvoice]:checked').val(),
							expertNo : $('input[name=expertNo]').val()
						},success: function(res){
							if(res.taxInvoice=='Y'){
								$('#infoBox9').text('네, 가능합니다');
							}else{
								$('#infoBox9').text('아니요, 불가합니다');
							}
						}
					});
				})
			}
			$(this).next('.radio_box').toggle();
			$(this).siblings('p').toggle();
		});
		
		$('#time').timepicker();
	});
</script>
<script src='https://code.jquery.com/jquery-3.6.0.slim.min.js' integrity='sha256-u7e5khyithlIdTpu22PHhENmPcRdFiHRjhAuHcs05RI=' crossorigin='anonymous'></script>
<script src="${pageContext.request.contextPath }/resources/js/qcTimepicker.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/timepicker.js"></script>  
<%@ include file="../inc/bottom.jsp" %>