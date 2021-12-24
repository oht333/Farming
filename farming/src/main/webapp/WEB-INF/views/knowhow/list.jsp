<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE HTML>
<html lang="ko">
<head>
<title>노하우 게시판 - 목록</title>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/mainstyle.css'/>" />
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/clear.css'/>" />
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/formLayout.css'/>" />
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/mystyle.css'/>" />
<script type="text/javascript" src="<c:url value='/resources/js/jquery-3.6.0.min.js'/>"></script>

<script type="text/javascript">	
	$(function(){
		$('.divList .box2 tbody tr').hover(function(){
			$(this).css('background','skyblue');
		}, function(){
			$(this).css('background','');
		});
	});
	
	function pageFunc(curPage){
		$('#frmPage input[name=currentPage]').val(curPage);
		$('#frmPage').submit();
	}
</script>
<style type="text/css">
	body{
		padding:5px;
		margin:5px;
	 }	
</style>	
</head>	
<body>
<!-- 페이징 처리를 위한 form -->
<form id="frmPage" method="post" action="<c:url value='/knowledge/list.do'/>">
	<input type="text" name="currentPage" >
	<input type="text" name="searchCondition" value="${param.searchCondition }">
	<input type="text" name="searchKeyword" value="${param.searchKeyword }">
</form>

<h2>자료실</h2>
<c:if test="${!empty param.searchKeyword }">
	<p>검색어 : ${param.searchKeyword },  
		${pagingInfo.totalRecord} 건 검색되었습니다. </p>
</c:if>

<div class="divList">
<table class="box2"
	 	summary="자료실에 관한 표로써, 번호, 제목, 작성자, 작성일, 조회수에 대한 정보를 제공합니다.">
	<caption>자료실</caption>
	<colgroup>
		<col style="width:10%;" />
		<col style="width:50%;" />
		<col style="width:15%;" />
		<col style="width:15%;" />
		<col style="width:10%;" />		
	</colgroup>
	<thead>
	  <tr>
	    <th scope="col">번호</th>
	    <th scope="col">제목</th>
	    <th scope="col">작성자</th>
	    <th scope="col">작성일</th>
	    <th scope="col">조회수</th>
	  </tr>
	</thead> 
	<tbody>  
	  <c:if test="${empty list }">
	  	<tr>
	  		<td colspan="5">데이터가 없습니다.</td>
	  	</tr>
	  </c:if>	
	  <c:if test="${!empty list }">	  
		  <!--게시판 내용 반복문 시작  -->		  
		  <c:forEach var="vo" items="${list }">
			<tr  style="text-align:center">
				<td>${vo.no}</td>
				<td style="text-align:left">
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
							<img src="<c:url value='/resources/images/re.gif/'/>" >
						</c:if>	
						
						<!-- 파일이 첨부된 경우 파일이미지 보여주기 -->
						<c:if test="${!empty vo.fileName }">
							<img src="<c:url value='/resources/images/file.gif'/>">
						</c:if>
					
						<!-- 제목이 긴 경우 일부만 보여주기 -->
						<a href
			="<c:url value='/knowledge/countUpdate.do?no=${vo.no}'/>">
							<c:if test="${fn:length(vo.title) > 30 }">
								${fn:substring(vo.title,0,30)} ...
							</c:if>
							<c:if test="${fn:length(vo.title) <= 30 }">
								${vo.title}
							</c:if>
						</a>
						
						<!-- 24시간 이내의 글인 경우 new 이미지 보여주기 -->
						<c:if test="${vo.dateTerm<24 }">
							<img src="<c:url value='/resources/images/new.gif'/>">
						</c:if>
					</c:if>
				</td>
				<td>${vo.name}</td>
				<td><fmt:formatDate value="${vo.regdate}" pattern="yyyy-MM-dd"/>
				</td>
				<td>${vo.readcount}</td>		
			</tr>
		  </c:forEach>
		  <!--반복처리 끝  -->
		</c:if>
	</tbody>
</table>	   
</div>
<div class="divPage">
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
<div class="divSearch">
   	<form name="frmSearch" method="post" 
   		action='<c:url value="/knowledge/list.do"/>'>
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
            <option value="name" 
            	<c:if test="${param.searchCondition=='name' }">            	
            		selected="selected"
            	</c:if>
            >작성자</option>
        </select>   
        <input type="text" name="searchKeyword" title="검색어 입력"
        	value="${param.searchKeyword}">   
		<input type="submit" value="검색">
    </form>
</div>

<div class="divBtn">
    <a href='<c:url value="/knowledge/write.do"/>' >글쓰기</a>
</div>

</body>
</html>

<!-- http://localhost:9091/herb/reBoard/list.do -->
