<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="../inc/top.jsp" %>
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
    
    <div class="container py-5">
      <div class="row">
        <div class="col-lg-8"> 
        <ul class="nav nav-tabs" id="myTab" role="tablist">
            <li class="nav-item"><a class="nav-link active" id="tab1" data-bs-toggle="tab" href="#tab1-content" role="tab" aria-controls="tab1-content" aria-selected="true">전문가 정보</a></li>
            <li class="nav-item"><a class="nav-link" id="tab2" href="#review" role="tab" aria-controls="tab2-content">서비스 후기</a></li>
            <li class="nav-item"><a class="nav-link" id="tab3" data-bs-toggle="tab" href="#tab3-content" role="tab" aria-controls="tab3-content" aria-selected="false">질문 답변</a></li>
          </ul>
          <div class="tab-content py-5 px-3">
          <div class="text-block">
          	<input type="hidden" name="expertNo" value="${expNo }">
            <h1 class="mb-4">${expVo.name }</h1>
            <h6 class="mb-3">한줄 소개</h6>
            <p id="introBox" class="text-muted fw-light">${infoVo.intro}</p>
            
          </div>
          <div class="text-block">
            <h4 class="mb-4">기본정보</h4>
            <div class="row"> 
              <div class="col-md-6">
                <ul class="list-unstyled text-muted">
                  <li class="mb-2"> 
	                  <i class="fas fa-user text-primary w-0rem me-3 text-center"></i>
	                  <span class="text-sm">본인인증</span>
                  </li>
                  <li class="mb-2"> 
	                  <i class="far fa-star text-primary w-0rem me-3 text-center"></i>
	                  <span class="text-sm">좋아요</span>
                  </li>
                  <li class="mb-2"> 
	                  <i class="fas fa-map-marker-alt text-primary w-0rem me-3 text-center"></i>
	                  <span class="text-sm">${fn:substring(expVo.address1,0,6)}</span>
                  </li>
                  <li class="mb-2"> 
                  	<c:if test="${infoVo.contactTime!='N'}">
	                  <i class="far fa-clock text-primary w-0rem me-3 text-center"></i>
	                  <span class="text-sm">연락 가능 시간 : ${infoVo.contactTime }</span>
	                 </c:if>
                  </li>
                  <li class="mb-2"> 
                  	<c:if test="${infoVo.payMethod!='N'}">
	                  <i class="far fa-credit-card text-primary w-0rem me-3 text-center"></i>
	                  <span class="text-sm">${infoVo.payMethod}</span>
	                </c:if>
                  </li>
                </ul>
              </div>
              <div class="col-md-6">
                <ul class="list-unstyled text-muted">
                  <li class="mb-2"> 
	                  <i class="fas fa-briefcase text-primary w-0rem me-3 text-center"></i>
	                  <span class="text-sm">${infoVo.career }</span>
                  </li>
                  <li class="mb-2"> 
	                  <i class="fas fa-user-friends text-primary w-0rem me-3 text-center"></i>
	                  <span class="text-sm">${infoVo.staff }</span>
                  </li>
                  <li class="mb-2"> 
                  	<c:if test="${infoVo.businessLicense!='N'}">
	                  <i class="far fa-building text-primary w-0rem me-3 text-center"></i>
	                  <span class="text-sm">${infoVo.businessLicense }</span>
	                 </c:if>
                  </li>
                  <li class="mb-2"> 
	                  <c:if test="${!empty infoVo.license}">
	                  	<i class="far fa-id-badge text-primary w-0rem me-3 text-center"></i>
		                <span class="text-sm">자격증 등록완료</span>
	                  </c:if>
                  </li>
                  <li class="mb-2"> 
	                  <i class="fas fa-file-invoice-dollar text-primary w-0rem me-3 text-center"></i>
	                  <c:if test="${infoVo.taxInvoice=='N' }">
	                  	<span class="text-sm">세금계산서 발행 불가</span>
	                  </c:if>
	                  <c:if test="${infoVo.taxInvoice=='Y' }">
	                  	<span class="text-sm">세금계산서 발행 가능</span>
	                  </c:if>
                  </li>
                </ul>
              </div>
            </div>
          </div>
          <div class="text-block">
            <h4 class="mb-4">제공 서비스</h4>
            <ul class="list-inline">
            	<c:forEach var="map" items="${fieldList }">
	              <li class="list-inline-item mb-2"><span class="badge rounded-pill bg-light p-3 text-muted fw-normal">${map['DETAIL'] }</span></li>
            	</c:forEach>
            </ul>
          </div>
          <div class="text-block">
            <h4 class="mb-4">서비스 상세 설명</h4>
            <p class="text-muted fw-light">${infoVo.detailInfo}</p>
          </div>
          <div class="text-block">
            <h5 class="mb-4">Listing location</h5>
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
	          <div class="text-block" id="review">
	          	<!-- include 해야함 -->
	            <p class="subtitle text-sm text-primary">Reviews    </p>
	            <h5 class="mb-4">서비스 후기</h5>
	            <div class="d-flex d-block d-sm-flex review">
	              <div class="text-md-center flex-shrink-0 me-4 me-xl-5"><img class="d-block avatar avatar-xl p-2 mb-2" src="${pageContext.request.contextPath }/resources/img/avatar/avatar-8.jpg" alt="Padmé Amidala"><span class="text-uppercase text-muted text-sm">Dec 2018</span></div>
	              <div>
	                <h6 class="mt-2 mb-1">Padmé Amidala</h6>
	                <div class="mb-2"><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i><i class="fa fa-xs fa-star text-primary"></i>
	                </div>
	                <p class="text-muted text-sm">One morning, when Gregor Samsa woke from troubled dreams, he found himself transformed in his bed into a horrible vermin. He lay on his armour-like back, and if he lifted his head a little he could see his brown belly, slightly domed and divided by arches into stiff sections     </p>
	              </div>
            </div>
            
            <div class="py-5">
              <button class="btn btn-outline-primary" type="button" data-bs-toggle="collapse" data-bs-target="#leaveReview" aria-expanded="false" aria-controls="leaveReview">Leave a review</button>
              <div class="collapse mt-4" id="leaveReview">
                <h5 class="mb-4">서비스 후기 남기기</h5>
                <form class="form" id="contact-form" method="get" action="#">
                  <div class="row">
                    <div class="col-sm-6">
                      <div class="mb-4">
                        <label class="form-label" for="name">이름 *</label>
                        <input class="form-control" type="text" name="name" id="name" placeholder="Enter your name" required="required">
                      </div>
                    </div>
                    <div class="col-sm-6">
                      <div class="mb-4">
                        <label class="form-label" for="rating">후기 점수 *</label>
                        <select class="form-select focus-shadow-0" name="rating" id="rating">
                          <option value="5">&#9733;&#9733;&#9733;&#9733;&#9733; (5/5)</option>
                          <option value="4">&#9733;&#9733;&#9733;&#9733;&#9734; (4/5)</option>
                          <option value="3">&#9733;&#9733;&#9733;&#9734;&#9734; (3/5)</option>
                          <option value="2">&#9733;&#9733;&#9734;&#9734;&#9734; (2/5)</option>
                          <option value="1">&#9733;&#9734;&#9734;&#9734;&#9734; (1/5)</option>
                        </select>
                      </div>
                    </div>
                  </div>
                  <div class="mb-4">
                    <label class="form-label" for="email">이메일 *</label>
                    <input class="form-control" type="email" name="email" id="email" placeholder="Enter your  email" required="required">
                  </div>
                  <div class="mb-4">
                    <label class="form-label" for="review">후기 내용 *</label>
                    <textarea class="form-control" rows="4" name="review" id="review" placeholder="Enter your review" required="required"></textarea>
                  </div>
                  <button class="btn btn-primary" type="submit">리뷰 작성</button>
                </form>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-4">
          <div class="p-4 shadow ms-lg-4 rounded sticky-top" style="top: 100px;">
            <p class="text-muted">${expVo.name } 전문가에게 원하는 서비스의 견적을 받아보세요 </p>
            <form class="form" id="booking-form" method="get" action="#" autocomplete="off">
             <div class="mb-4">
              </div>
              <!-- <div class="mb-4">
                <label class="form-label" for="guests">Guests *</label>
                <select class="form-control" name="guests" id="guests">
                  <option value="1">1 Guest</option>
                  <option value="2">2 Guests</option>
                  <option value="3">3 Guests</option>
                  <option value="4">4 Guests</option>
                  <option value="5">5 Guests</option>
                </select> 
              </div> -->
              <div class="d-grid mb-4">
                <button class="btn btn-primary btn-lg" type="submit">견적요청하기</button>
              </div>
	            <p class="text-muted text-sm text-center">견적요청서는 1분만에 간단하게 작성가능합니다.</p>
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
    <div class="py-6 bg-gray-100"> 
      <div class="container">
        <h5 class="mb-0">비슷한 전문가</h5>
        <p class="subtitle text-sm text-primary mb-4">Find another expert       </p>
        <!-- Slider main container-->
        <div class="swiper-container swiper-container-mx-negative swiper-init pt-3" data-swiper="{&quot;slidesPerView&quot;:4,&quot;spaceBetween&quot;:20,&quot;loop&quot;:true,&quot;roundLengths&quot;:true,&quot;breakpoints&quot;:{&quot;1200&quot;:{&quot;slidesPerView&quot;:3},&quot;991&quot;:{&quot;slidesPerView&quot;:2},&quot;565&quot;:{&quot;slidesPerView&quot;:1}},&quot;pagination&quot;:{&quot;el&quot;:&quot;.swiper-pagination&quot;,&quot;clickable&quot;:true,&quot;dynamicBullets&quot;:true}}">
          <!-- Additional required wrapper-->
          <div class="swiper-wrapper pb-5">
          
            <!-- 얘한덩어리가 슬라이드 하나 -->
            <div class="swiper-slide h-auto px-2">
              <!-- place item-->
              <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
                <div class="card h-100 border-0 shadow">
                  <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid" src="${pageContext.request.contextPath }/resources/img/photo/photo-1484154218962-a197022b5858.jpg" alt="Modern, Well-Appointed Room"/><a class="tile-link" href="detail-rooms.html"></a>
                    <div class="card-img-overlay-bottom z-index-20">
                      <div class="d-flex text-white text-sm align-items-center"><img class="avatar avatar-border-white flex-shrink-0 me-2" src="${pageContext.request.contextPath }/resources/img/avatar/avatar-0.jpg" alt="Pamela"/>
                        <div>Pamela</div>
                      </div>
                    </div>
                    <div class="card-img-overlay-top text-end"><a class="card-fav-icon position-relative z-index-40" href="javascript: void();"> 
                        <svg class="svg-icon text-white">
                          <use xlink:href="#heart-1"> </use>
                        </svg></a></div>
                  </div>
                  <div class="card-body d-flex align-items-center">
                    <div class="w-100">
                      <h6 class="card-title"><a class="text-decoration-none text-dark" href="detail-rooms.html">Modern, Well-Appointed Room</a></h6>
                      <div class="d-flex card-subtitle mb-3">
                        <p class="flex-grow-1 mb-0 text-muted text-sm">Private room</p>
                        <p class="flex-shrink-1 mb-0 card-stars text-xs text-end"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i>
                        </p>
                      </div>
                      <p class="card-text text-muted"><span class="h4 text-primary">$80</span> per night</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!--  -->
            
            
            
           
          </div>
          <!-- If we need pagination-->
          <div class="swiper-pagination"></div>
        </div>
      </div>
    </div>
    
<%@ include file="../inc/bottom.jsp" %>