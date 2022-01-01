<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp"%>
<script type="text/javascript" 
	src="<c:url value='/resources/js/jquery-3.6.0.min.js'/>"></script>

<style>
/* .chk .etc:checked ~ .etc_box{display:block}
.chk .etc_box{display:none} */
</style>
<div class="progress rounded-0 sticky-top" style="height: 8px; top: 66px;">
      <div class="progress-bar" role="progressbar" style="width: 33%" aria-valuenow="33" aria-valuemin="0" aria-valuemax="100"></div>
    </div>
    <section class="py-5">
      <div class="container">
        <p class="subtitle text-primary">Let's Farming</p>
        <h1 class="h2 mb-5">웹 디자인 <span class="text-muted float-end">Step 1</span></h1>
        <c:if test="${main eq '디자인' }">
        	<form name="frm1" method="post" action="<c:url value='/request/requestWrite/design'/>">
        </c:if>
        <c:if test="${main eq '개발' }">
        	<form name="frm1" method="post" action="<c:url value='/request/requestWrite/develop'/>">
        </c:if>
	     <c:forEach var="map" items="${qList }">
          <div class="row form-block">
            <div class="col-lg-4">
              <h4>${map['QUESTION']}</h4>
            </div>
            <div class="col-lg-7 ms-auto">
                <label class="form-label">${map['INFO']}</label>
     			 <c:set var="idx" value="0"/>
                 <c:forEach var="vo" items="${aList }">
                   <c:if test="${vo.qNo eq map['Q_NO'] }">
                    <c:if test="${vo.type=='checkbox' || vo.type=='radio'}">
                       <c:choose>
                         <c:when test="${vo.answer=='기타' }">
	                       <div class="form-check chk">
	                         <input class="form-check-input etc" type="${vo.type}" id="${map['Q_CLASS']}_${idx}" name="${map['Q_CLASS']}" value="${vo.answer }">
	                         <label class="form-check-label text-muted" for="${map['Q_CLASS']}_${idx}" >${vo.answer }</label>
		                    <div class="etc_box">
		                    	<c:if test="${field.name == 'FIELD3'}">checked="checked"</c:if>
		                    </div>
	                       </div>
	                       <script type="text/javascript">
							$(function(){    
							    var checkArea = $('.chk');
							    console.log(${idx});
							    $(checkArea).each(function(i , item){            
							        $(item).find('.etc').on('click' , function(){
							        	
							            var check = true,
							                inputArea = $(this).siblings('.etc_box');    
							
							            if($(this).is(':checked') == check && $(i==${idx})){
							            	$('.form-check').css('background','black');
							                $(inputArea).html("<input type='text' name='${map['Q_CLASS']}' value='' class='etc_box form-control' placeholder='기타입력'>");
							            } else {
							                $(inputArea).find('.etc_box').remove();
							            }
							        });
							    });
							});
							</script>
                         </c:when>
                         <c:otherwise>
	                       <div class="form-check">
	                         <input class="form-check-input" type="${vo.type}" id="${map['Q_CLASS']}_${idx}" name="${map['Q_CLASS']}" value="${vo.answer }">
	                         <label class="form-check-label text-muted" for="${map['Q_CLASS']}_${idx}" >${vo.answer }</label>
    	                   </div>
                         </c:otherwise>
                         </c:choose>
                     </c:if>
                     <c:if test="${vo.type=='location' }">
                     <div class="row">
                      <div class="col-md-6">
                     	<div class="mb-4">
			                <label class="form-label">시/도</label>
			                <div class="select_box">
				                <select class="test_select form-control" name="LOCATION1" id="addressDo1" data-style="btn-selectpicker" title="&nbsp;">	                
				                </select>
			                </div>
			               </div>
			              </div>
		                <div class="col-md-6">
		                   <div class="mb-4">
			                <label class="form-label">시/군/구</label>
			                <div class="select_box">
			                	<select class="test_select form-control" name="LOCATION2" id="addressSiGunGu1" data-style="btn-selectpicker" title="&nbsp;">	                  	                	
			               		</select>
			                </div>
			               </div>
			              </div>
			             </div>
                     </c:if>
                     <c:if test="${vo.type=='textarea' }">
                     	<div class="mb-5">
			                <textarea class="form-control" name="QUESTION" id="form_availability" rows="3" aria-describedby="availabilityHelp"></textarea>
			              </div>
                     </c:if>
                    </c:if>
                   <c:set var="idx" value="${idx+1 }"/>
                   
                 </c:forEach>
            </div>
            </div>
	      </c:forEach>
                   
          <!-- 버튼 -->
          <div class="row form-block flex-column flex-sm-row">
            <div class="col text-center text-sm-end"><button type="submit" class="btn btn-primary px-3"> 작성완료<i class="fa-chevron-right fa ms-2"></i></button></div>
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