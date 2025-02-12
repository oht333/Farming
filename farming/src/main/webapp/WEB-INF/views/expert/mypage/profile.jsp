<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../../inc/top.jsp" %>
<style>
.btn-outline-mute {
  color: #2CCE8D;
  border-color: #2CCE8D;
}

.btn-outline-mute:hover {
  color: #fff;
  background-color: #2CCE8D;
  border-color: #2CCE8D;
}
</style>
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.6.0.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript">
	var contextPath = "/farming";
		$(function(){
			
			$('#upfile').change(function(){
			    setImageFromFile(this, '#userImg');
			});

			function setImageFromFile(input, expression) {
			    if (input.files && input.files[0]) {
			        var reader = new FileReader();
			        reader.onload = function (e) {
			            $(expression).attr('src', e.target.result);
			        }
			        reader.readAsDataURL(input.files[0]);
			    }
			}
			
			$('#edit').click(function(){
				if($('#pwd').val().length<1){
  					alert('비밀번호를 입력하세요');
  					$('#pwd').focus();
  					event.preventDefault();
				}
			});
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
    <section class="py-5">
      <div class="container">
        <!-- Breadcrumbs -->
        <ol class="breadcrumb ps-0  justify-content-start">
          <li class="breadcrumb-item"><a href="<c:url value='/index'/>">Home</a></li>
          <li class="breadcrumb-item"><a href="<c:url value='/expert/mypage/main'/>">마이페이지</a></li>
          <li class="breadcrumb-item active">내 정보 수정   </li>
        </ol>
        <h1 class="hero-heading mb-0">내 정보 수정</h1>
        <p class="text-muted mb-5">Update your personal information</p>
        
        <div class="row" style="margin-left:340px;">
          <div class="col-lg-7 mb-5 mb-lg-0"> 
            <div class="text-block"> 
            <form name="frmEdit" method="post" enctype="multipart/form-data"
					action="<c:url value='/expert/mypage/profile'/>" >
			<div class="d-flex mb-4" style="margin-left:42%">
				<label for="upfile"><img id="userImg" class="avatar avatar-lg p-1 flex-shrink-0 me-4" src="${pageContext.request.contextPath }/resources/userImg/${userImg}"></label>
				<input type ="file" name="upfile" id="upfile" style="display: none;">
			</div>
              <div class="mb-4">
                <label class="form-label" for="name"> 이름</label>
                <input class="form-control" name="name" id="name" type="text" placeholder="${name}" autocomplete="off">
              </div>
              <div class="mb-4">
                <label class="form-label" for="email"> 이메일</label>
                <input class="form-control" name="email" id="email" type="email" placeholder="${email}" autocomplete="off" readonly="readonly">
                <!-- <span class="invalidText"></span> -->
              </div>
              <div class="mb-4">
                <label class="form-label" for="pwd"> 비밀번호</label>
                <input class="form-control" name="pwd" id="pwd" type="password">
              </div>
              
              <div class="mb-4">
              	<div class="col-lg-7 d-grid" style="float: left;">
	                <label class="form-label" for="address1"> 주소</label>
	                <input class="form-control" name="address1" id="address1" placeholder="${vo.address1}" type="text" readonly="readonly">
	              </div>
	              <div class="col-lg-4" style="float: right; margin-top: 3px;">
	                <label class="form-label" for=""></label>
	                <input class="form-control" name="searchAddr" id="searchAddr" type="button" value="주소검색" title="주소검색">
	              </div>
              </div>
              <div class="mb-4" style="clear: both;">
                <label class="form-label" for="address2"> 상세주소</label>
                <input class="form-control" name="address2" id="address2" placeholder="${vo.address2}" type="text">
              </div>
              <div class="mb-4" style="clear: both;">
                <label class="form-label" for="zipCode"> 우편번호</label>
                <input class="form-control" name="zipCode" id="zipCode" placeholder="${vo.zipCode}" type="text">
              </div>
              
              <div class="row form-block flex-column flex-sm-row">
            	<div class="col text-center text-sm-start"><input type="button" value="  뒤로가기  " class="btn btn-outline-mute" id="prev"></div>
            	<div class="col text-center text-sm-end" id="submit"><input type="submit" value="    수정    " class="btn btn-primary px-3"></div>
	         </div>
            </form>
            </div>
          </div>
        </div>
      </div>	
    </section>

<%@ include file="../../inc/bottom.jsp" %>