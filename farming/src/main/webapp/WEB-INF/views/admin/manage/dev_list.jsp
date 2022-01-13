<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../inc/top_admin.jsp" %>
<script type="text/javascript">
$(function(){
	$('#excel').click(function(){
		$('#frm').submit();
	})
});
</script>
        <div class="page-wrapper">
            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <div class="page-breadcrumb" style="margin-bottom: 0; padding-bottom: 0;">
                <div class="row align-items-center">
                    <div class="row mb-4 d-print-none">
                        <h3 class="page-title mb-0 p-0">전문가 목록</h3>
                        <div class="col-lg-6">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">전문가 목록</li>
                                </ol>
                            </nav>
                        </div>
                        <div class="col-lg-6 text-lg-end">
                        	<button class="btn btn-primary me-2" id="excel"><i class="far fa-file-excel me-2"></i> Download EXCEL</button>
                        </div>
                    </div>
                    
                </div>
            </div>
		<form action="<c:url value='/admin/expExcel'/>" id="frm" class="container-fluid">
               <div class="row">
                    <!-- column -->
                    <div class="col-sm-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table user-table no-wrap">
                                        <thead>
                                             <tr>
	                                            <th>EXPERT_NO</th>
	                                            <th>NAME</th>
	                                            <th>EMAIL</th>
	                                            <th>ADDRESS1</th>
	                                            <th>ADDRESS2</th>
	                                            <th>ZIPCODE</th>
	                                            <th>REGDATE</th>
                                       		 </tr>

                                        </thead>
                                    <tbody>
                                    	<c:forEach var="vo" items="${dev_list }">
                                    	<input type="hidden" name="expertNo" value="${vo.expertNo }">
                                    	<input type="hidden" name="name" value="${vo.name }">
                                    	<input type="hidden" name="email" value="${vo.email }">
                                    	<input type="hidden" name="address1" value="${vo.address1 }">
                                    	<input type="hidden" name="address2" value="${vo.address2 }">
                                    	<input type="hidden" name="zipCode" value="${vo.zipCode }">
                                    	<input type="hidden" name="regDate" value="${vo.regDate }">
	                                        <tr>
	                                            <td>
	                                            <a href="<c:url value='/admin/manage/dev_detail?expertNo=${vo.expertNo }'/>">
	                                            	${vo.expertNo }
	                                            </a>
	                                            	
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
							="<c:url value='/admin/manage/dev_list?currentPage=${pagingInfo.firstPage-1}'/>">
										<img src="<c:url value='/resources/images/first.JPG'/>" alt="이전블럭">
									</a>	
								</c:if>		
													
								<!-- [1][2][3][4][5][6][7][8][9][10] -->
								<c:forEach var="i" begin="${pagingInfo.firstPage}" end="${pagingInfo.lastPage }">
									<c:if test="${i==pagingInfo.currentPage }">
										<span style="color:#2CCE8D;font-weight: bold;font-size: 20px">
											${i}</span>			
									</c:if>	
									<c:if test="${i!=pagingInfo.currentPage }">	
											<a href
							="<c:url value='/admin/manage/dev_list?currentPage=${i}'/>">
											[${i }]</a>			
									</c:if>
								</c:forEach>
								
								<!-- 다음 블럭으로 이동 -->					
								<c:if test="${pagingInfo.lastPage < pagingInfo.totalPage }">	
										<a href
							="<c:url value='/admin/manage/dev_list?currentPage=${pagingInfo.lastPage+1}'/>">
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
        </form>
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
