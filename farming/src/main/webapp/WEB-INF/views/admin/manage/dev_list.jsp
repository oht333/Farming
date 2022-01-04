<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../inc/top_admin.jsp" %>
        <div id="page-wrapper">
		  <div class="header"> 
                        <h1 class="page-header">
                            전문가 목록
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
                                            <th>EXPERT_NO</th>
                                            <th>NAME</th>
                                            <th>EMAIL</th>
                                            <th>ADDRESS1</th>
                                            <th>ADDRESS2</th>
                                            <th>ZIPCODE</th>
                                            <th>REGDATE</th>
                                            <th>RESUMECODE</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<c:forEach var="vo" items="${dev_list }">
	                                        <tr>
	                                            <td>
	                                            <%-- <a href="<c:url value='/admin/manage/detail?expertNo=${vo.expertNo }'/>">
	                                            	
	                                            </a> --%>
	                                            	${vo.expertNo }
	                                            </td>
	                                            <td>${vo.name }</td>
	                                            <td>${vo.email }</td>
	                                            <td>${vo.address1 }</td>
	                                            <td>${vo.address2 }</td>
	                                            <td>${vo.zipCode }</td>
	                                            <td>${vo.regDate }</td>
	                                            <td>${vo.resumeCode }</td>
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
