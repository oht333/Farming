<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../inc/top_admin.jsp" %>
        <div id="page-wrapper">
		  <div class="header"> 
                        <h2 class="page-header">
                            카테고리 목록
                        </h2>
						<ol class="breadcrumb"">
					  		<%-- <li><a href="<c:url value='/admin/empty'/>">입력</a></li> --%>
					  	
					  			<a href="<c:url value='/admin/category/write'/>" class="btn btn-success">등록</a>
					  		
					  		
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
