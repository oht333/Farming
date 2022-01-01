<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../../inc/top.jsp" %>
    <section class="py-5">
      <div class="container">
        <!-- Breadcrumbs -->
        <ol class="breadcrumb ps-0  justify-content-start">
          <li class="breadcrumb-item"><a href="<c:url value='/index'/>">Home</a></li>
          <li class="breadcrumb-item"><a href="<c:url value='/member/mypage/main'/>">마이페이지</a></li>
          <li class="breadcrumb-item active">비밀번호 확인</li>
        </ol>
        <h1 class="hero-heading mb-0">비밀번호 확인</h1>
        <p class="text-muted mb-5">Check the password here.</p>
        
        <div class="row">
          <div class="col-lg-7 mb-5 mb-lg-0"> 
            <div class="text-block"> 
            <form name="frmCheck" method="post" 
					action="<c:url value='/member/mypage/checkpwd'/>" >
					<input type="hidden" name="email" value="${param.email}">
              <div class="mb-4">
                <label class="form-label" for="pwd"> Password</label>
                <input class="form-control" name="pwd" id="pwd" type="password">
              </div>
              <div class="col-lg-2 d-grid">
                    <button class="btn btn-primary rounded-pill h-100" id="submit" value="submit">확인 </button>
              </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </section>

<%@ include file="../../inc/bottom.jsp" %>