<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../inc/top_admin.jsp" %>
<script type="text/javascript">
	var contextPath = "/farming";
		$(function(){
			$('#submit').click(function(){
				if($('#main').val().length<1){
  					alert('분야를 입력하세요');
  					$('#main').focus();
  					event.preventDefault();
				} else if($('#detail').val().length<1){
  					alert('분류를 입력하세요');
  					$('#detail').focus();
  					event.preventDefault();
				}
			});
		});	
</script>
 <div class="page-wrapper">
            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <div class="page-breadcrumb">
                <div class="row align-items-center">
                    <div class="col-md-6 col-8 align-self-center">
                        <h3 class="page-title mb-0 p-0">카테고리 등록</h3>
                        <div class="d-flex align-items-center">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">카테고리 등록</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                    
                </div>
            </div>
        
		<form name="frmWrite" method="post" 
	action="<c:url value='/admin/category/write'/>" style="margin-left: 23%; width: 80%;  height: 400px;">
 <fieldset>
		<%-- <div>
            <label for="main">분류</label>
            <input type="text" id="main" name="main" />
        </div>
        <div>
            <label for="detail">분야</label>
            <input type="text" id="detail" name="detail" />
        </div>
        <div class="center">
            <input type = "submit" value="등록"/>
            <input type = "Button" id="btList" value="글목록" OnClick="location.href='<c:url value="/admin/category/list"/>'" />         
        </div>  class="form-horizontal"--%>
        <div class="col-lg-8 col-xlg-9 col-md-7">
                        <div class="card">
                            <div class="card-body">
                                <form class="form-horizontal form-material mx-2">
                                    <div class="form-group">
                                        <label class="col-md-12 mb-0">분류</label>
                                        <div class="col-md-12">
                                            <input type="text" id="main" name="main" placeholder="개발/디자인"
                                                class="form-control ps-0 form-control-line">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="example-email" class="col-md-12">분야</label>
                                        <div class="col-md-12">
                                            <input type="text" id="detail" name="detail" placeholder="웹"
                                                class="form-control ps-0 form-control-line">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-12 d-flex">
                          
                                    		<input type = "Button" id="btList" class="btn btn-primary rounded-pill h-100" value="&nbsp;&nbsp;글목록&nbsp;&nbsp;" OnClick="location.href='<c:url value="/admin/category/list"/>'" />
                                        	<input type = "submit" id="submit" value="&nbsp;&nbsp;&nbsp;등록&nbsp;&nbsp;&nbsp;" style="margin-left:45%; " class="btn btn-primary rounded-pill h-100"/>
                                        </div>
                                    </div>
                                    </form>
                            </div>
                        </div>
                    </div>
    </fieldset>
</form>
            <div id="page-inner"> 
				 <footer><p>All right reserved. Template by: <a href="http://webthemez.com">WebThemez.com</a></p></footer>
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
