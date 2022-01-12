<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../inc/top.jsp" %>
<style>
	input[type=radio]:checked + label { 
		background: #2CCE8D;
		color: white;
		border: 1px solid #dddddd;
		border-radius: 10px;
	}
</style>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
    <section class="py-5">
      <div class="container" style="margin: 0 auto; text-align: center;">
        <!-- Breadcrumbs -->
        <ol class="breadcrumb ps-0  justify-content-start">
          <li class="breadcrumb-item"><a href="<c:url value='/index'/>">Home</a></li>
          <li class="breadcrumb-item"><a href="<c:url value='/member/mypage/main'/>">마이페이지</a></li>
          <li class="breadcrumb-item"><a href="<c:url value='/cash/main'/>">파밍캐시 &amp; 페이 </a></li>
          <li class="breadcrumb-item active">캐시 충전 </li>
        </ol>
        <h1 class="hero-heading mb-0">파밍캐시 &amp; 페이 충전</h1>
        <p class="text-muted mb-5">Manage your account and settings here.</p>
        <input type="hidden" name="memberNo" value="${mVo.memberNo}">
       <div class="row-1" style="width: 100%;">
         <div class="col-6 col-md-8 mb-30px" style="width: 80%">
            <div class="card h-100 border-0 shadow hover-animate">
              <div class="card-body"  style="text-align: center;">
                <div class="icon-rounded bg-secondary-light mb-3">
                  <i class="fas fa-user-alt fa-2x"></i>
                </div>
                <div style="margin-bottom: 20px;">
	                <h5 class="card-title mb-3">파밍페이</h5>
	                <p class="text-muted card-text text-sm">충전금액을 선택하세요.</p>
                </div>
                <div>
                	<div id="frm-cash">
                	<div class="col-lg-3 d-grid" style="border: 1px solid #dddddd; margin: 6px; border-radius: 10px; text-align: center;">
		              <input type="radio" value="10000" name="charge" id="charge1" style="display: none"> 
		              <label for="charge1" class="form-control">10,000원</label>
		            </div>
		            <div class="col-lg-3 d-grid" style="border: 1px solid #dddddd; margin: 6px; border-radius: 10px; text-align: center;">
		              <input type="radio" value="15000" name="charge" id="charge2" style="display: none"> 
		              <label for="charge2" class="form-control">15,000원</label>
		            </div>
		            <div class="col-lg-3 d-grid" style="border: 1px solid #dddddd; margin: 6px; border-radius: 10px; text-align: center;">
		              <input type="radio" value="20000" name="charge" id="charge3" style="display: none"> 
		              <label for="charge3" class="form-control">20,000원</label>
		            </div>
		            <div class="col-lg-3 d-grid" style="border: 1px solid #dddddd; margin: 6px; border-radius: 10px; text-align: center;">
		              <input type="radio" value="25000" name="charge" id="charge4" style="display: none"> 
		              <label for="charge4" class="form-control">25,000원</label>
		            </div>
		            <div class="col-lg-3 d-grid" style="border: 1px solid #dddddd; margin: 6px; border-radius: 10px; text-align: center;">
		              <input type="radio" value="30000" name="charge" id="charge5" style="display: none"> 
		              <label for="charge5" class="form-control">30,000원</label>
		            </div>
		            <div class="col-lg-3 d-grid" style="border: 1px solid #dddddd; margin: 6px; border-radius: 10px; text-align: center;">
		              <input type="radio" value="35000" name="charge" id="charge6" style="display: none"> 
		              <label for="charge6" class="form-control">35,000원</label>
		            </div>
		            <div class="col-lg-3 d-grid" style="border: 1px solid #dddddd; margin: 6px; border-radius: 10px; text-align: center;">
		              <input type="radio" value="40000" name="charge" id="charge7" style="display: none"> 
		              <label for="charge7" class="form-control">40,000원</label>
		            </div>
		            <div class="col-lg-3 d-grid" style="border: 1px solid #dddddd; margin: 6px; border-radius: 10px; text-align: center;">
		              <input type="radio" value="45000" name="charge" id="charge8" style="display: none"> 
		              <label for="charge8" class="form-control">45,000원</label>
		            </div>
		            <div class="col-lg-3 d-grid" style="border: 1px solid #dddddd; margin: 6px; border-radius: 10px; text-align: center;">
		              <input type="radio" value="50000" name="charge" id="charge9" style="display: none"> 
		              <label for="charge9" class="form-control">50,000원</label>
		            </div>
		            <div class="col-lg-3 d-grid" style="border: 1px solid #dddddd; margin: 6px; border-radius: 10px; text-align: center;">
		              <input type="radio" value="100000" name="charge" id="charge10" style="display: none"> 
		              <label for="charge10" class="form-control">100,000원</label>
		            </div>
		            <div class="col-lg-3 d-grid" style="border: 1px solid #dddddd; margin: 6px; border-radius: 10px; text-align: center;">
		              <input type="radio" value="150000" name="charge" id="charge11" style="display: none"> 
		              <label for="charge11" class="form-control">150,000원</label>
		            </div>
		            <div class="col-lg-3 d-grid" style="border: 1px solid #dddddd; margin: 6px; border-radius: 10px; text-align: center;">
		              <input type="radio" value="200000" name="charge" id="charge12" style="display: none"> 
		              <label for="charge12" class="form-control">200,000원</label>
		            </div>
		            </div>
		            <p class="text-muted mb-5" style="margin-top: 50px;">파밍페이 1회 최소 충전금액은 10,000원 이며, 1회 최대 충전금액은 200,000원입니다.</p>
		            <div class="d-grid gap-1" style="display: flex; justify-content: center;">
		              <button class="btn btn-lg btn-primary" id="credit">충전하기</button>
		            </div>		            
                </div>
              </div>
            </div>
          </div>	
         </div>
      </div>
    </section>
   
    <!-- JavaScript files-->
<script type="text/javascript">
$(function(){
	$('#credit').click(function(){
		var price = $('input[type=radio]:checked').val();
		let IMP = window.IMP;
		IMP.init('imp46523158');
		IMP.request_pay({
		    pg : 'html5_inicis',
		    pay_method : 'card',
		    merchant_uid : 'charge_'+new Date().getTime(),
		    name : '파밍페이충전' , //결제창에서 보여질 이름
		    amount : price, //실제 결제되는 가격
		    buyer_email : '${mVo.email}',
		    buyer_name : '${mVo.name}',
		    buyer_addr : '${mVo.address1}',
		    buyer_postcode : ${mVo.zipCode}
		}, function(rsp){
			if(rsp.success){//결제 성공시
				$.ajax({
					url : "<c:url value='/cash/complete'/>",
			        type :'POST',
			        data : {"merchantUid" : rsp.merchant_uid,
			        		"memberName" : '${mVo.name}',
			        		"memberNo" : ${mVo.memberNo},
			        		"price" : rsp.paid_amount,
			        		"state" : "구매완료"},
			        success: function(res){
			        	if(res > 0){
							console.log("추가성공");			           
			        	}else{
			            	alert("Insert Fail!!!");
			        	}
			        },
			        error : function( request, status, error) {
		       			console.log("code : "+request.status+"\n"+"message : "+request.responseText);
		       		}
				})
			}
			else{//결제 실패시
				var msg = '결제에 실패했습니다';
				msg += '에러 : ' + rsp.error_msg
			}
			console.log(msg);
		});//pay
	});
});

</script>
<%@ include file="../inc/bottom.jsp" %>