<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../../inc/top_admin.jsp" %>
<style>
.btn-primary {
  color: #fff;
  background-color: #2CCE8D;
  border-color: #2CCE8D;
}
.rounded-pill {
  border-radius: 50rem !important;
}
.h-100 {
  height: 100% !important;
}
.btn-primary:hover {
  color: #fff;
  background-color: #00b66d;
  border-color: #00b66d;
}
</style>
        <div id="page-wrapper">
		  <div class="header"> 
                        <h2 class="page-header">
                            카테고리 목록
                        </h2>
						<ol class="breadcrumb"">
					  		<%-- <li><a href="<c:url value='/admin/empty'/>">입력</a></li> --%>
					  	
					  			<a href="<c:url value='/admin/category/write'/>" class="btn btn-primary rounded-pill h-100">&nbsp;&nbsp;등록&nbsp;&nbsp;</a>
					  		<!-- btn btn-primary rounded-pill h-100 -->
					  		
					   </ol>
					
		</div>
		<div class="panel panel-default">
                        <div class="panel-heading" style="text-align:center; font-weight: bold; font-size: x-large;">
                            
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-hover">
                                     <thead>
                                        <tr>
                                            <th>NO</th>
                                            <th>MAIN</th>
                                            <th>DETAIL</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<c:forEach var="vo" items="${list }">
	                                        <tr>
	                                            <td><a href="<c:url value='/admin/category/detail?categoryNo=${vo.categoryNo }'/>">
	                                            	${vo.categoryNo }
	                                            </a></td>
	                                            <td>${vo.main }</td>
	                                            <td>${vo.detail }</td>
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
							="<c:url value='/admin/category/list?currentPage=${pagingInfo.firstPage-1}&searchCondition=${param.searchCondition}&searchKeyword=${param.searchKeyword}'/>">
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
							="<c:url value='/admin/category/list?currentPage=${i}&searchCondition=${param.searchCondition}&searchKeyword=${param.searchKeyword}'/>">
											[${i }]</a>			
									</c:if>
								</c:forEach>
								
								<!-- 다음 블럭으로 이동 -->					
								<c:if test="${pagingInfo.lastPage < pagingInfo.totalPage }">	
										<a href
							="<c:url value='/admin/category/list?currentPage=${pagingInfo.lastPage+1}&&searchCondition=${param.searchCondition}&searchKeyword=${param.searchKeyword}'/>">
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
