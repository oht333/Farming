<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="../inc/top.jsp"%>
<section class="py-5">
      <div class="container">
        <!-- Breadcrumbs -->
        <ol class="breadcrumb ps-0  justify-content-start">
          <li class="breadcrumb-item"><a href="index.html">Home</a></li>
          <li class="breadcrumb-item active">받은 요청   </li>
        </ol>
        <div class="d-flex justify-content-between align-items-end mb-5">
          <h1 class="hero-heading mb-0">받은 요청</h1><a class="btn btn-link text-muted" href="#">프로필 수정하기</a>
        </div>
        <div class="d-flex justify-content-between align-items-center flex-column flex-lg-row mb-5">
          <div class="me-3">
            <p class="mb-3 mb-lg-0">전문가님은 <strong>${fn:length(list) }명의 회원님께</strong> 견적요청을 받았습니다</p>
          </div>
          <div class="text-center">
            <label class="form-label me-2" for="form_sort">분야 검색</label>
            <select class="selectpicker me-3 mb-3 mb-lg-0" name="sort" id="form_sort" data-style="btn-selectpicker" title="">
            <c:if test="${empty fieldList }">
            	<option>추가정보를 등록하세요</option>
            </c:if>
            <c:if test="${!empty fieldList}">
	            <c:set var="idx" value="0"/>
	            <c:forEach var="map" items="${fieldList }">
	              <option value="detail_${idx }">${map['DETAIL'] }   </option>
	              <c:set var="idx" value="${idx+1 }"/>
	            </c:forEach>
            </c:if>
            </select>
          </div>
        </div>
        <div class="list-group shadow mb-5">
        	<c:forEach var="map" items="${list }">
	        	<a class="list-group-item list-group-item-action p-4" href="user-booking-detail.html">
	            <div class="row">
	              <div class="col-lg-4 align-self-center mb-4 mb-lg-0">
	                <div class="d-flex align-items-center mb-3">
	                  <h2 class="h5 mb-0">${map['NAME'] }</h2>
	                  <img class="avatar avatar-sm avatar-border-white ms-3" src="${pageContext.request.contextPath }/resources/img/avatar/avatar-0.jpg">
	                </div>
	                <p class="text-sm text-muted">1일전</p>
	              </div>
	              <div class="col-lg-8">
	                <div class="row">
	                  <div class="col-6 col-md-4 col-lg-3 py-3 mb-3 mb-lg-0">
	                    <h6 class="label-heading">회원 위치</h6>
	                    <p class="text-sm fw-bold">${fn:substring(map['ADDRESS1'],0,6) }</p>
	                  </div>
	                  <div class="col-12 col-md-8 col-lg-6 py-3">
	                    <h6 class="label-heading">카테고리 디테일값</h6>
	                    <p class="text-sm fw-bold">1 pax</p>
	                  </div>
	                  <div class="col-12 col-lg-3 align-self-center">
	                  	<span class="text-primary text-sm text-uppercase me-4 me-lg-0">
	                  		<i class="fa fa-check fa-fw me-2"> </i>견적서 보냄</span>
	                  	<br class="d-none d-lg-block">
	                  	<span class="text-muted text-sm text-uppercase">
	                  		<i class="fa fa-times fa-fw me-2"> </i>삭제</span>
	                  </div>
	                </div>
	              </div>
	            </div>
	            </a>
            </c:forEach>
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