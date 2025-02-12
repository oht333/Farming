<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="inc/top.jsp"%>
    <section class="hero-home">
      <div class="swiper-container hero-slider">
        <div class="swiper-wrapper dark-overlay">
          <div class="swiper-slide" style="background-image:url(${pageContext.request.contextPath }/resources/img/photo/photo-1501621965065-c6e1cf6b53e2.jpg)"></div>
          <div class="swiper-slide" style="background-image:url(${pageContext.request.contextPath }/resources/img/photo/photo-1519974719765-e6559eac2575.jpg)"></div>
          <div class="swiper-slide" style="background-image:url(${pageContext.request.contextPath }/resources/img/photo/photo-1490578474895-699cd4e2cf59.jpg)"></div>
          <div class="swiper-slide" style="background-image:url(${pageContext.request.contextPath }/resources/img/photo/photo-1534850336045-c6c6d287f89e.jpg)"></div>
        </div>
      </div>
      <div class="container py-6 py-md-7 text-white z-index-20">
        <div class="row">
          <div class="col-xl-10">
            <div class="text-center text-lg-start">
              <p class="subtitle letter-spacing-4 mb-2 text-primary text-shadow">The best skill-up experience</p>
              <h1 class="display-3 fw-bold text-shadow">Let's farming!</h1>
            </div>
            <div class="search-bar mt-5 p-3 p-lg-1 ps-lg-4">
              <form action="#">
                <div class="row">
                  <div class="col-lg-4 d-flex align-items-center form-group">
                    <input class="form-control border-0 shadow-0" type="text" name="search" placeholder="What are you searching for?">
                  </div>
                  <div class="col-lg-3 d-flex align-items-center form-group">
                    <div class="input-label-absolute input-label-absolute-right w-100">
                      <label class="label-absolute" for="location"><i class="fa fa-crosshairs"></i><span class="sr-only">City</span></label>
                      <input class="form-control border-0 shadow-0" type="text" name="location" placeholder="Location" id="location">
                    </div>
                  </div>
                  <div class="col-lg-3 d-flex align-items-center form-group no-divider">
                    <select class="selectpicker" title="Categories" data-style="btn-form-control">
                      <option value="small">Restaurants</option>
                      <option value="medium">Hotels</option>
                      <option value="large">Cafes</option>
                      <option value="x-large">Garages</option>
                    </select>
                  </div>
                  <div class="col-lg-2 d-grid">
                    <button class="btn btn-primary rounded-pill h-100" type="submit">Search </button>
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="py-6 bg-gray-100">
      <div class="container">
        <div class="text-center pb-lg-4">
          <p class="subtitle text-secondary">One-of-a-kind vacation rentals</p>
          <h2 class="mb-5">Booking with us is easy</h2>
        </div>
        <div class="row">
          <div class="col-lg-4 mb-3 mb-lg-0 text-center">
            <div class="px-0 px-lg-3">
              <div class="icon-rounded bg-primary-light mb-3">
                <svg class="svg-icon text-primary w-2rem h-2rem">
                  <use xlink:href="#destination-map-1"> </use>
                </svg>
              </div>
              <h3 class="h5">Find the perfect rental</h3>
              <p class="text-muted">One morning, when Gregor Samsa woke from troubled dreams, he found himself transformed in his bed in</p>
            </div>
          </div>
          <div class="col-lg-4 mb-3 mb-lg-0 text-center">
            <div class="px-0 px-lg-3">
              <div class="icon-rounded bg-primary-light mb-3">
                <svg class="svg-icon text-primary w-2rem h-2rem">
                  <use xlink:href="#pay-by-card-1"> </use>
                </svg>
              </div>
              <h3 class="h5">Book with confidence</h3>
              <p class="text-muted">The bedding was hardly able to cover it and seemed ready to slide off any moment. His many legs, pit</p>
            </div>
          </div>
          <div class="col-lg-4 mb-3 mb-lg-0 text-center">
            <div class="px-0 px-lg-3">
              <div class="icon-rounded bg-primary-light mb-3">
                <svg class="svg-icon text-primary w-2rem h-2rem">
                  <use xlink:href="#heart-1"> </use>
                </svg>
              </div>
              <h3 class="h5">Enjoy your vacation</h3>
              <p class="text-muted">His room, a proper human room although a little too small, lay peacefully between its four familiar </p>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="py-6">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md-8">
            <p class="subtitle text-primary">Stay and eat like a local</p>
            <h2>Our guides</h2>
          </div>
          <div class="col-md-4 d-lg-flex align-items-center justify-content-end"><a class="text-muted text-sm" href="category.html">
               See all guides<i class="fas fa-angle-double-right ms-2"></i></a></div>
        </div>
        <div class="swiper-container guides-slider mx-n2 pt-3">
          <!-- Additional required wrapper-->
          <div class="swiper-wrapper pb-5">
            <!-- Slides-->
            <div class="swiper-slide h-auto px-2">
              <div class="card card-poster gradient-overlay hover-animate mb-4 mb-lg-0"><a class="tile-link" 
              	href="<c:url value='/request/request?categoryNo=23'/>"></a><img class="bg-image" src="${pageContext.request.contextPath }/resources/img/photo/new-york.jpg" alt="Card image">
                <div class="card-body overlay-content">
                  <h6 class="card-title text-shadow text-uppercase">웹 디자인</h6>
                  <p class="card-text text-sm">Web Design</p>
                </div>
              </div>
            </div>
            <div class="swiper-slide h-auto px-2">
              <div class="card card-poster gradient-overlay hover-animate mb-4 mb-lg-0"><a class="tile-link" href="<c:url value='/request/request?categoryNo=4'/>"></a><img class="bg-image" src="${pageContext.request.contextPath }/resources/img/photo/paris.jpg" alt="Card image">
                <div class="card-body overlay-content">
                  <h6 class="card-title text-shadow text-uppercase">웹 개발</h6>
                  <p class="card-text text-sm">Web Develop</p>
                </div>
              </div>
            </div>
            <div class="swiper-slide h-auto px-2">
              <div class="card card-poster gradient-overlay hover-animate mb-4 mb-lg-0"><a class="tile-link" href="category.html"></a><img class="bg-image" src="${pageContext.request.contextPath }/resources/img/photo/barcelona.jpg" alt="Card image">
                <div class="card-body overlay-content">
                  <h6 class="card-title text-shadow text-uppercase">Barcelona</h6>
                  <p class="card-text text-sm">Dalí, Gaudí, Barrio Gotico</p>
                </div>
              </div>
            </div>
            <div class="swiper-slide h-auto px-2">
              <div class="card card-poster gradient-overlay hover-animate mb-4 mb-lg-0"><a class="tile-link" href="category.html"></a><img class="bg-image" src="${pageContext.request.contextPath }/resources/img/photo/prague.jpg" alt="Card image">
                <div class="card-body overlay-content">
                  <h6 class="card-title text-shadow text-uppercase">Prague</h6>
                  <p class="card-text text-sm">City of hundred towers</p>
                </div>
              </div>
            </div>
          </div>
          <div class="swiper-pagination d-md-none"> </div>
        </div>
      </div>
    </section>
    <section class="py-6 bg-gray-100"> 
      <div class="container">
        <div class="row mb-5">
          <div class="col-md-8">
            <p class="subtitle text-secondary">Hurry up, these are expiring soon.        </p>
            <h2>Last minute deals</h2>
          </div>
          <div class="col-md-4 d-lg-flex align-items-center justify-content-end"><a class="text-muted text-sm" href="category.html">
               See all deals<i class="fas fa-angle-double-right ms-2"></i></a></div>
        </div>
        <!-- Slider main container-->
        <div class="swiper-container swiper-container-mx-negative swiper-init pt-3" data-swiper="{&quot;slidesPerView&quot;:4,&quot;spaceBetween&quot;:20,&quot;loop&quot;:true,&quot;roundLengths&quot;:true,&quot;breakpoints&quot;:{&quot;1200&quot;:{&quot;slidesPerView&quot;:3},&quot;991&quot;:{&quot;slidesPerView&quot;:2},&quot;565&quot;:{&quot;slidesPerView&quot;:1}},&quot;pagination&quot;:{&quot;el&quot;:&quot;.swiper-pagination&quot;,&quot;clickable&quot;:true,&quot;dynamicBullets&quot;:true}}">
          <!-- Additional required wrapper-->
          <div class="swiper-wrapper pb-5">
            <!-- Slides-->
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
            <div class="swiper-slide h-auto px-2">
              <!-- place item-->
              <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e322f3375db4d89128">
                <div class="card h-100 border-0 shadow">
                  <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid" src="${pageContext.request.contextPath }/resources/img/photo/photo-1426122402199-be02db90eb90.jpg" alt="Cute Quirky Garden apt, NYC adjacent"/><a class="tile-link" href="detail-rooms.html"></a>
                    <div class="card-img-overlay-bottom z-index-20">
                      <div class="d-flex text-white text-sm align-items-center"><img class="avatar avatar-border-white flex-shrink-0 me-2" src="${pageContext.request.contextPath }/resources/img/avatar/avatar-7.jpg" alt="John"/>
                        <div>John</div>
                      </div>
                    </div>
                    <div class="card-img-overlay-top text-end"><a class="card-fav-icon position-relative z-index-40" href="javascript: void();"> 
                        <svg class="svg-icon text-white">
                          <use xlink:href="#heart-1"> </use>
                        </svg></a></div>
                  </div>
                  <div class="card-body d-flex align-items-center">
                    <div class="w-100">
                      <h6 class="card-title"><a class="text-decoration-none text-dark" href="detail-rooms.html">Cute Quirky Garden apt, NYC adjacent</a></h6>
                      <div class="d-flex card-subtitle mb-3">
                        <p class="flex-grow-1 mb-0 text-muted text-sm">Entire apartment</p>
                        <p class="flex-shrink-1 mb-0 card-stars text-xs text-end"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300">                                  </i>
                        </p>
                      </div>
                      <p class="card-text text-muted"><span class="h4 text-primary">$121</span> per night</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="swiper-slide h-auto px-2">
              <!-- place item-->
              <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e3a31e62979bf147c9">
                <div class="card h-100 border-0 shadow">
                  <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid" src="${pageContext.request.contextPath }/resources/img/photo/photo-1512917774080-9991f1c4c750.jpg" alt="Modern Apt - Vibrant Neighborhood!"/><a class="tile-link" href="detail-rooms.html"></a>
                    <div class="card-img-overlay-bottom z-index-20">
                      <div class="d-flex text-white text-sm align-items-center"><img class="avatar avatar-border-white flex-shrink-0 me-2" src="${pageContext.request.contextPath }/resources/img/avatar/avatar-8.jpg" alt="Julie"/>
                        <div>Julie</div>
                      </div>
                    </div>
                    <div class="card-img-overlay-top text-end"><a class="card-fav-icon position-relative z-index-40" href="javascript: void();"> 
                        <svg class="svg-icon text-white">
                          <use xlink:href="#heart-1"> </use>
                        </svg></a></div>
                  </div>
                  <div class="card-body d-flex align-items-center">
                    <div class="w-100">
                      <h6 class="card-title"><a class="text-decoration-none text-dark" href="detail-rooms.html">Modern Apt - Vibrant Neighborhood!</a></h6>
                      <div class="d-flex card-subtitle mb-3">
                        <p class="flex-grow-1 mb-0 text-muted text-sm">Entire apartment</p>
                        <p class="flex-shrink-1 mb-0 card-stars text-xs text-end"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300">                                  </i><i class="fa fa-star text-gray-300">                                  </i>
                        </p>
                      </div>
                      <p class="card-text text-muted"><span class="h4 text-primary">$75</span> per night</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="swiper-slide h-auto px-2">
              <!-- place item-->
              <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e3503eb77d487e8082">
                <div class="card h-100 border-0 shadow">
                  <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid" src="${pageContext.request.contextPath }/resources/img/photo/photo-1494526585095-c41746248156.jpg" alt="Sunny Private Studio-Apartment"/><a class="tile-link" href="detail-rooms.html"></a>
                    <div class="card-img-overlay-bottom z-index-20">
                      <div class="d-flex text-white text-sm align-items-center"><img class="avatar avatar-border-white flex-shrink-0 me-2" src="${pageContext.request.contextPath }/resources/img/avatar/avatar-9.jpg" alt="Barbora"/>
                        <div>Barbora</div>
                      </div>
                    </div>
                    <div class="card-img-overlay-top text-end"><a class="card-fav-icon position-relative z-index-40" href="javascript: void();"> 
                        <svg class="svg-icon text-white">
                          <use xlink:href="#heart-1"> </use>
                        </svg></a></div>
                  </div>
                  <div class="card-body d-flex align-items-center">
                    <div class="w-100">
                      <h6 class="card-title"><a class="text-decoration-none text-dark" href="detail-rooms.html">Sunny Private Studio-Apartment</a></h6>
                      <div class="d-flex card-subtitle mb-3">
                        <p class="flex-grow-1 mb-0 text-muted text-sm">Shared room</p>
                        <p class="flex-shrink-1 mb-0 card-stars text-xs text-end"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300">                                  </i>
                        </p>
                      </div>
                      <p class="card-text text-muted"><span class="h4 text-primary">$93</span> per night</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="swiper-slide h-auto px-2">
              <!-- place item-->
              <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e39aa2eed0626e485d">
                <div class="card h-100 border-0 shadow">
                  <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid" src="${pageContext.request.contextPath }/resources/img/photo/photo-1522771739844-6a9f6d5f14af.jpg" alt="Mid-Century Modern Garden Paradise"/><a class="tile-link" href="detail-rooms.html"></a>
                    <div class="card-img-overlay-bottom z-index-20">
                      <div class="d-flex text-white text-sm align-items-center"><img class="avatar avatar-border-white flex-shrink-0 me-2" src="${pageContext.request.contextPath }/resources/img/avatar/avatar-10.jpg" alt="Jack"/>
                        <div>Jack</div>
                      </div>
                    </div>
                    <div class="card-img-overlay-top text-end"><a class="card-fav-icon position-relative z-index-40" href="javascript: void();"> 
                        <svg class="svg-icon text-white">
                          <use xlink:href="#heart-1"> </use>
                        </svg></a></div>
                  </div>
                  <div class="card-body d-flex align-items-center">
                    <div class="w-100">
                      <h6 class="card-title"><a class="text-decoration-none text-dark" href="detail-rooms.html">Mid-Century Modern Garden Paradise</a></h6>
                      <div class="d-flex card-subtitle mb-3">
                        <p class="flex-grow-1 mb-0 text-muted text-sm">Entire house</p>
                        <p class="flex-shrink-1 mb-0 card-stars text-xs text-end"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i>
                        </p>
                      </div>
                      <p class="card-text text-muted"><span class="h4 text-primary">$115</span> per night</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="swiper-slide h-auto px-2">
              <!-- place item-->
              <div class="w-100 h-100 hover-animate" data-marker-id="59c0c8e39aa2edasd626e485d">
                <div class="card h-100 border-0 shadow">
                  <div class="card-img-top overflow-hidden gradient-overlay"> <img class="img-fluid" src="${pageContext.request.contextPath }/resources/img/photo/photo-1488805990569-3c9e1d76d51c.jpg" alt="Brooklyn Life, Easy to Manhattan"/><a class="tile-link" href="detail-rooms.html"></a>
                    <div class="card-img-overlay-bottom z-index-20">
                      <div class="d-flex text-white text-sm align-items-center"><img class="avatar avatar-border-white flex-shrink-0 me-2" src="${pageContext.request.contextPath }/resources/img/avatar/avatar-11.jpg" alt="Stuart"/>
                        <div>Stuart</div>
                      </div>
                    </div>
                    <div class="card-img-overlay-top text-end"><a class="card-fav-icon position-relative z-index-40" href="javascript: void();"> 
                        <svg class="svg-icon text-white">
                          <use xlink:href="#heart-1"> </use>
                        </svg></a></div>
                  </div>
                  <div class="card-body d-flex align-items-center">
                    <div class="w-100">
                      <h6 class="card-title"><a class="text-decoration-none text-dark" href="detail-rooms.html">Brooklyn Life, Easy to Manhattan</a></h6>
                      <div class="d-flex card-subtitle mb-3">
                        <p class="flex-grow-1 mb-0 text-muted text-sm">Private room</p>
                        <p class="flex-shrink-1 mb-0 card-stars text-xs text-end"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300">                                  </i>
                        </p>
                      </div>
                      <p class="card-text text-muted"><span class="h4 text-primary">$123</span> per night</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- If we need pagination-->
          <div class="swiper-pagination"></div>
        </div>
      </div>
    </section>
    <!-- Divider Section-->
    <section class="py-7 position-relative dark-overlay"><img class="bg-image" src="${pageContext.request.contextPath }/resources/img/photo/photo-1497436072909-60f360e1d4b1.jpg" alt="">
      <div class="container">
        <div class="overlay-content text-white py-lg-5">
          <p class="subtitle text-primary">Finding a hidden expert on a map</p>
          <h5 class="display-5 fw-bold text-shadow mb-5">내가 있는 지역에 숨은 전문가 찾기!</h5>
          <a class="btn btn-light" href="<c:url value='/hiddenExp/findByMap'/>">Get started</a>
        </div>
      </div>
    </section>
    <section class="py-7">
      <div class="container">
        <div class="text-center">
          <p class="subtitle text-primary">Testimonials</p>
          <h2 class="mb-5">Our dear customers said about us</h2>
        </div>
        <!-- Slider main container-->
        <div class="swiper-container testimonials-slider testimonials">
          <!-- Additional required wrapper-->
          <div class="swiper-wrapper pt-2 pb-5">
            <!-- Slides-->
            <div class="swiper-slide p-4">
              <div class="testimonial card rounded-3 shadow border-0">
                <div class="testimonial-avatar"><img class="avatar avatar-lg p-1" src="${pageContext.request.contextPath }/resources/img/avatar/avatar-3.jpg" alt="..."></div>
                <div class="text">
                  <div class="testimonial-quote"><i class="fas fa-quote-right"></i></div>
                  <p class="testimonial-text">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever</p><strong>Jessica Watson</strong>
                </div>
              </div>
            </div>
            <div class="swiper-slide p-4">
              <div class="testimonial card rounded-3 shadow border-0">
                <div class="testimonial-avatar"><img class="avatar avatar-lg p-1" src="${pageContext.request.contextPath }/resources/img/avatar/avatar-3.jpg" alt="..."></div>
                <div class="text">
                  <div class="testimonial-quote"><i class="fas fa-quote-right"></i></div>
                  <p class="testimonial-text">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever</p><strong>Jessica Watson</strong>
                </div>
              </div>
            </div>
            <div class="swiper-slide p-4">
              <div class="testimonial card rounded-3 shadow border-0">
                <div class="testimonial-avatar"><img class="avatar avatar-lg p-1" src="${pageContext.request.contextPath }/resources/img/avatar/avatar-3.jpg" alt="..."></div>
                <div class="text">
                  <div class="testimonial-quote"><i class="fas fa-quote-right"></i></div>
                  <p class="testimonial-text">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever</p><strong>Jessica Watson</strong>
                </div>
              </div>
            </div>
            <div class="swiper-slide p-4">
              <div class="testimonial card rounded-3 shadow border-0">
                <div class="testimonial-avatar"><img class="avatar avatar-lg p-1" src="${pageContext.request.contextPath }/resources/img/avatar/avatar-3.jpg" alt="..."></div>
                <div class="text">
                  <div class="testimonial-quote"><i class="fas fa-quote-right"></i></div>
                  <p class="testimonial-text">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever</p><strong>Jessica Watson</strong>
                </div>
              </div>
            </div>
            <div class="swiper-slide p-4">
              <div class="testimonial card rounded-3 shadow border-0">
                <div class="testimonial-avatar"><img class="avatar avatar-lg p-1" src="${pageContext.request.contextPath }/resources/img/avatar/avatar-3.jpg" alt="..."></div>
                <div class="text">
                  <div class="testimonial-quote"><i class="fas fa-quote-right"></i></div>
                  <p class="testimonial-text">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever</p><strong>Jessica Watson</strong>
                </div>
              </div>
            </div>
            <div class="swiper-slide p-4">
              <div class="testimonial card rounded-3 shadow border-0">
                <div class="testimonial-avatar"><img class="avatar avatar-lg p-1" src="${pageContext.request.contextPath }/resources/img/avatar/avatar-3.jpg" alt="..."></div>
                <div class="text">
                  <div class="testimonial-quote"><i class="fas fa-quote-right"></i></div>
                  <p class="testimonial-text">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever</p><strong>Jessica Watson</strong>
                </div>
              </div>
            </div>
          </div>
          <div class="swiper-pagination">     </div>
        </div>
      </div>
    </section>
    <section class="py-6 bg-gray-100"> 
      <div class="container">
        <div class="row mb-5">
          <div class="col-md-8">
            <p class="subtitle text-secondary">Stories from around the globe</p>
            <h2>From our travel blog</h2>
          </div>
          <div class="col-md-4 d-md-flex align-items-center justify-content-end"><a class="text-muted text-sm" href="blog.html">
               See all articles<i class="fas fa-angle-double-right ms-2"></i></a></div>
        </div>
        <div class="row">
          <!-- blog item-->
          <div class="col-lg-4 col-sm-6 mb-4 hover-animate">
            <div class="card shadow border-0 h-100"><a href="post.html"><img class="img-fluid card-img-top" src="${pageContext.request.contextPath }/resources/img/photo/photo-1512917774080-9991f1c4c750.jpg" alt="..."/></a>
              <div class="card-body"><a class="text-uppercase text-muted text-sm letter-spacing-2" href="#">Travel </a>
                <h5 class="my-2"><a class="text-dark" href="post.html">Autumn fashion tips and tricks          </a></h5>
                <p class="text-gray-500 text-sm my-3"><i class="far fa-clock me-2"></i>January 16, 2016</p>
                <p class="my-2 text-muted text-sm">Pellentesque habitant morbi tristique senectus. Vestibulum tortor quam, feugiat vitae, ultricies ege...</p><a class="btn btn-link ps-0" href="post.html">Read more<i class="fa fa-long-arrow-alt-right ms-2"></i></a>
              </div>
            </div>
          </div>
          <!-- blog item-->
          <div class="col-lg-4 col-sm-6 mb-4 hover-animate">
            <div class="card shadow border-0 h-100"><a href="post.html"><img class="img-fluid card-img-top" src="${pageContext.request.contextPath }/resources/img/photo/photo-1522771739844-6a9f6d5f14af.jpg" alt="..."/></a>
              <div class="card-body"><a class="text-uppercase text-muted text-sm letter-spacing-2" href="#">Living </a>
                <h5 class="my-2"><a class="text-dark" href="post.html">Newest photo apps          </a></h5>
                <p class="text-gray-500 text-sm my-3"><i class="far fa-clock me-2"></i>January 16, 2016</p>
                <p class="my-2 text-muted text-sm">ellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibu...</p><a class="btn btn-link ps-0" href="post.html">Read more<i class="fa fa-long-arrow-alt-right ms-2"></i></a>
              </div>
            </div>
          </div>
          <!-- blog item-->
          <div class="col-lg-4 col-sm-6 mb-4 hover-animate">
            <div class="card shadow border-0 h-100"><a href="post.html"><img class="img-fluid card-img-top" src="${pageContext.request.contextPath }/resources/img/photo/photo-1482463084673-98272196658a.jpg" alt="..."/></a>
              <div class="card-body"><a class="text-uppercase text-muted text-sm letter-spacing-2" href="#">Travel </a>
                <h5 class="my-2"><a class="text-dark" href="post.html">Best books about Photography          </a></h5>
                <p class="text-gray-500 text-sm my-3"><i class="far fa-clock me-2"></i>January 16, 2016</p>
                <p class="my-2 text-muted text-sm">Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante.  Mauris placerat eleif...</p><a class="btn btn-link ps-0" href="post.html">Read more<i class="fa fa-long-arrow-alt-right ms-2"></i></a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- Instagram-->
    <section>
      <div class="container-fluid px-0">
        <div class="swiper-container instagram-slider">
          <div class="swiper-wrapper">
            <div class="swiper-slide overflow-hidden"><a href="#"><img class="img-fluid hover-scale" src="${pageContext.request.contextPath }/resources/img/instagram/instagram-1.jpg" alt=" "></a></div>
            <div class="swiper-slide overflow-hidden"><a href="#"><img class="img-fluid hover-scale" src="${pageContext.request.contextPath }/resources/img/instagram/instagram-2.jpg" alt=" "></a></div>
            <div class="swiper-slide overflow-hidden"><a href="#"><img class="img-fluid hover-scale" src="${pageContext.request.contextPath }/resources/img/instagram/instagram-3.jpg" alt=" "></a></div>
            <div class="swiper-slide overflow-hidden"><a href="#"><img class="img-fluid hover-scale" src="${pageContext.request.contextPath }/resources/img/instagram/instagram-4.jpg" alt=" "></a></div>
            <div class="swiper-slide overflow-hidden"><a href="#"><img class="img-fluid hover-scale" src="${pageContext.request.contextPath }/resources/img/instagram/instagram-5.jpg" alt=" "></a></div>
            <div class="swiper-slide overflow-hidden"><a href="#"><img class="img-fluid hover-scale" src="${pageContext.request.contextPath }/resources/img/instagram/instagram-6.jpg" alt=" "></a></div>
            <div class="swiper-slide overflow-hidden"><a href="#"><img class="img-fluid hover-scale" src="${pageContext.request.contextPath }/resources/img/instagram/instagram-7.jpg" alt=" "></a></div>
            <div class="swiper-slide overflow-hidden"><a href="#"><img class="img-fluid hover-scale" src="${pageContext.request.contextPath }/resources/img/instagram/instagram-8.jpg" alt=" "></a></div>
            <div class="swiper-slide overflow-hidden"><a href="#"><img class="img-fluid hover-scale" src="${pageContext.request.contextPath }/resources/img/instagram/instagram-9.jpg" alt=" "></a></div>
            <div class="swiper-slide overflow-hidden"><a href="#"><img class="img-fluid hover-scale" src="${pageContext.request.contextPath }/resources/img/instagram/instagram-10.jpg" alt=" "></a></div>
            <div class="swiper-slide overflow-hidden"><a href="#"><img class="img-fluid hover-scale" src="${pageContext.request.contextPath }/resources/img/instagram/instagram-11.jpg" alt=" "></a></div>
            <div class="swiper-slide overflow-hidden"><a href="#"><img class="img-fluid hover-scale" src="${pageContext.request.contextPath }/resources/img/instagram/instagram-12.jpg" alt=" "></a></div>
            <div class="swiper-slide overflow-hidden"><a href="#"><img class="img-fluid hover-scale" src="${pageContext.request.contextPath }/resources/img/instagram/instagram-13.jpg" alt=" "></a></div>
            <div class="swiper-slide overflow-hidden"><a href="#"><img class="img-fluid hover-scale" src="${pageContext.request.contextPath }/resources/img/instagram/instagram-14.jpg" alt=" "></a></div>
            <div class="swiper-slide overflow-hidden"><a href="#"><img class="img-fluid hover-scale" src="${pageContext.request.contextPath }/resources/img/instagram/instagram-10.jpg" alt=" "></a></div>
            <div class="swiper-slide overflow-hidden"><a href="#"><img class="img-fluid hover-scale" src="${pageContext.request.contextPath }/resources/img/instagram/instagram-11.jpg" alt=" "></a></div>
            <div class="swiper-slide overflow-hidden"><a href="#"><img class="img-fluid hover-scale" src="${pageContext.request.contextPath }/resources/img/instagram/instagram-12.jpg" alt=" "></a></div>
            <div class="swiper-slide overflow-hidden"><a href="#"><img class="img-fluid hover-scale" src="${pageContext.request.contextPath }/resources/img/instagram/instagram-13.jpg" alt=" "></a></div>
            <div class="swiper-slide overflow-hidden"><a href="#"><img class="img-fluid hover-scale" src="${pageContext.request.contextPath }/resources/img/instagram/instagram-14.jpg" alt=" "></a></div>
          </div>
        </div>
      </div>
    </section>
<%@ include file="inc/bottom.jsp" %>