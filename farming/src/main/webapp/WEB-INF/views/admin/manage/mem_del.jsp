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
                        <h3 class="page-title mb-0 p-0">회원 삭제</h3>
                        <div class="d-flex align-items-center">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">회원 삭제</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                    
                </div>
            </div>
<form name="frmDelete" method="post" action="<c:url value='/admin/manage/mem_del'/>" style="margin-left: 23%; width: 80%;  height: 400px;">
<input type="hidden" name="memberNo" value="${param.memberNo}">
                        <%-- <div class="row">
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
             </div> --%>
             <div class="col-lg-8 col-xlg-9 col-md-7">
                        <div class="card">
                            <div class="card-body">
                                <form class="form-horizontal form-material mx-2">
                                    <div class="form-group">
                                        <span class="sp" style="font-weight: bold; font-size:large;">${param.memberNo }번 회원을 삭제하시겠습니까?</span>
                                    </div>
                                    
                                    <%-- <div class="form-group">
                                        <div class="col-sm-12 d-flex">
                          
                                    		<input type = "Button" id="btList" class="btn btn-success mx-auto mx-md-0 text-white" value="&nbsp;&nbsp;글목록&nbsp;&nbsp;" OnClick="location.href='<c:url value="/admin/category/list"/>'" />
                                        	<input type = "submit" id="submit" value="&nbsp;&nbsp;&nbsp;삭제&nbsp;&nbsp;&nbsp;" style="margin-left:45%; " class="btn btn-success mx-auto mx-md-0 text-white"/>
                                        </div>
                                    </div> --%>
                                    <div class="col-lg-2 d-grid" style="width:100px">
                                    		<input type = "Button" id="btList" class="btn btn-primary rounded-pill h-100" value="&nbsp;&nbsp;회원목록&nbsp;&nbsp;" OnClick="location.href='<c:url value="/admin/manage/mem_list"/>'" />
						                    <input type = "submit" class="btn btn-primary rounded-pill h-100" id="submit" value="&nbsp;&nbsp;&nbsp;삭제&nbsp;&nbsp;&nbsp;">
						              </div>
                                    </form>
                            </div>
                        </div>
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
