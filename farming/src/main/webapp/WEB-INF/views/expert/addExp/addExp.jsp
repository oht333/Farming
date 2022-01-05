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
		var text = $('#chk').val();
		$('#prev').click(function(){
			location.href="<c:url value='/index'/>";
		});
		$('#div1').each(function(idx, item){
			$(item).find('#OS6').on('click', function(){
				var check = true,
					inputArea = $('#div1').siblings('#div');
				if($(this).is(':checked')==check){
					$(inputArea).html("<input class='form-control' id='etc' type='text' placeholder='기타' name='os'>");
				} else{
					$(inputArea).html(" ");
				}
			})			
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
			<input type="hidden" name="categoryNo" value="${categoryNo }">
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
		                <input class="form-control" name="certificate" id="certificate" placeholder="자격증" type="text">
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
		                  <label for="staff1" style="height: 40px; text-align: center;">1명이상(본인포함)</label>
		               </div>
		               <div class="col-lg-4 d-grid" style="float: left; border: 1px solid #dddddd; margin: 5px; border-radius: 10px; text-align: center;">
		                  <input type="radio" value="3명이상" name="staff" id="staff2" style="display: none"> 
		                  <label for="staff2" style="height: 40px; text-align: center;">3명이상</label>
		               </div>
		               <div class="col-lg-4 d-grid" style="float: left; border: 1px solid #dddddd; margin: 5px; border-radius: 10px; text-align: center;">
		                  <input type="radio" value="5명이상" name="staff" id="staff3" style="display: none"> 
		                  <label for="staff3" style="height: 40px; text-align: center;">5명이상</label>
		               </div>
		               <div class="col-lg-4 d-grid" style="float: left; border: 1px solid #dddddd; margin: 5px; border-radius: 10px; text-align: center;">
		                  <input type="radio" value="7명이상" name="staff" id="staff4" style="display: none"> 
		                  <label for="staff4" style="height: 40px; text-align: center;">7명이상</label>
		               </div>
		               <div class="col-lg-4 d-grid" style="float: left; border: 1px solid #dddddd; margin: 5px; border-radius: 10px; text-align: center;">
		                  <input type="radio" value="10명이상" name="staff" id="staff5" style="display: none"> 
		                  <label for="staff5" style="height: 40px; text-align: center;">10명이상</label>
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
		                  <label for="career1" style="height: 40px; text-align: center;">신입</label>
		               </div>
		               <div class="col-lg-4 d-grid" style="float: left; border: 1px solid #dddddd; margin: 5px; border-radius: 10px; text-align: center;">
		                  <input type="radio" value="1년이상" name="career" id="career2" style="display: none"> 
		                  <label for="career2" style="height: 40px; text-align: center;">1년이상</label>
		               </div>
		               <div class="col-lg-4 d-grid" style="float: left; border: 1px solid #dddddd; margin: 5px; border-radius: 10px; text-align: center;">
		                  <input type="radio" value="3년이상" name="career" id="career3" style="display: none"> 
		                  <label for="career3" style="height: 40px; text-align: center;">3년이상</label>
		               </div>
		               <div class="col-lg-4 d-grid" style="float: left; border: 1px solid #dddddd; margin: 5px; border-radius: 10px; text-align: center;">
		                  <input type="radio" value="5년이상" name="career" id="career4" style="display: none"> 
		                  <label for="career4" style="height: 40px; text-align: center;">5년이상</label>
		               </div>
		               <div class="col-lg-4 d-grid" style="float: left; border: 1px solid #dddddd; margin: 5px; border-radius: 10px; text-align: center;">
		                  <input type="radio" value="7년이상" name="career" id="career5" style="display: none"> 
		                  <label for="career5" style="height: 40px; text-align: center;">7년이상</label>
		               </div>
	            	</div>
			</div>
			<div class="row form-block flex-column flex-sm-row">
				<div class="col text-center text-sm-end" id="submit">
					<input type="submit" value="완료" class="btn btn-primary px-3">
				</div>
			</div>
		</form>
	</div>
</section>
<%@ include file="../../inc/bottom.jsp"%>