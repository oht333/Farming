<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp"%>
<section class="py-5">
      <div class="container">
        <!-- Breadcrumbs -->
        <ol class="breadcrumb ps-0  justify-content-start">
          <li class="breadcrumb-item"><a href="index.html">Home</a></li>
          <li class="breadcrumb-item active">받은 견적   </li>
        </ol>
        <div class="d-flex justify-content-between align-items-end mb-5">
          <h1 class="hero-heading mb-0">받은 견적</h1><a class="btn btn-link text-muted" href="#">지금 바로 파밍하기</a>
        </div>
        <div class="d-flex justify-content-between align-items-center flex-column flex-lg-row mb-5">
          <div class="me-3">
            <p class="mb-3 mb-lg-0">전문가님은 <strong>12명의 전문가님께</strong> 견적을 받았습니다</p>
          </div>
          <div class="text-center">
            <label class="form-label me-2" for="form_sort">세부카테고리 검색</label>
            <select class="selectpicker me-3 mb-3 mb-lg-0" name="sort" id="form_sort" data-style="btn-selectpicker" title="">
              <option value="sortBy_0">Newest   </option>
              <option value="sortBy_1">Oldest   </option>
              <option value="sortBy_2">Paid   </option>
            </select>
          </div>
        </div>
        <div class="list-group shadow mb-5">
        	<a class="list-group-item list-group-item-action p-4" href="user-booking-detail.html">
            <div class="row">
              <div class="col-lg-4 align-self-center mb-4 mb-lg-0">
                <div class="d-flex align-items-center mb-3">
                  <h2 class="h5 mb-0">Meredith Goodwin</h2><img class="avatar avatar-sm avatar-border-white ms-3" src="img/avatar/avatar-0.jpg" alt="Jack London">
                </div>
                <p class="text-sm text-muted">Double Room</p><span class="badge badge-pill p-2 badge-secondary-light">February 16, 2019 - February 19, 2019</span>
              </div>
              <div class="col-lg-8">
                <div class="row">
                  <div class="col-6 col-md-4 col-lg-3 py-3 mb-3 mb-lg-0">
                    <h6 class="label-heading">Rate type</h6>
                    <p class="text-sm fw-bold">Bed & Breakfast</p>
                    <h6 class="label-heading">Nights </h6>
                    <p class="text-sm fw-bold mb-0">3</p>
                  </div>
                  <div class="col-6 col-md-4 col-lg-3 py-3">
                    <h6 class="label-heading">Occupancy</h6>
                    <p class="text-sm fw-bold">1 pax</p>
                    <h6 class="label-heading">Charge</h6>
                    <p class="text-sm fw-bold mb-0">$244.42</p>
                  </div>
                  <div class="col-6 col-md-4 col-lg-3 py-3">
                    <h6 class="label-heading">Booked Date</h6>
                    <p class="text-sm fw-bold">February 16, 2019                                        </p>
                    <h6 class="label-heading">Arrival Time</h6>
                    <p class="text-sm fw-bold mb-0">Around 4 PM</p>
                  </div>
                  <div class="col-12 col-lg-3 align-self-center"><span class="text-primary text-sm text-uppercase me-4 me-lg-0"><i class="fa fa-check fa-fw me-2"> </i>Booking paid</span><br class="d-none d-lg-block"><span class="text-primary text-sm text-uppercase"><i class="fa fa-check fa-fw me-2"> </i>Confirmed</span>
                  </div>
                </div>
              </div>
            </div>
            </a>
            <a class="list-group-item list-group-item-action p-4" href="user-booking-detail.html">
            <div class="row">
              <div class="col-lg-4 align-self-center mb-4 mb-lg-0">
                <div class="d-flex align-items-center mb-3">
                  <h2 class="h5 mb-0">Aguilar Webb</h2><img class="avatar avatar-sm avatar-border-white ms-3" src="img/avatar/avatar-3.jpg" alt="Jack London">
                </div>
                <p class="text-sm text-muted">Double Room</p><span class="badge badge-pill p-2 badge-success-light">April 09, 2019 - April 13, 2019</span>
              </div>
              <div class="col-lg-8">
                <div class="row">
                  <div class="col-6 col-md-4 col-lg-3 py-3 mb-3 mb-lg-0">
                    <h6 class="label-heading">Rate type</h6>
                    <p class="text-sm fw-bold">Bed & Breakfast</p>
                    <h6 class="label-heading">Nights </h6>
                    <p class="text-sm fw-bold mb-0">4</p>
                  </div>
                  <div class="col-6 col-md-4 col-lg-3 py-3">
                    <h6 class="label-heading">Occupancy</h6>
                    <p class="text-sm fw-bold">3 pax</p>
                    <h6 class="label-heading">Charge</h6>
                    <p class="text-sm fw-bold mb-0">$955.07</p>
                  </div>
                  <div class="col-6 col-md-4 col-lg-3 py-3">
                    <h6 class="label-heading">Booked Date</h6>
                    <p class="text-sm fw-bold">April 09, 2019                                        </p>
                    <h6 class="label-heading">Arrival Time</h6>
                    <p class="text-sm fw-bold mb-0">Around 4 PM</p>
                  </div>
                  <div class="col-12 col-lg-3 align-self-center"><span class="text-primary text-sm text-uppercase me-4 me-lg-0"><i class="fa fa-check fa-fw me-2"> </i>Booking paid</span><br class="d-none d-lg-block"><span class="text-muted text-sm text-uppercase"><i class="fa fa-times fa-fw me-2"> </i>Confirmed</span>
                  </div>
                </div>
              </div>
            </div></a>
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

<%@ include file="../inc/bottom.jsp"%>