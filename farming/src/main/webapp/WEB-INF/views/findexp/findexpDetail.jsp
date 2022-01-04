<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
          <div class="text-block">
            <h1>서비스이름</h1>
            <p class="text-muted text-uppercase mb-4">Entire Apartment </p>
            <h6 class="mb-3">소개</h6>
            <p class="text-muted fw-light">소개</p>
          </div>
          <div class="text-block">
            <h4 class="mb-4">기본정보</h4>
            <div class="row"> 
              <div class="col-md-6">
                <ul class="list-unstyled text-muted">
                  <li class="mb-2"> <i class="fa fa-wifi text-secondary w-1rem me-3 text-center"></i><span class="text-sm">Wifi</span></li>
                  <li class="mb-2"> <i class="fa fa-tv text-secondary w-1rem me-3 text-center"></i><span class="text-sm">Cable TV</span></li>
                  <li class="mb-2"> <i class="fa fa-snowflake text-secondary w-1rem me-3 text-center"></i><span class="text-sm">Air conditioning</span></li>
                  <li class="mb-2"> <i class="fa fa-thermometer-three-quarters text-secondary w-1rem me-3 text-center"></i><span class="text-sm">Heating</span></li>
                </ul>
              </div>
              <div class="col-md-6">
                <ul class="list-unstyled text-muted">
                  <li class="mb-2"> <i class="fa fa-bath text-secondary w-1rem me-3 text-center"></i><span class="text-sm">Toiletteries</span></li>
                  <li class="mb-2"> <i class="fa fa-utensils text-secondary w-1rem me-3 text-center"></i><span class="text-sm">Equipped Kitchen</span></li>
                  <li class="mb-2"> <i class="fa fa-laptop text-secondary w-1rem me-3 text-center"></i><span class="text-sm">Desk for work</span></li>
                  <li class="mb-2"> <i class="fa fa-tshirt text-secondary w-1rem me-3 text-center"></i><span class="text-sm">Washing machine</span></li>
                </ul>
              </div>
            </div>
          </div>
          <div class="text-block">
            <h4 class="mb-0">제공 서비스</h4>
            <p class="subtitle text-sm text-primary mb-4">Alternative amenities display</p>
            <ul class="list-inline">
              <li class="list-inline-item mb-2"><span class="badge rounded-pill bg-light p-3 text-muted fw-normal">Wifi</span></li>
              <li class="list-inline-item mb-2"><span class="badge rounded-pill bg-light p-3 text-muted fw-normal">Cable TV</span></li>
              <li class="list-inline-item mb-2"><span class="badge rounded-pill bg-light p-3 text-muted fw-normal">Air conditioning</span></li>
              <li class="list-inline-item mb-2"><span class="badge rounded-pill bg-light p-3 text-muted fw-normal">Heating</span></li>
              <li class="list-inline-item mb-2"><span class="badge rounded-pill bg-light p-3 text-muted fw-normal">Toiletteries</span></li>
              <li class="list-inline-item mb-2"><span class="badge rounded-pill bg-light p-3 text-muted fw-normal">Equipped Kitchen</span></li>
              <li class="list-inline-item mb-2"><span class="badge rounded-pill bg-light p-3 text-muted fw-normal">Desk for work</span></li>
              <li class="list-inline-item mb-2"><span class="badge rounded-pill bg-light p-3 text-muted fw-normal">Washing machine</span></li>
            </ul>
          </div>
          <div class="text-block">
            <h5 class="mb-4">Listing location</h5>
            <div class="map-wrapper-300 mb-3">
              카카오지도
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
          <div class="text-block">
            <p class="subtitle text-sm text-primary">리뷰    </p>
            <h5 class="mb-4">Listing Reviews </h5>
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
                <h5 class="mb-4">Leave a review</h5>
                <form class="form" id="contact-form" method="get" action="#">
                  <div class="row">
                    <div class="col-sm-6">
                      <div class="mb-4">
                        <label class="form-label" for="name">Your name *</label>
                        <input class="form-control" type="text" name="name" id="name" placeholder="Enter your name" required="required">
                      </div>
                    </div>
                    <div class="col-sm-6">
                      <div class="mb-4">
                        <label class="form-label" for="rating">Your rating *</label>
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
                    <label class="form-label" for="email">Your email *</label>
                    <input class="form-control" type="email" name="email" id="email" placeholder="Enter your  email" required="required">
                  </div>
                  <div class="mb-4">
                    <label class="form-label" for="review">Review text *</label>
                    <textarea class="form-control" rows="4" name="review" id="review" placeholder="Enter your review" required="required"></textarea>
                  </div>
                  <button class="btn btn-primary" type="submit">Post review</button>
                </form>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-4">
          <div class="p-4 shadow ms-lg-4 rounded sticky-top" style="top: 100px;">
            <p class="text-muted"><span class="text-primary h2">$120</span> per night</p>
            <hr class="my-4">
            <form class="form" id="booking-form" method="get" action="#" autocomplete="off">
              <div class="mb-4">
                <label class="form-label" for="bookingDate">Your stay *</label>
                <div class="datepicker-container datepicker-container-right">
                  <input class="form-control" type="text" name="bookingDate" id="bookingDate" placeholder="Choose your dates" required="required">
                </div>
              </div>
              <div class="mb-4">
                <label class="form-label" for="guests">Guests *</label>
                <select class="form-control" name="guests" id="guests">
                  <option value="1">1 Guest</option>
                  <option value="2">2 Guests</option>
                  <option value="3">3 Guests</option>
                  <option value="4">4 Guests</option>
                  <option value="5">5 Guests</option>
                </select>
              </div>
              <div class="d-grid mb-4">
                <button class="btn btn-primary" type="submit">Book your stay</button>
              </div>
            </form>
            <p class="text-muted text-sm text-center">Some additional text can be also placed here.</p>
            <hr class="my-4">
            <div class="text-center">
              <p> <a class="text-secondary text-sm" href="#"> <i class="fa fa-heart"></i> Bookmark This Listing</a></p>
              <p class="text-muted text-sm">79 people bookmarked this place </p>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="py-6 bg-gray-100"> 
      <div class="container">
        <h5 class="mb-0">비슷한 전문가</h5>
        <p class="subtitle text-sm text-primary mb-4">You may also like         </p>
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