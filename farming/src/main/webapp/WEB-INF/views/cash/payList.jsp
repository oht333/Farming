<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp" %>
<section class="hero py-5 py-lg-7">
     <ol class="breadcrumb ps-0  justify-content-center">
          <li class="breadcrumb-item"><a href="<c:url value='/index'/>">Home</a></li>
          <li class="breadcrumb-item"><a href="<c:url value='/cash/main'/>">main</a></li>
          <li class="breadcrumb-item active">거래내역조회</li>
        </ol>
     <h1 class="hero-heading">파밍페이 거래내역</h1>
</section>
   <section class="py-6">
      <div class="container-fluid">
        <div class="row px-xl-5">
        <div class="col-lg-2">
            <div class="sticky-top mb-5" style="top: 120px;">
              <div class="sidebar-block">
                <h6 class="sidebar-heading ms-3">거래내역</h6>
                <nav class="nav nav-pills flex-column">
	                <a class="nav-link mb-2" href="<c:url value='/cash/list'/>">총 거래내역</a>
	                <a class="nav-link mb-2 active" href="#">파밍페이 거래내역</a>
                </nav>
              </div>
            </div>
          </div>
          <div class="col-lg-10 col-xl-8 docs-content" style="margin-left: 100px;">
               <div class="panel-heading" style="text-align:center; font-weight: bold; font-size: x-large; margin-bottom: 20px;">
                         파밍페이 거래내역
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive text-sm mb-5" id="farmingPay">
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
                        <nav aria-label="Page navigation example">
  								<ul class="pagination">
							<c:if test="${pagingInfo.firstPage>1 }">
								<a href="<c:url value='/cash/payList?currentPage=${pagingInfo.firstPage-1}'/>">
									<li class="page-item"><a class="page-link" href="#">Previous</a></li>
								</a>	
							</c:if>		
							<!-- [1][2][3][4][5][6][7][8][9][10] -->
							<c:forEach var="i" begin="${pagingInfo.firstPage}" end="${pagingInfo.lastPage }">
								<c:if test="${i==pagingInfo.currentPage }">
									<li class="page-item"><a class="page-link">${i}</a></li>			
								</c:if>	
								<c:if test="${i!=pagingInfo.currentPage }">	
									<li class="page-item"><a class="page-link" href="<c:url value='/cash/payList?currentPage=${i}'/>">
										${i }</a></li>		
								</c:if>
							</c:forEach>
							<c:if test="${pagingInfo.lastPage < pagingInfo.totalPage }">	
									<a href="<c:url value='/cash/payList?currentPage=${pagingInfo.lastPage+1}'/>">
										<li class="page-item"><a class="page-link" href="#">Next</a></li>
									</a>	
							</c:if>					
						</ul>
						</nav>
						
                    </div>
          </div>
      </div>
    </div>
    </section>
    <!-- JavaScript files-->

<%@ include file="../inc/bottom.jsp" %>