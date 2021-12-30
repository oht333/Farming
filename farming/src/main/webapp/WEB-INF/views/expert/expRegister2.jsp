<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../inc/top.jsp"%>
<style>
	input[type=checkbox]:checked + label { 
		background: #2CCE8D;
		color: white;
	}
</style>
<script type="text/javascript">
	$(function() {
		$('#submit').click(function() {
			if($('#main').val()=='type'){
				alert('서비스타입을 선택하세요');
				event.preventDefault();
			}
		});
		$('#prev').click(function(){
			location.href="<c:url value='/expert/expRegister1'/>";
		});
		
	});
</script>
    <div class="progress rounded-0 sticky-top" style="height: 8px; top: 72px;">
      <div class="progress-bar" role="progressbar" style="width: 70%" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"></div>
    </div>
    <section class="py-5">
      <div class="container">
        <p class="subtitle text-primary">SignUp Expert!</p>
        <h1 class="h2 mb-5">Information <span class="text-muted float-end">Step 2</span></h1>
        <form action="<c:url value='/expert/expRegister3'/>" method="post">
          <input type="hidden" name="main" id="main" value="${param.main }">
          <div class="row form-block">
            <div class="col-lg-4">
            <c:if test="${param.main eq '개발' }">
              <h4>개발서비스</h4>
              <p class="text-muted text-sm">당신이 제공할 수 있는 개발 서비스를 모두 선택하세요</p>
            </c:if>
            <c:if test="${param.main eq '디자인' }">
              <h4>디자인서비스</h4>
              <p class="text-muted text-sm">당신이 제공할 수 있는 디자인 서비스를 모두 선택하세요</p>
            </c:if>
            </div>
            <div class="col-lg-7 ms-auto">
              <div class="mb-4">
              	<c:if test="${empty clist }">
              		<p>데이터가 없습니다</p>
              	</c:if>
              	<c:if test="${!empty clist }">
              		<c:if test="${param.main eq '개발' }">
	              		<c:set var="idx" value="0"/>
	                	<c:forEach var="vo" items="${clist }">
		            		<div class="col-lg-4 d-grid" style="float: left; border: 1px solid #dddddd; margin: 5px; border-radius: 10px; text-align: center;" id="div">
								<input type="checkbox" value="${vo.detail }" name="detail" id="detail[${idx }]" style="display: none">
		            			<label for="detail[${idx }]" style="height: 40px;">${vo.detail }${idx }</label> 
		            		</div>
		            		<c:set var="idx" value="${idx+1 }"/>
	            		</c:forEach>
            		</c:if>
            		<c:if test="${param.main eq '디자인' }">
	              		<c:set var="idx" value="0"/>
	                	<c:forEach var="vo" items="${clist }">
		            		<div class="col-lg-4 d-grid" style="float: left; border: 1px solid #dddddd; margin: 5px; border-radius: 10px; text-align: center;" id="div">
								<input type="checkbox" value="${vo.detail }" name="detail" id="detail[${idx }]" style="display: none">
		            			<label for="detail[${idx }]" style="height: 40px;">${vo.detail }${idx }</label> 
		            		</div>
		            		<c:set var="idx" value="${idx+1 }"/>
	            		</c:forEach>
            		</c:if>
              	</c:if>
              	
              </div>
              
            </div>
          </div>
          <div class="row form-block flex-column flex-sm-row">
            <div class="col text-center text-sm-start"><input type="button" value="이전" class="btn btn-primary px-3" id="prev"></div>
            
            <div class="col text-center text-sm-end" id="submit"><input type="submit" value="다음" class="btn btn-primary px-3"></div>
          	
          </div>
        </form>
      </div>
    </section>
<%@ include file="../inc/bottom.jsp"%>

