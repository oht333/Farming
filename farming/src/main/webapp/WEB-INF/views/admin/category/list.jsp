<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../../inc/top_admin.jsp" %>

         <div class="page-wrapper">
            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <div class="page-breadcrumb">
                <div class="row align-items-center">
                    <div class="col-md-6 col-8 align-self-center">
                        <h3 class="page-title mb-0 p-0">카테고리 목록</h3>
                        <div class="d-flex align-items-center">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">카테고리 목록</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
              
                </div> 
                <div class="col-lg-2 d-grid" style="float:right; width:100px">
                    <a href='<c:url value="/admin/category/write"/>' class="btn btn-primary rounded-pill h-100" id="submit" value="submit">등록 </a>
              </div>
            </div>
            
		<div class="container-fluid">
               <div class="row">
                    <!-- column -->
                    <div class="col-sm-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table user-table no-wrap">
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
