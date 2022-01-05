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
				        	<input type = "submit" value="&nbsp;&nbsp;&nbsp;&nbsp;삭제&nbsp;&nbsp;&nbsp;&nbsp;" class="btn btn-primary rounded-pill h-100"/> | 
	            			<input type = "Button" id="btList" class="btn btn-primary rounded-pill h-100" value="&nbsp;&nbsp;글목록&nbsp;&nbsp;" OnClick="location.href='<c:url value="/admin/category/list"/>'" />			
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
