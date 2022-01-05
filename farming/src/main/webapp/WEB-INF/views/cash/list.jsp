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
        <h1 class="hero-heading mb-0">충전 내역</h1>
        <p class="text-muted mb-5">Manage your account and settings here.</p>
        <div class="panel panel-default">
                        <div class="panel-heading" style="text-align:center; font-weight: bold; font-size: x-large;">
                            
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-hover">
                                     <thead>
                                        <tr>
                                            <th>CASH_NO</th>
                                            <th>CASH_PAY</th>
                                            <th>REGDATE</th>
                                            <th>BALANCE</th>
                                            <th>MEMBER_NO</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<c:forEach var="vo" items="${list }">
	                                        <tr>
	                                            <td>
	                                            	${vo.cashNo }
	                                            </td>
	                                            <td>${vo.cashPay }</td>
	                                            <td>${vo.email }</td>
	                                            <td>${vo.regDate }</td>
	                                            <td>${vo.balance }</td>
	                                            <td>${vo.memberNo }</td>
	                                        </tr>
										</c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
            
             <!-- /. PAGE INNER  -->
             
            </div>
         <!-- /. PAGE WRAPPER  -->
        </div>
   
    </section>
    <!-- JavaScript files-->

<%@ include file="../inc/bottom.jsp" %>