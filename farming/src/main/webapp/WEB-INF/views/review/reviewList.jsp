<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<p class="subtitle text-sm text-primary">Reviews</p>
<h5 class="mb-4">서비스 후기</h5>
<div class="d-flex d-block d-sm-flex review">
	<c:forEach var="reviewVo" items="${reviewList }">
		<div class="text-md-center flex-shrink-0 me-4 me-xl-5">
			<img class="d-block avatar avatar-xl p-2 mb-2"
				src="${pageContext.request.contextPath }/resources/img/avatar/avatar-8.jpg"
				alt="Padmé Amidala">
			<span class="text-uppercase text-muted text-sm">${reviewVo.regdate }</span>
		</div>
		<div>
			<h6 class="mt-2 mb-1">${reviewVo.name }</h6>
			<div class="mb-2">
				<c:set var="Rate" value="<fmt:parseNumber value='${reviewVo.rate }'/>"/>
				<c:forEach begin="0" end="${Rate }" integerOnly="true" >
					<i class="fa fa-xs fa-star text-warning"></i>
				</c:forEach>
				<c:if test="${reviewVo.rate < 5}">
					<c:forEach begin="0" end="${5-Rate }" step="1">
						<i class="fa fa-xs fa-star text-gray-300"></i>
					</c:forEach>
				</c:if>
			</div>
			<p class="text-muted text-sm">${reviewVo.content }</p>
		</div>
	</c:forEach>
</div>
