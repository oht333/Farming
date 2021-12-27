<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../inc/top.jsp"%>
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
        <h1 class="h2 mb-5"> 소프트웨어 개발 <span class="text-muted float-end">Step 1</span>      </h1>
        <form name="frm1" method="post" action="<c:url value='/sendRequest/develop/request_success'/>">
          <div class="row form-block">
            <div class="col-lg-4">
              <h4>어떤 플랫폼을 원하시나요?</h4>
<!--               <p class="text-muted text-sm">원하시는 개발 플랫폼을 선택하세요.</p> -->
            </div>
            <div class="col-lg-7 ms-auto">
              <div class="mb-4">
                <label class="form-label">원하시는 소프트웨어 개발 플랫폼을 모두 선택하세요.</label>
                <ul class="list-inline mb-0">
                  <li class="list-inline-item">
                    <div class="form-check">
                      <input class="form-check-input" type="checkbox" id="windows" name="PLATFORM">
                      <label class="form-check-label text-muted" for="windows">Windows   </label>
                    </div>
                  </li>
                  <li class="list-inline-item">
                    <div class="form-check">
                      <input class="form-check-input" type="checkbox" id="Mac" name="PLATFORM">
                      <label class="form-check-label text-muted" for="Mac">Mac    </label>
                    </div>
                  </li>
                  <li class="list-inline-item">
                    <div class="form-check">
                      <input class="form-check-input" type="checkbox" id="Linux" name="PLATFORM">
                      <label class="form-check-label text-muted" for="Linux">Linux    </label>
                    </div>
                  </li>
                  <li class="list-inline-item">
                    <div class="form-check">
                      <input class="form-check-input" type="checkbox" id="iOS" name="PLATFORM">
                      <label class="form-check-label text-muted" for="iOS">iOS    </label>
                    </div>
                  </li>
                  <li class="list-inline-item">
                    <div class="form-check">
                      <input class="form-check-input" type="checkbox" id="Android" name="PLATFORM">
                      <label class="form-check-label text-muted" for="Android">Android    </label>
                    </div>
                  </li>
                  <li class="list-inline-item">
                    <div class="form-check">
                      <input class="form-check-input" type="checkbox" id="Counseling" name="PLATFORM">
                      <label class="form-check-label text-muted" for="Counseling">전문가와 상담 후 결정할게요.   </label>
                    </div>
                  </li><br>
                  <li class="list-inline-item">
                    <div class="form-check chk">
                      <input class="form-check-input" type="checkbox" id="etc" name="PLATFORM">
                      <label class="form-check-label text-muted" for="etc">기타    </label>
                      <div class="etc_box">
                      	<input class="form-control" type="text" name="PLATFORM" title="직접입력인 경우">
                      </div>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
          <div class="row form-block">
            <div class="col-lg-4">
              <h4>어떤 종류의 개발을 원하시나요?</h4>
            </div>
            <div class="col-lg-7 ms-auto">
	            <div class="mb-4">
	                <label class="form-label">원하시는 종류의 개발을 선택하세요.</label>
	                <div class="form-check">
	                  <input class="form-check-input" type="radio" id="TYPE_0" name="TYPE">
	                  <label class="form-check-label" for="TYPE_0">일반 프로그램</label>
	                </div>
	                <div class="form-check">
	                  <input class="form-check-input" type="radio" id="TYPE_1" name="TYPE">
	                  <label class="form-check-label" for="TYPE_1">게임</label>
	                </div>
	                <div class="form-check">
	                  <input class="form-check-input" type="radio" id="TYPE_2" name="TYPE">
	                  <label class="form-check-label" for="TYPE_2">임베디드</label>
	                </div>
	                <div class="form-check chk">
	                  <input class="form-check-input" type="radio" id="etc" name="TYPE">
	                  <label class="form-check-label text-muted" for="etc">기타    </label>
	                  <div class="etc_box">
	                  	<input class="form-control" type="text" name="TYPE" title="직접입력인 경우">
	                  </div>
	                </div>
                </div>
              </div>
          </div>
          <div class="row form-block">
            <div class="col-lg-4">
              <h4>원하는 숙련도의 개발자가 있으신가요?</h4>
            </div>
            <div class="col-lg-7 ms-auto">
              <div class="mb-4">
	                <label class="form-label">원하시는 숙련도의 개발자를 선택하세요.</label>
	                <div class="form-check">
	                  <input class="form-check-input" type="radio" id="CAREER_0" name="CAREER">
	                  <label class="form-check-label" for="CAREER_0">상담 후 결정</label>
	                </div>
	                <div class="form-check">
	                  <input class="form-check-input" type="radio" id="CAREER_1" name="CAREER">
	                  <label class="form-check-label" for="CAREER_1">주니어(3년 이하)</label>
	                </div>
	                <div class="form-check">
	                  <input class="form-check-input" type="radio" id="CAREER_2" name="CAREER">
	                  <label class="form-check-label" for="CAREER_2">미드(4~9년)</label>
	                </div>
	                <div class="form-check">
	                  <input class="form-check-input" type="radio" id="CAREER_3" name="CAREER">
	                  <label class="form-check-label" for="CAREER_3">시니어(10년 이상)</label>
	                </div>
	                <div class="form-check chk">
	                  <input class="form-check-input" type="radio" id="etc" name="CAREER">
	                  <label class="form-check-label text-muted" for="etc">기타    </label>
	                  <div class="etc_box">
	                  	<input class="form-control" type="text" name="CAREER" title="직접입력인 경우">
	                  </div>
	                </div>
               </div>
            </div>
          </div>
          <div class="row form-block">
            <div class="col-lg-4">
              <h4>기획은 어느정도 되어있나요?</h4>
            </div>
            <div class="col-lg-7 ms-auto">
              <div class="mb-4">
	                <label class="form-label">준비하는 프로젝트의 기획 단계를 선택하세요.</label>
	                <div class="form-check">
	                  <input class="form-check-input" type="radio" id="STEP_0" name="STEP">
	                  <label class="form-check-label" for="STEP_0">아이디어만 있음</label>
	                </div>
	                <div class="form-check">
	                  <input class="form-check-input" type="radio" id="STEP_1" name="STEP">
	                  <label class="form-check-label" for="STEP_1">필요 내용 정리되어 있음</label>
	                </div>
	                <div class="form-check">
	                  <input class="form-check-input" type="radio" id="STEP_2" name="STEP">
	                  <label class="form-check-label" for="STEP_2">상세한 기획 문서 있음</label>
	                </div>
	                <div class="form-check">
	                  <input class="form-check-input" type="radio" id="STEP_3" name="STEP">
	                  <label class="form-check-label" for="STEP_3">레이아웃, 디자인 등 구성 완료됨</label>
	                </div>
	                <div class="form-check chk">
	                  <input class="form-check-input" type="radio" id="etc" name="STEP">
	                  <label class="form-check-label text-muted" for="etc">기타    </label>
	                  <div class="etc_box">
	                  	<input class="form-control" type="text" name="STEP" title="직접입력인 경우">
	                  </div>
	                </div>
               </div>
            </div>
          </div>
          <div class="row form-block">
            <div class="col-lg-4">
              <h4>참고사항</h4>
            </div>
            <div class="col-lg-7 ms-auto">
              <div class="mb-5">
                <label class="form-label" for="form_availability">개발내용이나 참고사항이 있으면 적어주세요.</label>
                <textarea class="form-control" name="REFERENCE" id="form_availability" rows="3" aria-describedby="availabilityHelp"></textarea>
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
	                  <input class="form-check-input" type="radio" id="DEADLINE_0" name="DEADLINE">
	                  <label class="form-check-label" for="DEADLINE_0">협의 가능해요.</label>
	                </div>
	                <div class="form-check">
	                  <input class="form-check-input" type="radio" id="DEADLINE_1" name="DEADLINE">
	                  <label class="form-check-label" for="DEADLINE_1">가능한 빨리 진행하고 싶어요.</label>
	                </div>
	                <div class="form-check">
	                  <input class="form-check-input" type="radio" id="DEADLINE_2" name="DEADLINE">
	                  <label class="form-check-label" for="DEADLINE_2">일주일 이내로 진행하고 싶어요.</label>
	                </div>
	                <div class="form-check">
	                  <input class="form-check-input" type="radio" id="DEADLINE_2" name="gueDEADLINEsts">
	                  <label class="form-check-label" for="DEADLINE_2">원하는 날짜가 있어요.</label>
	                </div>
	                <div class="form-check chk">
	                  <input class="form-check-input" type="radio" id="etc" name="DEADLINE">
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
              <h4>어떻게 진행하기 원하시나요?</h4>
            </div>
            <div class="col-lg-7 ms-auto">
              <div class="mb-4">
                <label class="form-label">온라인/오프라인 등 원하시는 업무 진행방식을 선택하세요.</label>
                <ul class="list-inline mb-0">
                  <li class="list-inline-item">
                    <div class="form-check">
                      <input class="form-check-input" type="checkbox" id="WORKTYPE_0" name="WORKTYPE">
                      <label class="form-check-label text-muted" for="WORKTYPE_0">어떤 방식이든 상관없어요.   </label>
                    </div>
                  </li>
                  <li class="list-inline-item">
                    <div class="form-check">
                      <input class="form-check-input" type="checkbox" id="WORKTYPE_1" name="WORKTYPE">
                      <label class="form-check-label text-muted" for="WORKTYPE_1">온라인 진행 원해요.   </label>
                    </div>
                  </li>
                  <li class="list-inline-item">
                    <div class="form-check">
                      <input class="form-check-input" type="checkbox" id="WORKTYPE_2" name="WORKTYPE">
                      <label class="form-check-label text-muted" for="WORKTYPE_2">제가 있는 곳으로 와주세요.  </label>
                    </div>
                  </li>
                  <li class="list-inline-item">
                    <div class="form-check">
                      <input class="form-check-input" type="checkbox" id="WORKTYPE_3" name="WORKTYPE">
                      <label class="form-check-label text-muted" for="WORKTYPE_3">전문가가 있는 곳으로 갈게요.   </label>
                    </div>
                  </li>
                 </ul>
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
          <!-- 버튼 -->
          <div class="row form-block flex-column flex-sm-row">
            <div class="col text-center text-sm-end"><a class="btn btn-primary px-3" type="submit"> FINISH<i class="fa-chevron-right fa ms-2"></i></a></div>
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

<%@ include file="../../inc/bottom.jsp"%>