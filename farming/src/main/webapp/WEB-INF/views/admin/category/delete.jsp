<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../inc/top_admin.jsp" %>
        <div id="page-wrapper">
		  <div class="header"> 
                        <h1 class="page-header">
                            
                        </h1>
						<%-- <ol class="breadcrumb"">
					  		<li><a href="<c:url value='/admin/empty'/>">입력</a></li>
					  	
					  			<a href="<c:url value='/admin/category/write'/>" class="btn btn-success">success</a>
					  		
					  		
					   </ol> --%>
					
		</div>
		<div class="panel panel-default">
                        <form name="frmDelete" method="post" action="<c:url value='/admin/category/delete'/>" >
						<input type="hidden" name="categoryNo" value="${param.categoryNo}">
                        <div class="row">
                        <div class="col-xs-12">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <div class="card-title">
                                        <div class="title"></div>
                                    </div>
                                </div>           
				        	<span class="sp">${param.categoryNo }번 글을 삭제하시겠습니까?</span>                        
				        </div>
                        <div class="center">
				        	<input type = "submit" value="삭제" class="btn btn-default"/> | 
	            			<input type = "Button" id="btList" class="btn btn-default" value="글목록" OnClick="location.href='<c:url value="/admin/category/list"/>'" />			
						</div>
                    </div>
             
             <!-- /. PAGE INNER  -->
             </div>
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
