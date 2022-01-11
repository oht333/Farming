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
          <h1 class="hero-heading mb-0">받은 요청</h1><a class="btn btn-link text-muted" href="<c:url value='/findexp/expDetailEdit?expertNo=${expNo }'/>">프로필 수정하기</a>
        </div>
        <div class="d-flex justify-content-between align-items-center flex-column flex-lg-row mb-5">
          <div class="me-3">
            <p class="mb-3 mb-lg-0">전문가님은 <strong>${fn:length(list) } 명의 회원님께</strong> 견적요청을 받았습니다</p>
          </div>
          <div class="text-center">
            <label class="form-label me-2" for="form_sort">분야 검색</label>
            <select class="selectpicker me-3 mb-3 mb-lg-0" name="sort" id="form_sort" data-style="btn-selectpicker" title="">
            <c:if test="${empty fieldList }">
            	<option>추가정보를 등록하세요</option>
            </c:if>
            <c:if test="${!empty fieldList}">
	            <c:set var="idx" value="0"/>
	            <c:forEach var="fieldvo" items="${fieldList }">
	              <option value="detail_${idx }">${fieldvo.detail }   </option>
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
	              <div class="col-lg-3 align-self-center mb-4 mb-lg-0">
	                <div class="d-flex align-items-center mb-3">
	                  <h2 class="h5 mb-0">${map['NAME'] }</h2>
	                  <img class="avatar avatar-sm avatar-border-white ms-3" src="${pageContext.request.contextPath }/resources/userImg/${map['FILENAME']}">
	                </div>
	                <p class="text-sm text-muted"><fmt:formatDate value="${map['SEND_TIME'] }" pattern="yyyy-MM-dd hh:mm:ss"/> </p>
	              </div>
	              <div class="col-lg-9">
	                <div class="row">
	                  <div class="col-5 col-md-3 col-lg-2 py-3 mb-3 mb-lg-0">
	                    <h6 class="label-heading">회원 지역</h6>
	                    <p class="text-sm fw-bold">${map['LOCATION1'] } ${map['LOCATION2'] }</p>
	                  </div>
	                  <div class="col-12 col-md-9 col-lg-8 py-3">
	                    <h6 class="label-heading">견적의뢰내용</h6>
	                    <p class="text-sm fw-bold">
	                    	<c:if test="${!empty map['REQUEST_DESIGN_NO'] }">
		                    	${map['TYPE'] } ${map['RANGE'] } ${map['SCALE'] } ${map['DEADLINE'] } ${map['QUESTION'] }
	                    	</c:if>
	                    	<c:if test="${!empty map['REQUEST_DEVELOP_NO'] }">
		                    	${map['TYPE'] } ${map['CAREER'] } ${map['STEP'] } ${map['REFERENCE'] } ${map['DEADLINE'] } ${map['WORKTYPE'] }
	                    	</c:if>
	                    </p>
	                  </div>
	                  <div class="col-12 col-lg-2 align-self-center">
	                  	<span class="text-primary text-sm text-uppercase me-4 me-lg-0">
	                  		<i class="fa fa-check fa-fw me-2"> </i>견적서 보냄</span>
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