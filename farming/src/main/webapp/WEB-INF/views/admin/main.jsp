<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top_admin.jsp" %>
<script>
$(document).ready(function() {
	var result = $('#list option:selected').val();
	if (result == 'mem') {
	      $('#mem_list').show();
	      $('#dev_list').hide();
	 }
	 $('select[name="list"] ').on('change', function()  {
	    var result = $('#list option:selected').val();
	    if (result == 'mem') {
	      $('#mem_list').show();
	      $('#dev_list').hide();
	    } else {
	      $('#mem_list').hide();
	      $('#dev_list').show();
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
                        <h3 class="page-title mb-0 p-0">메인</h3>
                        <div class="d-flex align-items-center">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ============================================================== -->
            <!-- End Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Container fluid  -->
            <!-- ============================================================== -->
            <div class="container-fluid">
                <!-- ============================================================== -->
                <!-- Sales chart -->
                <!-- ============================================================== -->
                <div class="row">
                    <!-- Column -->
                    <div class="col-sm-6">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">회원 수</h4>
                                <div class="text-end">
                                    <h2 class="font-light mb-0"><i class="ti-arrow-up text-success"></i>${memCount}</h2>
                                    <!-- <span class="text-muted">Todays Income</span> -->
                                </div>
                                <span class="text-success">80%</span>
                                <div class="progress">
                                    <div class="progress-bar bg-success" role="progressbar"
                                        style="width: 80%; height: 6px;" aria-valuenow="25" aria-valuemin="0"
                                        aria-valuemax="100"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Column -->
                    <!-- Column -->
                    <div class="col-sm-6">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">전문가 수</h4>
                                <div class="text-end">
                                    <h2 class="font-light mb-0"><i class="ti-arrow-up text-info"></i>${expCount }</h2>
                                    <!-- <span class="text-muted">Todays Income</span> -->
                                </div>
                                <span class="text-info">30%</span>
                                <div class="progress">
                                    <div class="progress-bar bg-info" role="progressbar"
                                        style="width: 30%; height: 6px;" aria-valuenow="25" aria-valuemin="0"
                                        aria-valuemax="100"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Column -->
                </div>
                <!-- ============================================================== -->
                <!-- Sales chart -->
                <!-- ============================================================== -->
                <div class="row">
                    <!-- column -->
                    <div class="col-sm-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Revenue Statistics</h4>
                                <div class="flot-chart">
                                    <div class="flot-chart-content " id="flot-line-chart"
                                        style="padding: 0px; position: relative;">
                                        <canvas class="flot-base w-100" height="400"></canvas>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- column -->
                </div>
                <!-- ============================================================== -->
                <!-- Table -->
                <!-- ============================================================== -->
                <div class="row">
                    <div class="col-sm-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="d-md-flex">
                                    <!-- <h4 class="card-title col-md-10 mb-md-0 mb-3 align-self-center">Projects of the Month</h4> -->
                                    <div class="col-md-2 ms-auto">
                                        <select class="form-select shadow-none col-md-2 ml-auto" id="list" name="list">
                                            <option value="mem" selected="selected">회원 목록</option>
                                            <option value="exp">전문가 목록</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="table-responsive mt-5" id="mem_list">
                                    <table class="table stylish-table no-wrap">
                                        <thead>
                                            <tr>
                                                <!-- <th class="border-top-0" colspan="2">Assigned</th>
                                                <th class="border-top-0">Name</th>
                                                <th class="border-top-0">Budget</th> -->
                                                <th class="border-top-0">PROFILE</th>
	                                            <th class="border-top-0">NAME</th>
	                                            <th class="border-top-0">EMAIL</th>
	                                            <th class="border-top-0">ADDRESS1</th>
	                                            <th class="border-top-0">REGDATE</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%-- <tr>
                                                <td style="width:50px;"><span class="round">S</span></td>
                                                <td class="align-middle">
                                                    <h6>Sunil Joshi</h6><small class="text-muted">Web Designer</small>
                                                </td>
                                                <td class="align-middle">Elite Admin</td>
                                                <td class="align-middle">$3.9K</td>
                                            </tr>
                                            <tr class="active">
                                                <td><span class="round"><img src="<c:url value='/resources/admin_img/users/2.jpg'/>"
                                                            alt="user" width="50"></span></td>
                                                <td class="align-middle">
                                                    <h6>Andrew</h6><small class="text-muted">Project Manager</small>
                                                </td>
                                                <td class="align-middle">Real Homes</td>
                                                <td class="align-middle">$23.9K</td>
                                            </tr>
                                            <tr>
                                                <td><span class="round round-success">B</span></td>
                                                <td class="align-middle">
                                                    <h6>Bhavesh patel</h6><small class="text-muted">Developer</small>
                                                </td>
                                                <td class="align-middle">MedicalPro Theme</td>
                                                <td class="align-middle">$12.9K</td>
                                            </tr>
                                            <tr>
                                                <td><span class="round round-primary">N</span></td>
                                                <td class="align-middle">
                                                    <h6>Nirav Joshi</h6><small class="text-muted">Frontend Eng</small>
                                                </td>
                                                <td class="align-middle">Elite Admin</td>
                                                <td class="align-middle">$10.9K</td>
                                            </tr>
                                            <tr>
                                                <td><span class="round round-warning">M</span></td>
                                                <td class="align-middle">
                                                    <h6>Micheal Doe</h6><small class="text-muted">Content Writer</small>
                                                </td>
                                                <td class="align-middle">Helping Hands</td>
                                                <td class="align-middle">$12.9K</td>
                                            </tr>
                                            <tr>
                                                <td><span class="round round-danger">N</span></td>
                                                <td class="align-middle">
                                                    <h6>Johnathan</h6><small class="text-muted">Graphic</small>
                                                </td>
                                                <td class="align-middle">Digital Agency</td>
                                                <td class="align-middle">$2.6K</td>
                                            </tr> --%>
                                            <c:forEach var="vo" items="${mem_list}">
                                            	<tr>
                                            		<td class="align-middle"><img id="userImg" class="avatar avatar-lg p-1 flex-shrink-0 me-4" src="${pageContext.request.contextPath }/resources/userImg/${userImg}"></td>
	                                            	<td class="align-middle">${vo.name }</td>
		                                            <td class="align-middle">${vo.email }</td>
		                                            <td class="align-middle">${vo.address1 }</td>
		                                            <td class="align-middle">${vo.regDate }</td>
                                            	</tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                    <div class="divPage"; style="text-align:center">
							<!-- 페이지 번호 추가 -->		
							<!-- 이전 블럭으로 이동 -->
							<c:if test="${pagingInfo.firstPage>1 }">
								<a href
						="<c:url value='/admin/main?currentPage=${pagingInfo.firstPage-1}'/>">
									<img src="${pageContext.request.contextPath }/resources/img/first.JPG" alt="이전블럭">
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
						="<c:url value='/admin/main?currentPage=${i}'/>">
										[${i }]</a>			
								</c:if>
							</c:forEach>
							
							<!-- 다음 블럭으로 이동 -->					
							<c:if test="${pagingInfo.lastPage < pagingInfo.totalPage }">	
									<a href
						="<c:url value='/admin/main?currentPage=${pagingInfo.lastPage+1}'/>">
										<img src="${pageContext.request.contextPath }/resources/img/last.JPG" alt="다음블럭">
									</a>	
							</c:if>					
							<!--  페이지 번호 끝 -->	
						</div>
                                </div>
                                <div class="table-responsive mt-5" id="dev_list">
                                    <table class="table stylish-table no-wrap">
                                        <thead>
                                            <tr>
                                                <!-- <th class="border-top-0" colspan="2">Assigned</th>
                                                <th class="border-top-0">Name</th>
                                                <th class="border-top-0">Budget</th> -->
                                                <th class="border-top-0">PROFILE</th>
	                                            <th class="border-top-0">NAME</th>
	                                            <th class="border-top-0">EMAIL</th>
	                                            <th class="border-top-0">ADDRESS1</th>
	                                            <th class="border-top-0">REGDATE</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%-- <tr>
                                                <td style="width:50px;"><span class="round">S</span></td>
                                                <td class="align-middle">
                                                    <h6>Sunil Joshi</h6><small class="text-muted">Web Designer</small>
                                                </td>
                                                <td class="align-middle">Elite Admin</td>
                                                <td class="align-middle">$3.9K</td>
                                            </tr>
                                            <tr class="active">
                                                <td><span class="round"><img src="<c:url value='/resources/admin_img/users/2.jpg'/>"
                                                            alt="user" width="50"></span></td>
                                                <td class="align-middle">
                                                    <h6>Andrew</h6><small class="text-muted">Project Manager</small>
                                                </td>
                                                <td class="align-middle">Real Homes</td>
                                                <td class="align-middle">$23.9K</td>
                                            </tr>
                                            <tr>
                                                <td><span class="round round-success">B</span></td>
                                                <td class="align-middle">
                                                    <h6>Bhavesh patel</h6><small class="text-muted">Developer</small>
                                                </td>
                                                <td class="align-middle">MedicalPro Theme</td>
                                                <td class="align-middle">$12.9K</td>
                                            </tr>
                                            <tr>
                                                <td><span class="round round-primary">N</span></td>
                                                <td class="align-middle">
                                                    <h6>Nirav Joshi</h6><small class="text-muted">Frontend Eng</small>
                                                </td>
                                                <td class="align-middle">Elite Admin</td>
                                                <td class="align-middle">$10.9K</td>
                                            </tr>
                                            <tr>
                                                <td><span class="round round-warning">M</span></td>
                                                <td class="align-middle">
                                                    <h6>Micheal Doe</h6><small class="text-muted">Content Writer</small>
                                                </td>
                                                <td class="align-middle">Helping Hands</td>
                                                <td class="align-middle">$12.9K</td>
                                            </tr>
                                            <tr>
                                                <td><span class="round round-danger">N</span></td>
                                                <td class="align-middle">
                                                    <h6>Johnathan</h6><small class="text-muted">Graphic</small>
                                                </td>
                                                <td class="align-middle">Digital Agency</td>
                                                <td class="align-middle">$2.6K</td>
                                            </tr> --%>
                                            <c:forEach var="vo" items="${dev_list}">
                                            	<tr>
                                            		<td class="align-middle"><img id="userImg" class="avatar avatar-lg p-1 flex-shrink-0 me-4" src="${pageContext.request.contextPath }/resources/userImg/${userImg}"></label>
	                                            	<td class="align-middle">${vo.name }</td>
		                                            <td class="align-middle">${vo.email }</td>
		                                            <td class="align-middle">${vo.address1 }</td>
		                                            <td class="align-middle">${vo.regDate }</td>
                                            	</tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                    <div class="divPage" style="text-align:center">
								<!-- 페이지 번호 추가 -->		
								<!-- 이전 블럭으로 이동 -->
								<c:if test="${pagingInfo.firstPage>1 }">
									<a href
							="<c:url value='/admin/main?currentPage=${pagingInfo.firstPage-1}'/>">
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
							="<c:url value='/admin/main?currentPage=${i}'/>">
											[${i }]</a>			
									</c:if>
								</c:forEach>
								
								<!-- 다음 블럭으로 이동 -->					
								<c:if test="${pagingInfo.lastPage < pagingInfo.totalPage }">	
										<a href
							="<c:url value='/admin/main?currentPage=${pagingInfo.lastPage+1}'/>">
											<img src="<c:url value='/resources/images/last.JPG'/>" alt="다음블럭">
										</a>	
								</c:if>					
								<!--  페이지 번호 끝 -->	
							</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- Table -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- Recent blogss -->
                <!-- ============================================================== -->
                <div class="row justify-content-center">
                    <!-- Column -->
                    <div class="col-lg-4 col-md-6">
                        <div class="card">
                            <img class="card-img-top img-responsive" src="<c:url value='/resources/admin_img/big/img1.jpg'/>" alt="Card">
                            <div class="card-body">
                                <ul class="list-inline d-flex align-items-center">
                                    <li class="ps-0">20 May 2021</li>
                                    <li class="ms-auto"><a href="javascript:void(0)" class="link">3 Comment</a></li>
                                </ul>
                                <h3 class="font-normal">Featured Hydroflora Pots Garden &amp; Outdoors</h3>
                            </div>
                        </div>
                    </div>
                    <!-- Column -->
                    <!-- Column -->
                    <div class="col-lg-4 col-md-6">
                        <div class="card">
                            <img class="card-img-top img-responsive" src="<c:url value='/resources/admin_img/big/img2.jpg'/>" alt="Card">
                            <div class="card-body">
                                <ul class="list-inline d-flex align-items-center">
                                    <li class="ps-0">20 May 2021</li>
                                    <li class="ms-auto"><a href="javascript:void(0)" class="link">3 Comment</a></li>
                                </ul>
                                <h3 class="font-normal">Featured Hydroflora Pots Garden &amp; Outdoors</h3>
                            </div>
                        </div>
                    </div>
                    <!-- Column -->
                    <!-- Column -->
                    <div class="col-lg-4 col-md-6">
                        <div class="card">
                            <img class="card-img-top img-responsive" src="<c:url value='/resources/admin_img/big/img4.jpg'/>" alt="Card">
                            <div class="card-body">
                                <ul class="list-inline d-flex align-items-center">
                                    <li class="ps-0">20 May 2021</li>
                                    <li class="ms-auto"><a href="javascript:void(0)" class="link">3 Comment</a></li>
                                </ul>
                                <h3 class="font-normal">Featured Hydroflora Pots Garden &amp; Outdoors</h3>
                            </div>
                        </div>
                    </div>
                    <!-- Column -->
                </div>
                <!-- ============================================================== -->
                <!-- Recent blogss -->
                <!-- ============================================================== -->
            </div>
            <!-- ============================================================== -->
            <!-- End Container fluid  -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- footer -->
            <!-- ============================================================== -->
            <footer class="footer text-center">
                © 2021 Monster Admin by <a href="https://www.wrappixel.com/">wrappixel.com</a>
            </footer>
            <!-- ============================================================== -->
            <!-- End footer -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- End Page wrapper  -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- End Wrapper -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->

</body>

</html>