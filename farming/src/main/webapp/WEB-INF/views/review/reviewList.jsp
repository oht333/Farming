<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<div class="status review">
	<script type="text/javascript">
		$(function(){
			console.log('${avg}'*20);
			$('#starimg').css('width','${avg}'*20+'%');
		})
	</script>
	<h1 class="fw-normal d-inline-block">${avg }</h1>
	<div class="d-inline-block ms-2">
		<div id="starwrap">
			<div id="star"></div>
			<div id="starimg"></div>
		</div>
		<span class="small text-muted">${fn:length(reviewList) }개 리뷰 평점</span>
		
	</div>
</div>
<c:if test="${empty reviewList }">
	<div class="text-md-center flex-shrink-0 me-4 me-xl-5">
		<p class="text-muted">등록된 리뷰가 없습니다.</p>
	</div>
</c:if>
<c:if test="${!empty reviewList }">
	<c:forEach var="vo" items="${reviewList }">
		<div class="d-flex d-block d-sm-flex review">
			<%-- <div class="text-md-center flex-shrink-0 me-4 me-xl-5">
				<img class="d-block avatar avatar-xl p-2 mb-2" src="${pageContext.request.contextPath }/resources/img/avatar/avatar-8.jpg" alt="Padmé Amidala">
				<span class="text-uppercase text-muted text-sm">
				<fmt:formatDate value="${map['REGDATE'] }" pattern="yyyy-MM-dd"/> </span>
			</div> --%>
			<div>
				<h6 class="mt-2 mb-1">${vo.name }<span class="ms-sm-2 fw-light text-muted text-sm">
				<fmt:formatDate value="${vo.regdate }" pattern="yyyy-MM-dd"/> </span></h6>
				<div class="mb-2">
					<c:forEach var="i" begin="1" end="${vo.rate }" step="1">
						<i class="fa fa-xs fa-star text-warning"></i>
					</c:forEach>
					<c:if test="${vo.rate < 5}">
						<c:forEach var="j" begin="1" end="${5- vo.rate }" step="1">
							<i class="fa fa-xs fa-star text-gray-300"></i>
						</c:forEach>
					</c:if>
					
				</div>
				<p class="text-muted text-sm">${vo.content }</p>
			</div>
		</div>
	</c:forEach>
</c:if>
