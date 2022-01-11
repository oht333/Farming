<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp" %>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/style.knowhowes.css">
<script type="text/javascript" src="<c:url value='/resources/js/jquery-3.6.0.min.js'/>"></script>

<script type="text/javascript">

function pageFunc(curPage){
	$('#frmPage input[name=currentPage]').val(curPage);
	$('#frmPage').submit();
}

</script>


<body style="padding-top: 72px;">



<form id="frmPage" method="post" action="<c:url value='/knowhow/list'/>">
	<input type="hidden" name="currentPage" >
	<input type="hidden" name="searchCondition" value="${param.searchCondition }">
	<input type="hidden" name="searchKeyword" value="${param.searchKeyword }">
</form> 

<c:if test="${!empty param.searchKeyword }">
	<p>검색어 : ${param.searchKeyword },  
		${pagingInfo.totalRecord} 건 검색되었습니다. </p>
</c:if>
   
    <!-- Hero Section-->
    <section class="pt-7 pb-5 d-flex align-items-end dark-overlay bg-cover" style="background-image: url('img/photo/restaurant-1515164783716-8e6920f3e77c.jpg');">
      <div class="container overlay-content">
        <div class="d-flex justify-content-between align-items-start flex-column flex-lg-row align-items-lg-end">
          <div class="text-white mb-4 mb-lg-0">
            <div class="badge badge-pill badge-transparent px-3 py-2 mb-4">Knowledge</div>
            <h1 class="text-shadow verified">노하우 게시판</h1>
          </div>
          <div class="calltoactions"><a class="btn btn-primary" href="<c:url value='/knowhow/write'/>" >글쓰기</a></div>
        </div>
      </div>
    </section>
    
    
   
    <div class="container">
      <div class="list-group shadow mb-5">
      <c:if test="${empty list }">
      		<p>데이터가 없습니다.</p>
      </c:if>
      <c:if test="${!empty list }">
      	<c:forEach var="vo" items="${list }">
          <div class="list-group-item list-group-item-action p-4">
            <div class="row">
              <div class="col-9 col-lg-4 align-self-center mb-3 mb-lg-0">
                <div class="d-flex align-items-center mb-1 mb-lg-3">
                  <h2 class="h5 mb-0">${vo.title }</h2>
                </div>
                <p class="text-sm text-muted">${name }</p><a class="stretched-link" href="user-messages-detail.html"></a>
              </div>
              <div class="col-10 ms-auto col-lg-7">
                <div class="row">
                  <div class="col-md-8 py-3">
                    <p class="text-sm mb-0">
						 <%-- ${vo.content } --%> 					
 							<c:if test="${fn:length(vo.content) > 30 }">
								내용 확인<%-- ${fn:substring(vo.content,0,30)} ... --%>
							</c:if>
							<c:if test="${fn:length(vo.content) <= 30 }">
								${vo.content}
							</c:if> 
                  	</p>
                  </div>
                  <div class="col-md-4 text-end py-3">
                    <p class="text-sm"><fmt:formatDate value="${vo.regdate}" pattern="yyyy-MM-dd"/></p>
                  </div><a class="stretched-link" href="detail?knowhowNo=${vo.knowhowNo}"></a>
                </div>
              </div>
            </div>
          </div>
          </c:forEach>
          </c:if>
 </div>
         
<%--         <div class="divBtn">
		    <a href='<c:url value="/knowhow/write"/>' >글쓰기</a>
		</div> --%>
 
 </div>


<div class="divPage t_center">
	<!-- 페이지 번호 추가 -->		
	<!-- 이전 블럭으로 이동 -->
	<c:if test="${pagingInfo.firstPage>1 }">
		<%-- <a href
="<c:url value='/reBoard/list.do?currentPage=${pagingInfo.firstPage-1}&searchCondition=${param.searchCondition}&searchKeyword=${param.searchKeyword}'/>"> --%>
		<a href="#" onclick="pageFunc(${pagingInfo.firstPage-1})">
			<img src="<c:url value='/resources/images/first.JPG'/>" alt="이전블럭">
		</a>	
	</c:if>		
						
	<!-- [1][2][3][4][5][6][7][8][9][10] -->
	<c:forEach var="i" begin="${pagingInfo.firstPage}" end="${pagingInfo.lastPage }">
		<c:if test="${i==pagingInfo.currentPage }">
			<span style="color:blue;font-weight: bold;font-size: 1em">
				${i}</span>			
		</c:if>	
		<c:if test="${i!=pagingInfo.currentPage }">	
				<%-- <a href
="<c:url value='/reBoard/list.do?currentPage=${i}&searchCondition=${param.searchCondition}&searchKeyword=${param.searchKeyword}'/>"> --%>
				
				<a href="#" onclick="pageFunc(${i})">
				[${i }]</a>			
		</c:if>
	</c:forEach>
	
	<!-- 다음 블럭으로 이동 -->					
	<c:if test="${pagingInfo.lastPage < pagingInfo.totalPage }">	
			<%-- <a href
="<c:url value='/reBoard/list.do?currentPage=${pagingInfo.lastPage+1}&&searchCondition=${param.searchCondition}&searchKeyword=${param.searchKeyword}'/>"> --%>
			<a href="#" onclick="pageFunc(${pagingInfo.lastPage+1})">
				<img src="<c:url value='/resources/images/last.JPG'/>" alt="다음블럭">
			</a>	
	</c:if>					
	<!--  페이지 번호 끝 -->	
</div>

<%-- <div class="divSearch">
   	<form name="frmSearch" method="post" 
   		action='<c:url value="/knowhow/list"/>'>
        <select name="searchCondition">
            <option value="title" 
            	<c:if test="${param.searchCondition=='title' }">            	
            		selected="selected"
            	</c:if>
            >제목</option>
            <option value="content" 
            	<c:if test="${param.searchCondition=='content' }">            	
            		selected="selected"
            	</c:if>
            >내용</option>
        </select>   
        <input type="text" name="searchKeyword" title="검색어 입력"
        	value="${param.searchKeyword}">   
		<input type="submit" value="검색">
    </form>
</div>  --%>
   
    
<%@ include file="../inc/bottom.jsp" %>