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
                        <h2 class="page-header">
                            카테고리 수정
                        </h2>
						<!-- <ol class="breadcrumb">
					  <li><a href="#">Home</a></li>
					  <li><a href="#">Empty</a></li>
					  <li class="active">Data</li>
					</ol>  -->
					
		</div>
		<form name="frmWrite" method="post" 
			action="<c:url value='/admin/category/cateUpdate'/>" >
		<input type="hidden" name="categoryNo" value="${vo.categoryNo}">
 <fieldset>
		<%-- <div>
            <label for="main">대분류</label>
            <input type="text" id="main" name="main" value="${vo.main }"/>
        </div>
        <div>
            <label for="detail">분야</label>
            <input type="text" id="detail" name="detail" value="${vo.detail }"/>
        </div>
        <div class="center">
            <input type = "submit" value="등록"/>
            <input type = "Button" id="btList" value="글목록" />         
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
                                    <form>
                                        <div class="form-group">
                                            <label for="main">분류</label>
                                            <input type="text" id="main" name="main" value="${vo.main }" class="form-control" />
                                        </div>
                                        <div class="form-group">
                                            <label for="detail">분야</label>
                                            <input type="text" id="detail" name="detail" value="${vo.detail }" class="form-control"/>
                                        </div>
	                                        <input type = "submit" value="&nbsp;&nbsp;&nbsp;&nbsp;수정&nbsp;&nbsp;&nbsp;&nbsp;" class="btn btn-primary rounded-pill h-100"/>
	            							<input type = "Button" id="btList" class="btn btn-primary rounded-pill h-100" value="&nbsp;&nbsp;글목록&nbsp;&nbsp;" OnClick="location.href='<c:url value="/admin/category/list"/>'" />         
                                    </form>
                                </div>
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
