<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../inc/top.jsp" %>
    <section class="py-5">
      <div class="container">
        <!-- Breadcrumbs -->
        <ol class="breadcrumb ps-0  justify-content-start">
          <li class="breadcrumb-item"><a href="<c:url value='/index'/>">Home</a></li>
          <li class="breadcrumb-item active">파밍캐시 &amp; 페이 </li>
        </ol>
        <h1 class="hero-heading mb-0">파밍캐시 &amp; 페이</h1>
        <p class="text-muted mb-5">Manage your account and settings here.</p>
        <div class="row">
          <div class="col-6 col-md-4 mb-30px">
            <div class="card h-100 border-0 shadow hover-animate">
              <div class="card-body">
                <div class="icon-rounded bg-secondary-light mb-3">
                  <svg class="svg-icon text-secondary w-2rem h-2rem">
                    <use xlink:href="#identity-1"> </use>
                  </svg>
                </div>
                <h5 class="card-title mb-3"><a class="text-decoration-none text-dark stretched-link" href="<c:url value='/cash/cash?email=${email }'/>">캐시 충전</a></h5>
                <p class="text-muted card-text text-sm">Update your personal information</p>
              </div>
            </div>
          </div>
          <div class="col-6 col-md-4 mb-30px">
            <div class="card h-100 border-0 shadow hover-animate">
              <div class="card-body">
                <div class="icon-rounded bg-secondary-light mb-3">
                  <svg class="svg-icon text-secondary w-2rem h-2rem">
                    <use xlink:href="#diary-1"> </use>
                  </svg>
                </div>
                <h5 class="card-title mb-3"><a class="text-decoration-none text-dark stretched-link" href="<c:url value='/cash/list?email=${email }'/>">충전 내역 확인</a></h5>
                <p class="text-muted card-text text-sm">How to farming and how to use it</p>
              </div>
            </div>
          </div>
   
    </section>
    <!-- JavaScript files-->

<%@ include file="../inc/bottom.jsp" %>