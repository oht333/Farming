<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<section class="py-5">
      <div class="container">
        <div class="d-flex justify-content-between align-items-center flex-column flex-md-row mb-4">
          <div class="me-3">
            <p class="mb-3 mb-md-0"><strong>${fn:length(expList) }</strong> results found</p>
          </div>
          <div>
            <label class="form-label me-2" for="form_sort">도시선택</label>
            <select class="selectpicker" name="sort" id="city" data-style="btn-selectpicker" title="">
              <option value="sortBy_0">서울   </option>
              <option value="sortBy_1">세종   </option>
              <option value="sortBy_2">강원   </option>
            </select>
          </div>
        </div>
	<div class="row">
	<c:if test="${empty expList }">
		<div class="col-sm-12 col-lg-12 mb-5">
			<p class="text-center">검색하신 지역에는 활동 중인 전문가가 없습니다.</p>
		</div>
	</c:if>   
          <!-- venue item-->
          <c:if test="${!empty expList }">				
			<c:forEach var="vo" items="${expList }">
	          <div class="col-sm-6 col-lg-4 mb-5 hover-animate" data-marker-id="59c0c8e33b1527bfe2abaf92">
	            <div class="card h-100 border-0 shadow">
	              <div class="card-img-top overflow-hidden dark-overlay bg-cover" 
	              style="background-image: url(${pageContext.request.contextPath }/resources/img/photo/restaurant-1430931071372-38127bd472b8.jpg); min-height: 200px;">
	              <a class="tile-link" href="detail.html"></a>
	                <div class="card-img-overlay-bottom z-index-20">
	                  <h4 class="text-white text-shadow">${vo.name }</h4>
	                  <p class="mb-2 text-xs">
	                  	<i class="fa fa-star text-warning"></i>
	                  	<i class="fa fa-star text-warning"></i>
	                  	<i class="fa fa-star text-warning"></i>
	                  	<i class="fa fa-star text-warning"></i>
	                  	<i class="fa fa-star text-gray-300"></i>
	                  </p>
	                </div>
	                <div class="card-img-overlay-top d-flex justify-content-between align-items-center">
	                    <svg class="svg-icon text-white">
	                      <use xlink:href="#heart-1"> </use>
	                    </svg>
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
            </c:forEach>
		  </c:if>
        <!-- Pagination -->
        <nav aria-label="Page navigation example">
          <ul class="pagination pagination-template d-flex justify-content-center">
          	<c:if test="${pagingInfo.firstPage>1 }">
	            <li class="page-item">
	            	<a class="page-link" href="#" onclick="pageFunc(${pagingInfo.firstPage-1})"> 
	            		<i class="fa fa-angle-left"></i>
	            	</a></li>
          	</c:if>
          	<c:forEach var="i" begin="${pagingInfo.firstPage }" end="${pagingInfo.lastPage }">
				<c:if test="${i==pagingInfo.currentPage }">
		            <li class="page-item active">
		            	<a class="page-link" href="#" onclick="pageFunc(${i})">i</a>
		            </li>
		    	</c:if>
			</c:forEach>        
            <c:if test="${pagingInfo.lastPage<pagingInfo.totalPage }">
            	<li class="page-item">
            		<a class="page-link" href="#" onclick="pageFunc(${pagingInfo.lastPage+1})"> 
            			<i class="fa fa-angle-right"></i>
            		</a>
            	</li>
            </c:if>
          </ul>
        </nav>
   </div>
    </section> 