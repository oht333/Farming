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
    <section class="pt-7 pb-5 d-flex align-items-end dark-overlay bg-cover" style="background-image: url('img/photo/restaurant-1515164783716-8e6920f3e77c.jpg');">
      <div class="container overlay-content">
      <ol class="breadcrumb ps-0  justify-content-center">
          <li class="breadcrumb-item"><a href="index.html">Home</a></li>
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
   
    <div class="container">
      <div class="list-group shadow mb-5">
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
                	<!--답변이 있는 원본글이 삭제처리(delFlag='Y')된 경우  
					제목을 회색으로 보여주고 링크를 걸지 않는다  -->
					<c:if test="${vo.delFlag=='Y' }">
						<span style="color: gray">삭제된 글입니다.</span>
					</c:if>
					<c:if test="${vo.delFlag !='Y' }">	
					<!-- 답변인 경우 단계별로 re 이미지 보여주기 -->
						<c:if test="${vo.step>0 }">
							<c:forEach var="i" begin="1" end="${vo.step }">
								&nbsp;
							</c:forEach>
							<img src="<c:url value='/resources/img/re.gif/'/>" >
						</c:if>
					
                  	<h2 class="h5 mb-0">${vo.title }</h2>
                  	
                  	</c:if>
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
 </div>
 </div>
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
 
   
    
<%@ include file="../inc/bottom.jsp" %>