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
                        <h3 class="page-title mb-0 p-0">회원 상세</h3>
                        <div class="d-flex align-items-center">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">회원 상세</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                    
                </div>
            </div>
                    <div class="col-lg-8 col-xlg-9 col-md-7" style="margin-left: 23%; width: 80%;  height: 700px;">
                        <div class="card" style="width:65%">
                            <div class="card-body">
                                <form class="form-horizontal form-material mx-2">
                                    <div class="form-group">
                                        <label class="col-md-12 mb-0">이름</label>
                                        <div class="col-md-12">
                                            <input type="text" id="name" placeholder="${vo.name }"
                                                class="form-control ps-0 form-control-line" readonly="readonly">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="example-email" class="col-md-12">이메일</label>
                                        <div class="col-md-12">
                                            <input type="text"
                                                class="form-control ps-0 form-control-line" id="email" placeholder="${vo.email }" readonly="readonly">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="example-email" class="col-md-12">주소</label>
                                        <div class="col-md-12">
                                            <input type="text"
                                                class="form-control ps-0 form-control-line" id="address1" placeholder="${vo.address1 }" readonly="readonly">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="example-email" class="col-md-12">상세주소</label>
                                        <div class="col-md-12">
                                            <input type="text"
                                                class="form-control ps-0 form-control-line" id="address2" placeholder="${vo.address2 }" readonly="readonly">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="example-email" class="col-md-12">우편번호</label>
                                        <div class="col-md-12">
                                            <input type="text"
                                                class="form-control ps-0 form-control-line" id="zipCode" placeholder="${vo.zipCode }" readonly="readonly">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="example-email" class="col-md-12">가입일</label>
                                        <div class="col-md-12">
                                            <input type="text"
                                                class="form-control ps-0 form-control-line" id="regDate" placeholder="${vo.regDate }" readonly="readonly">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-12 d-flex">
                                        		&nbsp;&nbsp;<input type = "Button" id="btList" class="btn btn-primary rounded-pill h-100" value="&nbsp;&nbsp;회원목록&nbsp;&nbsp;" OnClick="location.href='<c:url value="/admin/manage/mem_list"/>'" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									        	<a href='<c:url value="/admin/manage/mem_del?memberNo=${vo.memberNo }"/>' class="btn btn-primary rounded-pill h-100">&nbsp;&nbsp;삭제&nbsp;&nbsp;</a>
									        	
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
