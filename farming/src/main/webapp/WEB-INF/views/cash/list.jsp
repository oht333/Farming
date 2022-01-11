<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp" %>
    <section class="py-5">
      <div class="container">
        <!-- Breadcrumbs -->
        <ol class="breadcrumb ps-0  justify-content-start">
          <li class="breadcrumb-item"><a href="<c:url value='/index'/>">Home</a></li>
          <li class="breadcrumb-item active">거래내역</li>
        </ol>
        <h1 class="hero-heading mb-0">거래내역</h1>
        <p class="text-muted mb-5">Manage your account and settings here.</p>
        <div class="panel panel-default">
                        <div class="panel-heading" style="text-align:center; font-weight: bold; font-size: x-large;">
                            총 거래내역
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-hover">
                                     <thead>
                                        <tr>
                                            <th>주문번호</th>
                                            <th>판매자</th>
                                            <th>서비스명</th>
                                            <th>가격</th>
                                            <th>주문상태</th>                                          
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<c:forEach var="vo" items="${list }">
	                                        <tr>
	                                            <td>
	                                            	${vo.merchantUid }
	                                            </td>
	                                            <td>${vo.expertName }</td>
	                                            <td>${vo.serviceName }</td>
	                                            <td><fmt:formatNumber value="${vo.price }" pattern="#,###"/>원</td>
	                                            <td>${vo.state }</td>
	                                            <td><fmt:formatDate value="${vo.time }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
	                                        </tr>
										</c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div><br><br><hr>
                        
                        <div class="panel-heading" style="text-align:center; font-weight: bold; font-size: x-large;">
                            파밍페이 거래내역
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-hover">
                                     <thead>
                                        <tr>
                                            <th>주문번호</th>
                                            <th>판매자</th>
                                            <th>서비스명</th>
                                            <th>가격</th>
                                            <th>주문상태</th>
                                            <th>페이잔액</th>                                         
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<c:forEach var="map" items="${pList }">
	                                        <tr>
	                                            <td>
	                                            	${map['MERCHANT_UID'] }
	                                            </td>
	                                            <td>${map['EXPERT_NAME'] }</td>
	                                            <td>${map['SERVICE_NAME'] }</td>
	                                            <td><fmt:formatNumber value="${map['PRICE'] }" pattern="#,###"/>원</td>
	                                            <td>${map['STATE'] }</td>
	                                            <td><fmt:formatNumber value="${map['BALANCE'] }" pattern="#,###"/>원</td>
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