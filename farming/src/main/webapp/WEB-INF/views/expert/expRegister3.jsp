<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp" %>
  	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
  	<script type="text/javascript">
  	var contextPath = "/farming";
  		$(function(){
  			$('#signup').click(function(){
  				if($('#name').val().length<1){
  					alert('이름을 입력하세요');
  					$('#name').focus();
  					event.preventDefault();
  				}else if($('#email').val().length<1){
  					alert('이메일을 입력하세요');
  					$('#email').focus();
  					event.preventDefault();
  				}else if($('#pwd').val().length<1){
  					alert('비밀번호를 입력하세요');
  					$('#pwd').focus();
  					event.preventDefault();
  				}else if($('#pwd').val() != $('#pwd2').val()){
  					alert('비밀번호가 일치하지 않습니다.');
  					$('#pwd2').focus();
  					event.preventDefault();
  				}else if($('#chkEmail').val() != 'Y'){
  					alert('이메인인증이 완료되지 않았습니다.');
  					event.preventDefault();
  				}else if($('#checkem').val() != 'Y'){
  					alert('이메일중복체크가 완료되지 않았습니다.');
  					event.preventDefault();
  				}else if($('#address1').val().length < 1){
  					alert('주소를 입력하세요');
  					event.preventDefault();
  				}
  			});
  			
  			/* 이메일 인증창 */
  			$('#certified').click(function(){
  				if($('#email').val().length<1){
  					alert('이메일을 입력하세요');
  					$('#email').focus();
  					event.preventDefault();
  				} else {
  					var email=$('#email').val();
  	  				open(contextPath+'/certified?email='+email,'dup',
  	  				 'width=500,height=500,left=0,top=0,location=yes,resizable=yes');
  				}
  			});
  			/* 이메일중복체크 */
  			$('#ckeckemail').click(function(){
  				if($('#email').val().length<1){
  					alert('이메일을 입력하세요');
  					$('#email').focus();
  					event.preventDefault();
  				} else {
  					var email=$('#email').val();
  	  				open(contextPath+'/expert/checkemail?email='+email,'dup',
  	  				 'width=500,height=500,left=0,top=0,location=yes,resizable=yes');
  				}
  			});
  			
  			/* 주소검색 */
  			$('#searchAddr').click(function(){
  				new daum.Postcode({
  			        oncomplete: function(data) {
  			        	var addr = ''; // 주소 변수
  		 
  		                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
  		                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
  		                    addr = data.roadAddress;
  		                } else { // 사용자가 지번 주소를 선택했을 경우(J)
  		                    addr = data.jibunAddress;
  		                }
  		                document.getElementById('zipCode').value = data.zonecode;
  		                document.getElementById("address1").value = addr;
  		                // 커서를 상세주소 필드로 이동한다.
  		                document.getElementById("address2").focus();
  			        	
  			        }
  			    }).open();
  			});
  			
  		});
  	</script>
  
  	<div class="progress rounded-0 sticky-top" style="height: 8px; top: 72px;">
      <div class="progress-bar" role="progressbar" style="width: 1000%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
    </div>
    <div class="container-fluid px-3">
      <div class="row min-vh-100">
        <div class="col-md-8 col-lg-6 col-xl-5 d-flex align-items-center">
          <div class="w-100 py-5 px-md-5 px-xxl-6 position-relative">
            <div class="mb-4"><img class="img-fluid mb-4" src="${pageContext.request.contextPath }/resources/img/farming-favicon.png" alt="..." style="max-width: 4rem;">
              <h2>전문가 회원가입</h2>
            </div>
            <form class="form-validate" method="post" action="<c:url value='/expert/join'/>">
              <c:set var="idx" value="0"/>
              <c:forEach var="str" items="${strList }">
              	  <input type=hidden name="str" id="str[${idx }]" value="${str }" >
              	  <c:set var="idx" value="${idx+1 }"/>
              </c:forEach>
              <div class="mb-4">
                <label class="form-label" for="name"> 이름</label>
                <input class="form-control" name="name" id="name" type="text" placeholder="이름(실명)" autocomplete="off">
              </div>
              <div class="mb-4">
                <label class="form-label" for="email"> 이메일</label>
                <input class="form-control" name="email" id="email" type="email" placeholder="example@farming.com" autocomplete="off" >
              </div>
              <div class="mb-4">
	              <div class="col-lg-5" style="float: left;">
	                <input class="form-control" name="ckeckemail" id="ckeckemail" type="button" value="중복체크" title="이메일중복체크" autocomplete="off" >
	              </div>
	              <div class="col-lg-5" style="float: right;">
	                <input class="form-control" name="certified" id="certified" type="button" value="인증요청" title="이메일인증" autocomplete="off" >
	              </div>
              </div>
              <div class="mb-4" style="clear: both;">
                <label class="form-label" for="pwd"> 비밀번호</label>
                <input class="form-control" name="pwd" id="pwd" placeholder="비밀번호" type="password">
              </div>
              <div class="mb-4">
                <label class="form-label" for="pwd2"> 비밀번호확인</label>
                <input class="form-control" name="pwd2" id="pwd2" placeholder="비밀번호확인" type="password">
              </div>
              <div class="mb-4">
	              <div class="col-lg-7 d-grid" style="float: left;">
	                <label class="form-label" for="address1"> 주소</label>
	                <input class="form-control" name="address1" id="address1" placeholder="주소( 경기도 성남시 분당구 불정로 6 )" type="text" readonly="readonly">
	              </div>
	               <div class="col-lg-4" style="float: right; margin-top: 3px;">
	                <label class="form-label" for=""></label>
	                <input class="form-control" name="searchAddr" id="searchAddr" type="button" value="주소검색" title="주소검색">
	              </div>
              </div>
              <div class="mb-4" style="clear: both;">
                <label class="form-label" for="address2"> 상세주소</label>
                <input class="form-control" name="address2" id="address2" placeholder="상세주소( 정자동, NAVER그린팩토리 )" type="text">
              </div>
              <div class="mb-4" style="clear: both;">
                <label class="form-label" for="zipCode"> 우편번호</label>
                <input class="form-control" name="zipCode" id="zipCode" placeholder="우편번호( 13561 )" type="text">
              </div>
              <div class="d-grid gap-2">
                <button class="btn btn-lg btn-primary" type="submit" id="signup">회원가입</button>
              </div>
              <hr class="my-4">
              <input type="hidden" name="chkEmail" id="chkEmail">
              <input type="hidden" name="checkem" id="checkem">
              <p class="text-sm text-muted"><a href="<c:url value='/expert/agreement'/>">이용약관</a></p>
            </form><a class="close-absolute me-md-5 me-xl-6 pt-5" href="<c:url value='/index'/>"> 
              <svg class="svg-icon w-3rem h-3rem">
                <use xlink:href="#close-1"></use>
              </svg></a>
          </div>
        </div>
       	<div class="col-md-4 col-lg-6 col-xl-7 d-none d-md-block">
          <!-- Image-->
          <div class="bg-cover h-100 me-n3" style="background-image: url(${pageContext.request.contextPath }/resources/img/photo/photo-1497436072909-60f360e1d4b1.jpg);"></div>
        </div>
      </div>
    </div>
    <%@ include file="../inc/bottom.jsp" %>