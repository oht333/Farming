<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../inc/top.jsp"%>
<script type="text/javascript">
	$(function() {
		$('#submit').click(function() {
			if($('#main').val()=='type'){
				alert('서비스타입을 선택하세요');
				event.preventDefault();
			}
		});
	});
</script>
    <div class="progress rounded-0 sticky-top" style="height: 8px; top: 72px;">
      <div class="progress-bar" role="progressbar" style="width: 40%" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"></div>
    </div>
    <section class="py-5">
      <div class="container">
        <p class="subtitle text-primary">SignUp Expert!</p>
        <h1 class="h2 mb-5">Information <span class="text-muted float-end">Step 2</span></h1>
        <form action="<c:url value='/expert/expRegister2'/>" method="post">
          <div class="row form-block">
            <div class="col-lg-4">
              <h4>개발서비스</h4>
              <p class="text-muted text-sm">당신이 제공할 수 있는 개발 서비스를 모두 선택하세요</p>
            </div>
            <div class="col-lg-7 ms-auto">
              <div class="mb-4">
                <c:forEach var="vo" items="${clist }">
	            	<input type="checkbox" value="${vo.categoryNo }">
	            		${vo.detail }            	
            	</c:forEach>
              </div>
              
            </div>
          </div>
          <div class="row form-block flex-column flex-sm-row">
            <div class="col text-center text-sm-start">
            </div>
            <div class="col text-center text-sm-end" id="submit"><input type="submit" value="다음" class="btn btn-primary px-3"></div>
          	
          </div>
        </form>
      </div>
    </section>
<%@ include file="../inc/bottom.jsp"%>

