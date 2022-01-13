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
                        <h3 class="page-title mb-0 p-0">카테고리 상세</h3>
                        <div class="d-flex align-items-center">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">카테고리 상세</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                    
                </div>
            </div>
           <%--  <div class="row">
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
                    </div> --%>
                    <div class="col-lg-8 col-xlg-9 col-md-7" style="margin-left: 23%; width: 80%;  height: 400px;">
                        <div class="card" style="width:65%">
                            <div class="card-body">
                                <form class="form-horizontal form-material mx-2">
                                    <div class="form-group">
                                        <label class="col-md-12 mb-0">분류</label>
                                        <div class="col-md-12">
                                            <input type="text" id="main" placeholder="${vo.main }"
                                                class="form-control ps-0 form-control-line" readonly="readonly">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="example-email" class="col-md-12">분야</label>
                                        <div class="col-md-12">
                                            <input type="text"
                                                class="form-control ps-0 form-control-line" id="detail" placeholder="${vo.detail }" readonly="readonly">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-12 d-flex">
                                        		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type = "Button" id="btList" class="btn btn-primary rounded-pill h-100" value="&nbsp;&nbsp;글목록&nbsp;&nbsp;" OnClick="location.href='<c:url value="/admin/category/list"/>'" />&nbsp;&nbsp;&nbsp;&nbsp; 
                          						<a href='<c:url value="/admin/category/cateUpdate?categoryNo=${vo.categoryNo }"/>' class="btn btn-primary rounded-pill h-100">&nbsp;&nbsp;수정&nbsp;&nbsp;</a>&nbsp;&nbsp;&nbsp;&nbsp;
									        	<a href='<c:url value="/admin/category/delete?categoryNo=${vo.categoryNo }"/>' class="btn btn-primary rounded-pill h-100">&nbsp;&nbsp;삭제&nbsp;&nbsp;</a>
									        	
                                        </div>
                                    </div>
                                    </form>
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
