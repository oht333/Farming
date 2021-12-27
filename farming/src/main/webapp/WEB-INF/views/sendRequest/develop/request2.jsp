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
              <h4>원하는 숙련도의 개발자가 있으신가요?</h4>
            </div>
            <div class="col-lg-7 ms-auto">
              <div class="mb-4">
                <label class="form-label">원하시는 숙련도의 개발자를 선택하세요.</label>
                <ul class="list-inline mb-0">
                  <li class="list-inline-item">
                    <div class="form-check">
                      <input class="form-check-input" type="checkbox" id="amenities_0" name="amenities[]">
                      <label class="form-check-label text-muted" for="amenities_0">상담 후 결정   </label>
                    </div>
                  </li>
                  <li class="list-inline-item">
                    <div class="form-check">
                      <input class="form-check-input" type="checkbox" id="amenities_1" name="amenities[]">
                      <label class="form-check-label text-muted" for="amenities_1">주니어(3년 이하)    </label>
                    </div>
                  </li>
                  <li class="list-inline-item">
                    <div class="form-check">
                      <input class="form-check-input" type="checkbox" id="amenities_2" name="amenities[]">
                      <label class="form-check-label text-muted" for="amenities_2">미드(4~9년)    </label>
                    </div>
                  </li>
                  <li class="list-inline-item">
                    <div class="form-check">
                      <input class="form-check-input" type="checkbox" id="amenities_3" name="amenities[]">
                      <label class="form-check-label text-muted" for="amenities_3">시니어(10년 이상)    </label>
                    </div>
                  </li>
                  <br>
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
          <div class="row form-block flex-column flex-sm-row">
            <div class="col text-center text-sm-start"><a class="btn btn-link text-muted" href="${pageContext.request.contextPath }/sendRequest/develop/request1"> <i class="fa-chevron-left fa me-2"></i>Back</a>
            </div>
            <div class="col text-center text-sm-end"><a class="btn btn-primary px-3" href="${pageContext.request.contextPath }/sendRequest/develop/request3"> Next step<i class="fa-chevron-right fa ms-2"></i></a></div>
          </div>
        </form>
      </div>
    </section>
    
<%@ include file="../../inc/bottom.jsp"%>