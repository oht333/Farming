<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp" %>
    <section class="py-5">
      <div class="container">
        <ol class="breadcrumb ps-0  justify-content-start">
          <li class="breadcrumb-item"><a href="<c:url value='/index'/>">Home</a></li>
          <li class="breadcrumb-item active">전문가찾기</li>
        </ol>
        <div class="d-flex justify-content-between align-items-center flex-column flex-md-row mb-4">
          <div class="me-3">
            <p class="mb-3 mb-md-0"><strong>12</strong> results found</p>
          </div>
          <div>
            <label class="form-label me-2" for="form_sort">Sort by</label>
            <select class="selectpicker" name="sort" id="form_sort" data-style="btn-selectpicker" title="">
              <option value="sortBy_0">Most popular   </option>
              <option value="sortBy_1">Recommended   </option>
              <option value="sortBy_2">Newest   </option>
              <option value="sortBy_3">Oldest   </option>
              <option value="sortBy_4">Closest   </option>
            </select>
          </div>
        </div>
        <div class="row">
          <!-- venue item-->
          <div class="col-sm-6 col-lg-4 mb-5 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
            <div class="card h-100 border-0 shadow">
              <div class="card-img-top overflow-hidden dark-overlay bg-cover" style="background-image: url(img/photo/restaurant-1430931071372-38127bd472b8.jpg); min-height: 200px;"><a class="tile-link" href="detail.html"></a>
                <div class="card-img-overlay-bottom z-index-20">
                  <h4 class="text-white text-shadow">Blue Hill</h4>
                  <p class="mb-2 text-xs"><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-warning"></i><i class="fa fa-star text-gray-300">                    </i>
                  </p>
                </div>
                <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
                  <div class="badge badge-transparent badge-pill px-3 py-2">Restaurants</div><a class="card-fav-icon position-relative z-index-40" href="javascript: void();"> 
                    <svg class="svg-icon text-white">
                      <use xlink:href="#heart-1"> </use>
                    </svg></a>
                </div>
              </div>
              <div class="card-body">
                <p class="text-sm text-muted mb-3"> Cupidatat excepteur non dolore laborum et quis nostrud veniam dolore deserunt. Pariatur dolore ut in elit id nulla. Irur...</p>
                <p class="text-sm text-muted text-uppercase mb-1">By <a href="#" class="text-dark">Matt Damon</a></p>
                <p class="text-sm mb-0"><a class="me-1" href="#">Restaurant,</a><a class="me-1" href="#">Contemporary</a>
                </p>
              </div>
            </div>
          </div>
        </div>
        <!-- Pagination -->
        <nav aria-label="Page navigation example">
          <ul class="pagination pagination-template d-flex justify-content-center">
            <li class="page-item"><a class="page-link" href="#"> <i class="fa fa-angle-left"></i></a></li>
            <li class="page-item active"><a class="page-link" href="#">1</a></li>
            <li class="page-item"><a class="page-link" href="#">2</a></li>
            <li class="page-item"><a class="page-link" href="#">3</a></li>
            <li class="page-item"><a class="page-link" href="#"> <i class="fa fa-angle-right"></i></a></li>
          </ul>
        </nav>
      </div>
    </section>
<%@ include file="../inc/bottom.jsp" %>