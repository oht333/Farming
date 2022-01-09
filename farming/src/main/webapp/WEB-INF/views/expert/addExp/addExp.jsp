<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../inc/top.jsp"%>
<style>
input[type=radio]:checked+label {
	background: #2CCE8D;
	color: white;
	border: 1px solid #dddddd;
	border-radius: 10px;
}
</style>
<script type="text/javascript">
	$(function() {
		$('#sub').click(function(){
			if($('#intro').val().length < 1){
				alert('한줄소개를 입력하세요');
				$('#intro').focus();
				event.preventDefault();
			} else if($('#detailIntro').val().length < 1){
				alert('상세소개를 입력하세요');
				$('#detailIntro').focus();
				event.preventDefault();
			} else if($("input:radio[name='staff']").is(":checked") == false){
				alert('직원수를 선택하세요');
				event.preventDefault();
			} else if($("input:radio[name='career']").is(":checked") == false){
				alert('경력을 선택하세요');
				event.preventDefault();
			}
		})
	});
</script>
<div class="progress rounded-0 sticky-top" style="height: 8px; top: 72px;">
	<div class="progress-bar" role="progressbar" style="width: 30%" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100"></div>
</div>
<section class="py-5">
	<div class="container">
		<p class="subtitle text-primary">추가정보 입력</p>
		<h1 class="h2 mb-5">
			Inroduce <span class="text-muted float-end">Step 1</span>
		</h1>
		<form action="<c:url value='/expert/addExp/addExpPost'/>" method="post">
			<input type="hidden" name="expertNo" value="${expNo }">
			<div class="row form-block">
				<div class="col-lg-4">
					<h4>간편 소개</h4>
					<p class="text-muted text-sm">사용자에게 당신을 어필하세요</p>
				</div>
				<div class="col-lg-7 ms-auto">
					<div class="mb-4">
		                <label class="form-label" for="intro">한줄소개</label>
		                <input class="form-control" name="intro" id="intro" placeholder="한줄소개" type="text">
		            </div>
				</div>
			</div>
			<div class="row form-block">
				<div class="col-lg-4">
					<h4>서비스 상세소개</h4>
					<p class="text-muted text-sm">당신의 서비스를 소개하세요</p>
				</div>
				<div class="col-lg-7 ms-auto">
					<div class="mb-4">
		                <label class="form-label" for="intro">서비스 상세소개</label>
		                <input class="form-control" name="detailIntro" id="detailIntro" placeholder="서비스상세소개" type="text">
		            </div>
				</div>
			</div>
			<div class="row form-block">
				<div class="col-lg-4">
					<h4>보유 자격증</h4>
					<p class="text-muted text-sm">보유자격증 유무</p>
				</div>
				<div class="col-lg-7 ms-auto">
					<div class="mb-4">
		                <label class="form-label" for="intro">하나의 자격증을 입력하세요</label>
		                <input class="form-control" name="certificate" id="certificate" placeholder="자격증(선택)" type="text">
		            </div>
				</div>
			</div>
			<div class="row form-block">
				<div class="col-lg-4">
					<h4>직원 수</h4>
					<p class="text-muted text-sm">사내 직원 수</p>
				</div>
				<div class="col-lg-7 ms-auto">
		               <p>함께 일하는 동료들의 수를 선택하세요</p>
		               <div class="col-lg-4 d-grid" style="float: left; border: 1px solid #dddddd; margin: 5px; border-radius: 10px; text-align: center;">
		                  <input type="radio" value="1명이상" name="staff" id="staff1" style="display: none"> 
		                  <label for="staff1" class="form-control">1명이상(본인포함)</label>
		               </div>
		               <div class="col-lg-4 d-grid" style="float: left; border: 1px solid #dddddd; margin: 5px; border-radius: 10px; text-align: center;">
		                  <input type="radio" value="3명이상" name="staff" id="staff2" style="display: none"> 
		                  <label for="staff2" class="form-control">3명이상</label>
		               </div>
		               <div class="col-lg-4 d-grid" style="float: left; border: 1px solid #dddddd; margin: 5px; border-radius: 10px; text-align: center;">
		                  <input type="radio" value="5명이상" name="staff" id="staff3" style="display: none"> 
		                  <label for="staff3" class="form-control">5명이상</label>
		               </div>
		               <div class="col-lg-4 d-grid" style="float: left; border: 1px solid #dddddd; margin: 5px; border-radius: 10px; text-align: center;">
		                  <input type="radio" value="7명이상" name="staff" id="staff4" style="display: none"> 
		                  <label for="staff4" class="form-control">7명이상</label>
		               </div>
		               <div class="col-lg-4 d-grid" style="float: left; border: 1px solid #dddddd; margin: 5px; border-radius: 10px; text-align: center;">
		                  <input type="radio" value="10명이상" name="staff" id="staff5" style="display: none"> 
		                  <label for="staff5" class="form-control">10명이상</label>
		               </div>
	            	</div>
			</div>
			<div class="row form-block">
				<div class="col-lg-4">
					<h4>경력 선택</h4>
					<p class="text-muted text-sm">전문성을 어필하세요</p>
				</div>
		            <div class="col-lg-7 ms-auto">
		               <p>경력을 선택하세요.</p>
		               <div class="col-lg-4 d-grid" style="float: left; border: 1px solid #dddddd; margin: 5px; border-radius: 10px; text-align: center;">
		                  <input type="radio" value="신입" name="career" id="career1" style="display: none"> 
		                  <label for="career1" class="form-control">신입</label>
		               </div>
		               <div class="col-lg-4 d-grid" style="float: left; border: 1px solid #dddddd; margin: 5px; border-radius: 10px; text-align: center;">
		                  <input type="radio" value="1년이상" name="career" id="career2" style="display: none"> 
		                  <label for="career2" class="form-control">1년이상</label>
		               </div>
		               <div class="col-lg-4 d-grid" style="float: left; border: 1px solid #dddddd; margin: 5px; border-radius: 10px; text-align: center;">
		                  <input type="radio" value="3년이상" name="career" id="career3" style="display: none"> 
		                  <label for="career3" class="form-control">3년이상</label>
		               </div>
		               <div class="col-lg-4 d-grid" style="float: left; border: 1px solid #dddddd; margin: 5px; border-radius: 10px; text-align: center;">
		                  <input type="radio" value="5년이상" name="career" id="career4" style="display: none"> 
		                  <label for="career4" class="form-control">5년이상</label>
		               </div>
		               <div class="col-lg-4 d-grid" style="float: left; border: 1px solid #dddddd; margin: 5px; border-radius: 10px; text-align: center;">
		                  <input type="radio" value="7년이상" name="career" id="career5" style="display: none"> 
		                  <label for="career5" class="form-control">7년이상</label>
		               </div>
	            	</div>
			</div>
			<div class="row form-block flex-column flex-sm-row">
				<div class="col text-center text-sm-end" id="submit">
					<input type="submit" id="sub" value="완료" class="btn btn-primary px-3">
				</div>
			</div>
		</form>
	</div>
</section>
<%@ include file="../../inc/bottom.jsp"%>