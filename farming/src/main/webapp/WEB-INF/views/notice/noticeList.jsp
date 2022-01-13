<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp" %>

<script type="text/javascript">
	function pageFunc(curPage){
		$('#frmPage input[name=currentPage]').val(curPage);
		$('#frmPage').submit();
	}
</script>

<script type="text/javascript">
</script>
<body style="padding-top: 72px;">
        <div class="page-wrapper">
            <!-- Hero Section-->
    <section class="pt-7 pb-5 d-flex align-items-end dark-overlay bg-cover" style="background-image: url('img/photo/restaurant-1515164783716-8e6920f3e77c.jpg');">
      <div class="container overlay-content">
      <ol class="breadcrumb ps-0  justify-content-center">
          <li class="breadcrumb-item"><a href="<c:url value='../index'/>">Home</a></li>
          <li class="breadcrumb-item active">공지사항</li>
        </ol>
        <div class="d-flex justify-content-between align-items-start flex-column flex-lg-row align-items-lg-end">
          <div class="text-white mb-4 mb-lg-0">
            <div class="badge badge-pill badge-transparent px-3 py-2 mb-4">FAQ</div>
            <h1 class="text-shadow verified">공지사항</h1>
          </div>
          <c:if test="${user eq '관리자' }">
          <div class="calltoactions"><a class="btn btn-primary" href="<c:url value='/notice/noticeWrite'/>" >공지글 작성</a></div>
          </c:if>
        </div>
      </div>
    </section><br>
		<form action="<c:url value='/notice/noticeDetail'/>" id="frm" class="container-fluid">
               <div class="row">
                    <!-- column -->
                    <div class="col-sm-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table user-table no-wrap">
                                        <thead>
                                             <tr>
	                                            <th>공지글 번호</th>
	                                            <th>관리자</th>
	                                            <th>내용</th>
                                       		 </tr>

                                        </thead>
                                    <tbody>
                                    	<c:forEach var="vo" items="${list }">
                                    	<input type="hidden" name="adminNo" value="${vo.adminNo }">
                                    	<input type="hidden" name="adminName" value="${vo.name }">
	                                        <tr>
	                                            <td>
	                                            <a href="<c:url value='/notice/noticeDetail?noticeNo=${vo.noticeNo }'/>">
	                                            	${vo.noticeNo }
	                                            </a>
	                                            </td>
	                                            <td>
	                                            ${vo.name }
	                                            </td>
	                                            
	                                            <td>
	                                            ${vo.content }
	                                            </td>
	                                           
	                                        </tr>
										</c:forEach>
                                    </tbody>
                                </table>
                            </div>
                            <div class="divPage" style="text-align:center">
								<!-- 페이지 번호 추가 -->		
								<!-- 이전 블럭으로 이동 -->
								<c:if test="${pagingInfo.firstPage>1 }">
									<a href
							="<c:url value='/notice/noticeList?currentPage=${pagingInfo.firstPage-1}'/>">
										<img src="<c:url value='/resources/images/first.JPG'/>" alt="이전블럭">
									</a>	
								</c:if>		
													
								<!-- [1][2][3][4][5][6][7][8][9][10] -->
								<c:forEach var="i" begin="${pagingInfo.firstPage}" end="${pagingInfo.lastPage }">
									<c:if test="${i==pagingInfo.currentPage }">
										<span style="color:#2CCE8D;font-weight: bold;font-size: 20px">
											${i}</span>			
									</c:if>	
									<c:if test="${i!=pagingInfo.currentPage }">	
											<a href
							="<c:url value='/notice/noticeList?currentPage=${i}'/>">
											[${i }]</a>			
									</c:if>
								</c:forEach>
								
								<!-- 다음 블럭으로 이동 -->					
								<c:if test="${pagingInfo.lastPage < pagingInfo.totalPage }">	
										<a href
							="<c:url value='/notice/noticeList?currentPage=${pagingInfo.lastPage+1}'/>">
											<img src="<c:url value='/resources/images/last.JPG'/>" alt="다음블럭">
										</a>	
								</c:if>					
								<!--  페이지 번호 끝 -->	
							</div>
                        </div>
                    </div>
            
             <!-- /. PAGE INNER  -->
             
            </div>
         <!-- /. PAGE WRAPPER  -->
        </div>
        </form>
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
    <script src="<c:url value='/resources/admin_js/custom-scripts.js'/>"></script><br>
<%@ include file="../inc/bottom.jsp" %>
