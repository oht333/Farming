<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp"%>
<script type="text/javascript">
	$(function() {
		$('#submit').click(function() {
			if($('#main').val()=='type'){
				alert('서비스타입을 선택하세요');
				event.preventDefault();
			}
		});
	});
</script>
    <div class="progress rounded-0 sticky-top" style="height: 8px; top: 72px;">
      <div class="progress-bar" role="progressbar" style="width: 40%" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"></div>
    </div>
    <section class="py-5">
      <div class="container">
        <p class="subtitle text-primary">SignUp Expert!</p>
        <h1 class="h2 mb-5">Information <span class="text-muted float-end">Step 1</span></h1>
        <form action="<c:url value='/expert/expRegister2'/>" method="post">
          <div class="row form-block">
            <div class="col-lg-4">
              <h4>서비스 타입</h4>
              <p class="text-muted text-sm">당신이 제공할 수 있는 서비스를 선택하세요</p>
            </div>
            <div class="col-lg-7 ms-auto">
              <div class="mb-4">
                <label class="form-label" for="form_type">서비스</label>
                <select class="selectpicker form-control" name="main" id="main" data-style="btn-selectpicker">
                  <option value="type">서비스타입선택</option>
                  <option value="개발">개발</option>
                  <option value="디자인">디자인</option>
                </select>
              </div>
              
            </div>
          </div>
          <div class="row form-block flex-column flex-sm-row">
            <div class="col text-center text-sm-start">
            </div>
            
            <div class="col text-center text-sm-end" id="submit"><input type="submit" value="다음" class="btn btn-primary px-3"></div>
          	
          </div>
        </form>
      </div>
    </section>
<%@ include file="../inc/bottom.jsp"%>