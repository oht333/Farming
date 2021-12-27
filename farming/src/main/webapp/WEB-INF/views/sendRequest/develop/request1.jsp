<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../inc/top.jsp"%>
<style type="text/css">
    .chk #etc:checked ~ .etc_box{display:block}
    .chk .etc_box{display:none}
</style>
<div class="progress rounded-0 sticky-top" style="height: 8px; top: 72px;">
      <div class="progress-bar" role="progressbar" style="width: 33%" aria-valuenow="33" aria-valuemin="0" aria-valuemax="100"></div>
    </div>
    <section class="py-5">
      <div class="container">
        <p class="subtitle text-primary">Let's Farming</p>
        <h1 class="h2 mb-5"> 소프트웨어 개발 <span class="text-muted float-end">Step 1</span>      </h1>
        <form>
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
                      <input class="form-check-input" type="checkbox" id="amenities_0" name="amenities[]">
                      <label class="form-check-label text-muted" for="amenities_0">Windows   </label>
                    </div>
                  </li>
                  <li class="list-inline-item">
                    <div class="form-check">
                      <input class="form-check-input" type="checkbox" id="amenities_1" name="amenities[]">
                      <label class="form-check-label text-muted" for="amenities_1">Mac    </label>
                    </div>
                  </li>
                  <li class="list-inline-item">
                    <div class="form-check">
                      <input class="form-check-input" type="checkbox" id="amenities_2" name="amenities[]">
                      <label class="form-check-label text-muted" for="amenities_2">Linux    </label>
                    </div>
                  </li>
                  <li class="list-inline-item">
                    <div class="form-check">
                      <input class="form-check-input" type="checkbox" id="amenities_3" name="amenities[]">
                      <label class="form-check-label text-muted" for="amenities_3">iOS    </label>
                    </div>
                  </li>
                  <li class="list-inline-item">
                    <div class="form-check">
                      <input class="form-check-input" type="checkbox" id="amenities_4" name="amenities[]">
                      <label class="form-check-label text-muted" for="amenities_4">Android    </label>
                    </div>
                  </li>
                  <li class="list-inline-item">
                    <div class="form-check">
                      <input class="form-check-input" type="checkbox" id="amenities_5" name="amenities[]">
                      <label class="form-check-label text-muted" for="amenities_5">전문가와 상담 후 결정할게요.   </label>
                    </div>
                  </li><br>
                  <li class="list-inline-item">
                    <div class="form-check chk">
                      <input class="form-check-input" type="checkbox" id="etc" name="amenities[]">
                      <label class="form-check-label text-muted" for="etc">기타    </label>
                      <div class="etc_box">
                      	<input class="form-control" type="text" name="etc" title="직접입력인 경우">
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
	                  <input class="form-check-input" type="radio" id="guests_0" name="guests">
	                  <label class="form-check-label" for="guests_0">일반 프로그램</label>
	                </div>
	                <div class="form-check">
	                  <input class="form-check-input" type="radio" id="guests_1" name="guests">
	                  <label class="form-check-label" for="guests_1">게임</label>
	                </div>
	                <div class="form-check">
	                  <input class="form-check-input" type="radio" id="guests_2" name="guests">
	                  <label class="form-check-label" for="guests_2">임베디드</label>
	                </div>
	                <div class="form-check chk">
	                  <input class="form-check-input" type="radio" id="etc" name="amenities[]">
	                  <label class="form-check-label text-muted" for="etc">기타    </label>
	                  <div class="etc_box">
	                  	<input class="form-control" type="text" name="etc" title="직접입력인 경우">
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
	                  <input class="form-check-input" type="radio" id="guests_0" name="guests">
	                  <label class="form-check-label" for="guests_0">상담 후 결정</label>
	                </div>
	                <div class="form-check">
	                  <input class="form-check-input" type="radio" id="guests_1" name="guests">
	                  <label class="form-check-label" for="guests_1">주니어(3년 이하)</label>
	                </div>
	                <div class="form-check">
	                  <input class="form-check-input" type="radio" id="guests_2" name="guests">
	                  <label class="form-check-label" for="guests_2">미드(4~9년)</label>
	                </div>
	                <div class="form-check">
	                  <input class="form-check-input" type="radio" id="guests_2" name="guests">
	                  <label class="form-check-label" for="guests_2">시니어(10년 이상)</label>
	                </div>
	                <div class="form-check chk">
	                  <input class="form-check-input" type="radio" id="etc" name="amenities[]">
	                  <label class="form-check-label text-muted" for="etc">기타    </label>
	                  <div class="etc_box">
	                  	<input class="form-control" type="text" name="etc" title="직접입력인 경우">
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
	                  <input class="form-check-input" type="radio" id="guests_0" name="guests">
	                  <label class="form-check-label" for="guests_0">아이디어만 있음</label>
	                </div>
	                <div class="form-check">
	                  <input class="form-check-input" type="radio" id="guests_1" name="guests">
	                  <label class="form-check-label" for="guests_1">필요 내용 정리되어 있음</label>
	                </div>
	                <div class="form-check">
	                  <input class="form-check-input" type="radio" id="guests_2" name="guests">
	                  <label class="form-check-label" for="guests_2">상세한 기획 문서 있음</label>
	                </div>
	                <div class="form-check">
	                  <input class="form-check-input" type="radio" id="guests_2" name="guests">
	                  <label class="form-check-label" for="guests_2">레이아웃, 디자인 등 구성 완료됨</label>
	                </div>
	                <div class="form-check chk">
	                  <input class="form-check-input" type="radio" id="etc" name="amenities[]">
	                  <label class="form-check-label text-muted" for="etc">기타    </label>
	                  <div class="etc_box">
	                  	<input class="form-control" type="text" name="etc" title="직접입력인 경우">
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
                <label class="form-label" for="form_description">개발내용에 대해서 상세히 알려주세요.</label>
                <textarea class="form-control" name="name" id="form_description" rows="3" aria-describedby="descriptionHelp"></textarea>
              </div>
              <div class="mb-5">
                <label class="form-label" for="form_availability">참고사항이 있으면 적어주세요.</label>
                <textarea class="form-control" name="name" id="form_availability" rows="3" aria-describedby="availabilityHelp"></textarea>
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
	                  <input class="form-check-input" type="radio" id="guests_0" name="guests">
	                  <label class="form-check-label" for="guests_0">협의 가능해요.</label>
	                </div>
	                <div class="form-check">
	                  <input class="form-check-input" type="radio" id="guests_1" name="guests">
	                  <label class="form-check-label" for="guests_1">가능한 빨리 진행하고 싶어요.</label>
	                </div>
	                <div class="form-check">
	                  <input class="form-check-input" type="radio" id="guests_2" name="guests">
	                  <label class="form-check-label" for="guests_2">일주일 이내로 진행하고 싶어요.</label>
	                </div>
	                <div class="form-check">
	                  <input class="form-check-input" type="radio" id="guests_2" name="guests">
	                  <label class="form-check-label" for="guests_2">원하는 날짜가 있어요.</label>
	                </div>
	                <div class="form-check chk">
	                  <input class="form-check-input" type="radio" id="etc" name="amenities[]">
	                  <label class="form-check-label text-muted" for="etc">기타    </label>
	                  <div class="etc_box">
	                  	<input class="form-control" type="text" name="etc" title="직접입력인 경우">
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
                      <input class="form-check-input" type="checkbox" id="amenities_0" name="amenities[]">
                      <label class="form-check-label text-muted" for="amenities_0">어떤 방식이든 상관없어요.   </label>
                    </div>
                  </li>
                  <li class="list-inline-item">
                    <div class="form-check">
                      <input class="form-check-input" type="checkbox" id="amenities_1" name="amenities[]">
                      <label class="form-check-label text-muted" for="amenities_1">온라인 진행 원해요.   </label>
                    </div>
                  </li>
                  <li class="list-inline-item">
                    <div class="form-check">
                      <input class="form-check-input" type="checkbox" id="amenities_2" name="amenities[]">
                      <label class="form-check-label text-muted" for="amenities_2">제가 있는 곳으로 와주세요.  </label>
                    </div>
                  </li>
                  <li class="list-inline-item">
                    <div class="form-check">
                      <input class="form-check-input" type="checkbox" id="amenities_3" name="amenities[]">
                      <label class="form-check-label text-muted" for="amenities_3">전문가가 있는 곳으로 갈게요.   </label>
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
	                <select class="selectpicker form-control" name="sido" id="form_sido" data-style="btn-selectpicker" title=" ">
	                  <option value="type_0">서울          </option>
	                  <option value="type_1">세종            </option>
	                </select>
	               </div>
	              </div>
                <div class="col-md-6">
                   <div class="mb-4">
	                <label class="form-label">시/군/구</label>
	                <select class="selectpicker form-control" name="sigungu" id="form_sigungu" data-style="btn-selectpicker" title=" ">	                  
	                  <option value="type_0">강남구            </option>
	                  <option value="type_1">강동구           </option>
	                </select>
	               </div>
	              </div>
               </div>
            </div>
          </div>
          <!-- 버튼 -->
          <div class="row form-block flex-column flex-sm-row">
            <div class="col text-center text-sm-end"><a class="btn btn-primary px-3" href="${pageContext.request.contextPath }/sendRequest/develop/request2"> FINISH<i class="fa-chevron-right fa ms-2"></i></a></div>
          </div>
        </form>
      </div>
    </section>
    
<%@ include file="../../inc/bottom.jsp"%>