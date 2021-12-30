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
        <form name="frm1" method="post" action="<c:url value='/request/requestWrite/design'/>">
          <div class="row form-block">
            <div class="col-lg-4">
              <h4>어떤 페이지 디자인이 필요하신가요?</h4>
            </div>
            <div class="col-lg-7 ms-auto">
              <div class="mb-4">
                <label class="form-label">원하시는 디자인 종류를 선택하세요.</label>
                <ul class="list-inline mb-0">
                  <li class="list-inline-item">
                    <div class="form-check">
                      <input class="form-check-input" type="checkbox" id="TYPE_0" name="TYPE" value="메인페이지">
                      <label class="form-check-label text-muted" for="TYPE_0" >메인페이지</label>
                    </div>
                  </li>
                  <li class="list-inline-item">
                    <div class="form-check">
                      <input class="form-check-input" type="checkbox" id="TYPE_1" name="TYPE" value="서브페이지">
                      <label class="form-check-label text-muted" for="TYPE_1">서브페이지</label>
                    </div>
                  </li>
                  <li class="list-inline-item">
                    <div class="form-check">
                      <input class="form-check-input" type="checkbox" id="TYPE_2" name="TYPE" value="상세페이지">
                      <label class="form-check-label text-muted" for="TYPE_2">상세페이지</label>
                    </div>
                  </li>
                  <li class="list-inline-item">
                    <div class="form-check">
                      <input class="form-check-input" type="checkbox" id="TYPE_3" name="TYPE" value="광고용 랜딩페이지">
                      <label class="form-check-label text-muted" for="TYPE_3">광고용 랜딩페이지</label>
                    </div>
                  </li>
                  <li class="list-inline-item">
                    <div class="form-check chk">
                      <input class="form-check-input" type="checkbox" id="etc" name="TYPE">
                      <label class="form-check-label text-muted" for="etc">기타    </label>
                      <div class="etc_box">
                      	<input class="form-control" type="text" name="TYPE" title="직접입력인 경우">
                      </div>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
           </div>
           <div class="row form-block">
            <div class="col-lg-4">
              <h4>디자인 범위는 어떻게 되나요?</h4>
            </div>
            <div class="col-lg-7 ms-auto">
              <div class="mb-4">
                <label class="form-label">원하시는 디자인 범위를 선택하세요.</label>
                  <div class="form-check">
	                  <input class="form-check-input" type="radio" id="RANGE_0" name="RANGE" value="신규 디자인">
	                  <label class="form-check-label" for="RANGE_0">신규 디자인</label>
	                </div>
	                <div class="form-check">
	                  <input class="form-check-input" type="radio" id="RANGE_1" name="RANGE" value="기존 디자인 전체 보수">
	                  <label class="form-check-label" for="RANGE_1">기존 디자인 전체 보수</label>
	                </div>
	                <div class="form-check">
	                  <input class="form-check-input" type="radio" id="RANGE_2" name="RANGE" value="기존 디자인 부분 보수">
	                  <label class="form-check-label" for="RANGE_2">기존 디자인 부분 보수</label>
	                </div>
	                <div class="form-check chk">
	                  <input class="form-check-input" type="radio" id="etc" name="RANGE" value="기타">
	                  <label class="form-check-label text-muted" for="etc">기타    </label>
	                  <div class="etc_box">
	                  	<input class="form-control" type="text" name="SCALE" title="직접입력인 경우">
	                  </div>
	                </div>
              </div>
            </div>
           </div>
          <div class="row form-block">
            <div class="col-lg-4">
              <h4>디자인이 필요한 페이지 수를 알려주세요.</h4>
            </div>
            <div class="col-lg-7 ms-auto">
	            <div class="mb-4">
	                <label class="form-label">필요한 디자인 페이지 수를 선택하세요.</label>
	                <div class="form-check">
	                  <input class="form-check-input" type="radio" id="SCALE_0" name="SCALE" value="5페이지 미만">
	                  <label class="form-check-label" for="SCALE_0">5페이지 미만</label>
	                </div>
	                <div class="form-check">
	                  <input class="form-check-input" type="radio" id="SCALE_1" name="SCALE" value="10페이지 미만">
	                  <label class="form-check-label" for="SCALE_1">10페이지 미만</label>
	                </div>
	                <div class="form-check">
	                  <input class="form-check-input" type="radio" id="SCALE_2" name="SCALE" value="20페이지 미만">
	                  <label class="form-check-label" for="SCALE_2">20페이지 미만</label>
	                </div>
	                <div class="form-check">
	                  <input class="form-check-input" type="radio" id="SCALE_3" name="SCALE" value="30페이지 미만">
	                  <label class="form-check-label" for="SCALE_3">30페이지 미만</label>
	                </div>
	                <div class="form-check">
	                  <input class="form-check-input" type="radio" id="SCALE_4" name="SCALE" value="30페이지 이상">
	                  <label class="form-check-label" for="SCALE_4">30페이지 이상</label>
	                </div>
	                <div class="form-check chk">
	                  <input class="form-check-input" type="radio" id="etc" name="SCALE" value="기타">
	                  <label class="form-check-label text-muted" for="etc">기타    </label>
	                  <div class="etc_box">
	                  	<input class="form-control" type="text" name="SCALE" title="직접입력인 경우">
	                  </div>
	                </div>
                </div>
              </div>
          </div>
          <div class="row form-block">
            <div class="col-lg-4">
              <h4>언제까지 작업이 완료되어야 하나요?</h4>
            </div>
            <div class="col-lg-7 ms-auto">
              <div class="mb-4">
	                <label class="form-label">준비하는 프로젝트의 작업 완료 기간을 선택하세요.</label>
	                <div class="form-check">
	                  <input class="form-check-input" type="radio" id="DEADLINE_0" name="DEADLINE" value="협의 가능해요.">
	                  <label class="form-check-label" for="DEADLINE_0">협의 가능해요.</label>
	                </div>
	                <div class="form-check">
	                  <input class="form-check-input" type="radio" id="DEADLINE_1" name="DEADLINE" value="가능한 빨리 진행하고 싶어요.">
	                  <label class="form-check-label" for="DEADLINE_1">가능한 빨리 진행하고 싶어요.</label>
	                </div>
	                <div class="form-check">
	                  <input class="form-check-input" type="radio" id="DEADLINE_2" name="DEADLINE" value="일주일 이내로 진행하고 싶어요.">
	                  <label class="form-check-label" for="DEADLINE_2">일주일 이내로 진행하고 싶어요.</label>
	                </div>
	                <div class="form-check">
	                  <input class="form-check-input" type="radio" id="DEADLINE_3" name="DEADLINE" value="원하는 날짜가 있어요">
	                  <label class="form-check-label" for="DEADLINE_3">원하는 날짜가 있어요.</label>
	                </div>
	                <div class="form-check chk">
	                  <input class="form-check-input" type="radio" id="etc" name="DEADLINE" value="기타">
	                  <label class="form-check-label text-muted" for="etc">기타    </label>
	                  <div class="etc_box">
	                  	<input class="form-control" type="text" name="DEADLINE" title="직접입력인 경우">
	                  </div>
	                </div>
               </div>
            </div>
          </div>
          <div class="row form-block">
            <div class="col-lg-4">
              <h4>고객님이 계신 지역을 선택해주세요.</h4>
              <p class="text-muted text-sm">고수 매칭에 활용됩니다.</p>
            </div>
            <div class="col-lg-7 ms-auto">
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
            </div>
          </div>
          <div class="row form-block">
            <div class="col-lg-4">
              <h4>디자인 관련 희망사항을 알려주세요!</h4>
            </div>
            <div class="col-lg-7 ms-auto">
              <div class="mb-5">
                <label class="form-label" for="form_availability">콘셉트, 참고사항 등 자유롭게 남겨주세요.</label>
                <textarea class="form-control" name="QUESTION" id="form_availability" rows="3" aria-describedby="availabilityHelp"></textarea>
              </div>
            </div>
          </div>
                   
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