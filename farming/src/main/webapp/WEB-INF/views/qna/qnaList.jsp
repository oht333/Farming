<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp" %>

<script type="text/javascript">
	function pageFunc(curPage){
		$('#frmPage input[name=currentPage]').val(curPage);
		$('#frmPage').submit();
	}
</script>

<body style="padding-top: 72px;">
	<form id="frmPage" method="post" action="<c:url value='/qna/qnaList'/>">
	</form>
    
    <!-- Hero Section-->
    <section class="pt-7 pb-5 d-flex align-items-end dark-overlay bg-cover" style="background-image: url('<c:url value='/resources/img/photo-1522143049013-2519756a52d4.jpg'/>');">
      <div class="container overlay-content">
      <ol class="breadcrumb ps-0  justify-content-center">
          <li class="breadcrumb-item"><a href="<c:url value='../index'/>">Home</a></li>
          <li class="breadcrumb-item"><a href="<c:url value='/qna/qnaMain'/>">메인</a></li>
          <li class="breadcrumb-item active">1 : 1 문의게시판</li>
        </ol>
        <div class="d-flex justify-content-between align-items-start flex-column flex-lg-row align-items-lg-end">
          <div class="text-white mb-4 mb-lg-0">
            <div class="badge badge-pill badge-transparent px-3 py-2 mb-4">Q n A</div>
            <h1 class="text-shadow verified">질문 게시판</h1>
          </div>
          <div class="calltoactions"><a class="btn btn-primary" href="<c:url value='/qna/qnaWrite'/>" >문의글 남기기</a></div>
        </div>
      </div>
    </section>
   <section class="py-6">
    <div class="container-fluid">
      <div class="row px-xl-5">
      <div class="col-lg-2">
            <div class="sticky-top mb-5" style="top: 120px;">
              <div class="sidebar-block">
                <h6 class="sidebar-heading ms-3">거래내역</h6>
                <nav class="nav nav-pills flex-column">
	                <a class="nav-link mb-2" href="<c:url value='/qna/qnaGuest'/>">파밍의 첫걸음</a>
	                <a class="nav-link mb-2" href="<c:url value='/qna/qnaDeveloper'/>">IT 전문가 가이드</a>
	                <a class="nav-link mb-2 active" href="#">1:1 질문게시판</a>
                </nav>
              </div>
            </div>
          </div>
          <div class="col-lg-10 col-xl-8 docs-content" style="margin-left: 100px;">
      <c:if test="${empty list }">
      		<p>데이터가 없습니다.</p>
      </c:if>
      <c:if test="${!empty list }">
      <!--게시판 내용 반복문 시작  -->
      	<c:forEach var="vo" items="${list }">
          <div class="list-group-item list-group-item-action p-4">
            <div class="row">
              <div class="col-9 col-lg-4 align-self-center mb-3 mb-lg-0">
                <div class="d-flex align-items-center mb-1 mb-lg-3">
                  	<h2 class="h5 mb-0">${vo.title }</h2>
                </div>
                <p class="text-sm text-muted">
          		작성자 : ${name }
                </p>
              </div>
              <div class="col-10 ms-auto col-lg-7">
                <div class="row">
                  <div class="col-md-8 py-3">
                    <p class="text-sm mb-0">${vo.content }</p>
                  </div>
                  <div class="col-md-4 text-end py-3">
                    <p class="text-sm">등록 날짜<br>${vo.regdate }</p>
                  </div><a class="stretched-link" href="<c:url value='/qna/qnaDetail?qnaNo=${vo.qnaNo }'/>"></a>
                </div>
              </div>
            </div>
          </div>
          </c:forEach>
          </c:if>

 
 <div class="divPage"; style="text-align:center">
	<!-- 페이지 번호 추가 -->		
	<!-- 이전 블럭으로 이동 -->
	<c:if test="${pagingInfo.firstPage>1 }">
		<a href
="<c:url value='/qna/qnaList?currentPage=${pagingInfo.firstPage-1}&searchCondition=${param.searchCondition}'/>">
			<img src="<c:url value='/resources/img/first.JPG'/>" alt="이전블럭">
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
="<c:url value='/qna/qnaList?currentPage=${i}&searchCondition=${param.searchCondition}'/>">
				[${i }]</a>			
		</c:if>
	</c:forEach>
	
	<!-- 다음 블럭으로 이동 -->					
	<c:if test="${pagingInfo.lastPage < pagingInfo.totalPage }">	
			<a href
="<c:url value='/qna/qnaList?currentPage=${pagingInfo.lastPage+1}&searchCondition=${param.searchCondition}'/>">
				<img src="<c:url value='/resources/img/last.JPG'/>" alt="다음블럭">
			</a>	
	</c:if>					
	<!--  페이지 번호 끝 -->	
	</div>
</div>
 </div>
 </div>
 </section>
   
    
<%@ include file="../inc/bottom.jsp" %>