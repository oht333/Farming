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
        <div class="card-body p-5 p-print-0">
                        <div class="panel-heading" style="text-align:center; font-weight: bold; font-size: x-large; margin-bottom: 20px;">
                            총 거래내역
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive text-sm mb-5">
                                <table class="table table-striped">
                                     <thead class="bg-gray-200">
                                        <tr class="border-0">
                                            <th class="center">주문번호</th>
                                            <th class="center">판매자</th>
                                            <th class="center">서비스명</th>
                                            <th class="text-end">가격</th>
                                            <th class="text-end">주문상태</th>                                          
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<c:forEach var="vo" items="${list }">
	                                        <tr>
	                                            <th class="center">
	                                            	${vo.merchantUid }
	                                            </th>
	                                            <td class="center">${vo.expertName }</td>
	                                            <td class="center">${vo.serviceName }</td>
	                                            <td class="text-end"><fmt:formatNumber value="${vo.price }" pattern="#,###"/>원</td>
	                                            <td class="text-end">${vo.state }</td>
	                                        </tr>
										</c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div><br><br><hr>
                        
                        <div class="panel-heading" style="text-align:center; font-weight: bold; font-size: x-large; margin-bottom: 20px;">
                            파밍페이 거래내역
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive text-sm mb-5">
                                <table class="table table-striped">
                                     <thead class="bg-gray-200">
                                        <tr class="border-0">
                                            <th class="center">주문번호</th>
                                            <th class="center">판매자</th>
                                            <th class="center">서비스명</th>
                                            <th class="text-end">가격</th>
                                            <th class="text-end">주문상태</th>                                        
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<c:forEach var="map" items="${pList }">
                                    	<c:set var="balance" value="${map['BALANCE'] }"/>
	                                        <tr>
	                                            <th class="center">
	                                            	${map['MERCHANT_UID'] }
	                                            </th>
	                                            <td class="center">${map['EXPERT_NAME'] }</td>
	                                            <td class="center">${map['SERVICE_NAME'] }</td>
	                                            <td class="text-end"><fmt:formatNumber value="${map['CHARGE'] }" pattern="#,###"/>원</td>
	                                            <td class="text-end">${map['STATE'] }</td>
	                                            <%-- <td><fmt:formatNumber value="${map['BALANCE'] }" pattern="#,###"/>원</td> --%>
	                                        </tr>
										</c:forEach>
                                    </tbody>
                                </table>
                            <div class="panel-body">
              				  <div class="col-sm-7 col-lg-5 col-xl-3 ms-auto">
	                              <table class="table">
	                 			    <tbody>
		                              <tr class="text-sm">
										 <td class="fw-bold">잔액</td>
										 <td class="text-end"><fmt:formatNumber value="${balance }" pattern="#,###"/>원</td>										
									  </tr>
	                                </tbody>
	                              </table>
                              </div>
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