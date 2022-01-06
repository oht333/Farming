<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../inc/top_admin.jsp" %>
        <div id="page-wrapper">
		  <div class="header"> 
                        <h1 class="page-header">
                            회원 목록
                        </h1>
					
		</div>
		<div class="panel panel-default">
                        <div class="panel-heading" style="text-align:center; font-weight: bold; font-size: x-large;">
                            
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-hover">
                                     <thead>
                                        <tr>
                                            <th>MEMBER_NO</th>
                                            <th>NAME</th>
                                            <th>EMAIL</th>
                                            <th>ADDRESS1</th>
                                            <th>ADDRESS2</th>
                                            <th>ZIPCODE</th>
                                            <th>REGDATE</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<c:forEach var="vo" items="${mem_list}">
	                                        <tr>
	                                            <td>
	                                            <%-- <a href="<c:url value='/admin/manage/detail?memberNo=${vo.memberNo }'/>">
	                                    
	                                            </a> --%>
	                                           	 	${vo.memberNo }
	                                            </td>
	                                            <td>${vo.name }</td>
	                                            <td>${vo.email }</td>
	                                            <td>${vo.address1 }</td>
	                                            <td>${vo.address2 }</td>
	                                            <td>${vo.zipCode }</td>
	                                            <td>${vo.regDate }</td>
	                                        </tr>
										</c:forEach>
                                    </tbody>
                                </table>
                            </div>
                            <div class="divPage" style="text-align:center">
								<!-- 페이지 번호 추가 -->		
								<!-- 이전 블럭으로 이동 -->
								<c:if test="${pagingInfo.firstPage>1 }">
									<a href
							="<c:url value='/admin/manage/mem_list?currentPage=${pagingInfo.firstPage-1}&searchCondition=${param.searchCondition}&searchKeyword=${param.searchKeyword}'/>">
										<img src="<c:url value='/resources/images/first.JPG'/>" alt="이전블럭">
									</a>	
								</c:if>		
													
								<!-- [1][2][3][4][5][6][7][8][9][10] -->
								<c:forEach var="i" begin="${pagingInfo.firstPage}" end="${pagingInfo.lastPage }">
									<c:if test="${i==pagingInfo.currentPage }">
										<span style="color:blue;font-weight: bold;font-size: 1em">
											${i}</span>			
									</c:if>	
									<c:if test="${i!=pagingInfo.currentPage }">	
											<a href
							="<c:url value='/admin/manage/mem_list?currentPage=${i}&searchCondition=${param.searchCondition}&searchKeyword=${param.searchKeyword}'/>">
											[${i }]</a>			
									</c:if>
								</c:forEach>
								
								<!-- 다음 블럭으로 이동 -->					
								<c:if test="${pagingInfo.lastPage < pagingInfo.totalPage }">	
										<a href
							="<c:url value='/admin/manage/mem_list?currentPage=${pagingInfo.lastPage+1}&&searchCondition=${param.searchCondition}&searchKeyword=${param.searchKeyword}'/>">
											<img src="<c:url value='/resources/images/last.JPG'/>" alt="다음블럭">
										</a>	
								</c:if>					
								<!--  페이지 번호 끝 -->	
							</div>
                        </div>
                    </div>
            
             <!-- /. PAGE INNER  -->
             
            </div>
         <!-- /. PAGE WRAPPER  -->
        </div>
     <!-- /. WRAPPER  -->
    <!-- JS Scripts-->
    <!-- jQuery Js -->
    <script src="<c:url value='/resources/admin_js/jquery-1.10.2.js'/>"></script>
      <!-- Bootstrap Js -->
    <script src="<c:url value='/resources/admin_js/bootstrap.min.js'/>"></script>
    <!-- Metis Menu Js -->
    <script src="<c:url value='/resources/admin_js/jquery.metisMenu.js'/>"></script>
      <!-- Custom Js -->
    <script src="<c:url value='/resources/admin_js/custom-scripts.js'/>"></script>
    
   
</body>
</html>
