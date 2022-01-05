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
                        </h1><%-- 
						<ol class="breadcrumb"">
					  		<li><a href="<c:url value='/admin/empty'/>">입력</a></li>
					  	
					  			<a href="<c:url value='/admin/category/write'/>" class="btn btn-success">success</a>
					  		
					  		
					   </ol> --%>
					
		</div>
		<%-- <div class="panel panel-default">
                        <div class="panel-heading" style="text-align:center; font-weight: bold; font-size: x-large;">
                            
                        </div>
                        <!-- 수정시 no가 필요하므로 히든 필드에 담아서 넘겨준다 -->
						<input type="hidden" name="categoryNo" value="${vo.categoryNo}">
						<div> 
							<span class="sp1">MAIN</span> <span>${vo.main }</span>
						</div>
						<div>
							<span class="sp1">DETAIL</span> <span>${vo.detail }</span>
						</div>
                        <div class="center">
							<a href='<c:url value="/admin/category/cateUpdate?categoryNo=${vo.categoryNo }"/>'>수정</a> |
				        	<a href='<c:url value="/admin/category/delete?categoryNo=${vo.categoryNo }"/>'>삭제</a> |
				        	<a href='<c:url value="/admin/category/list"/>'>목록</a>			
						</div>
                    </div> --%>
            
            
            <div class="row">
                        <div class="col-xs-12">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <div class="card-title">
                                        <div class="title"></div>
                                    </div>
                                </div>
                                <div class="panel-body">
                                    <form class="form-horizontal">
                                        <div class="form-group">
                                            <label for="inputEmail3" class="col-sm-2 control-label">분류</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="main" placeholder="${vo.main }" readonly="readonly">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="inputPassword3" class="col-sm-2 control-label">분야</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="detail" placeholder="${vo.detail }" readonly="readonly">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-offset-2 col-sm-10" style="margin-left:45%;">
                                            	<a href='<c:url value="/admin/category/cateUpdate?categoryNo=${vo.categoryNo }"/>' class="btn btn-primary rounded-pill h-100">&nbsp;&nbsp;수정&nbsp;&nbsp;</a> |
									        	<a href='<c:url value="/admin/category/delete?categoryNo=${vo.categoryNo }"/>' class="btn btn-primary rounded-pill h-100">&nbsp;&nbsp;삭제&nbsp;&nbsp;</a> |
									        	<a href='<c:url value="/admin/category/list"/>' class="btn btn-primary rounded-pill h-100">&nbsp;&nbsp;목록&nbsp;&nbsp;</a>	
                                            </div>
                                        </div>
                                    </form>
                                </div>
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
