<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp"%>
<style type="text/css">
    .chk #etc:checked ~ .etc_box{display:block}
    .chk .etc_box{display:none}
</style>

<div class="progress rounded-0 sticky-top" style="height: 8px; top: 66px;">
      <div class="progress-bar" role="progressbar" style="width: 33%" aria-valuenow="33" aria-valuemin="0" aria-valuemax="100"></div>
    </div>
    <section class="py-5">
      <div class="container">
        <p class="subtitle text-primary">Let's Farming</p>
        <h1 class="h2 mb-5">웹 디자인 <span class="text-muted float-end">Step 1</span>      </h1>
        <form name="frm1" method="post" action="<c:url value='/request/requestWrite'/>">
	     <c:forEach var="map" items="${qList }">
          <div class="row form-block">
            <div class="col-lg-4">
              <h4>${map['QUESTION']}</h4>
            </div>
            <div class="col-lg-7 ms-auto">
              <div class="mb-4">
                <label class="form-label">${map['INFO']}</label>
                <ul class="list-inline mb-0">
     			 <c:set var="idx" value="0"/>
                 <c:forEach var="vo" items="${aList }">
                   <c:if test="${vo.qNo eq map['Q_NO'] }">
                     <li class="list-inline-item">
                       <div class="form-check">
                         <input class="form-check-input" type="${vo.type}" id="${map['Q_CLASS']}_${idx}" name="${map['Q_CLASS']}" value="${vo.answer }">
                         <label class="form-check-label text-muted" for="${map['Q_CLASS']}_${idx}" >${vo.answer }</label>
                       </div>
                     </li>
                    </c:if>
                   <c:set var="idx" value="${idx+1 }"/>
                 </c:forEach>
                </ul>
              </div>
            </div>
           </div>
	      </c:forEach>
                   
          <!-- 버튼 -->
          <div class="row form-block flex-column flex-sm-row">
            <div class="col text-center text-sm-end"><button type="submit" class="btn btn-primary px-3"> FINISH<i class="fa-chevron-right fa ms-2"></i></button></div>
          </div>
        </form>
      </div>
    </section>

<style>
	.select_box{
	    		position:relative;
	}
	.select_box::after{
		content:'';
		display:block;
		position:absolute;
		right:10px;
		top:50%;
		transform:translateY(-50%);
		width:18px;
		height:13px;
	     	background: url(${pageContext.request.contextPath }/resources/img/arrow-down-sign-to-navigate.png) 96% center no-repeat;
		background-size: 10px;    		
	}    		
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/address1.js"></script>

<%@ include file="../inc/bottom.jsp"%>