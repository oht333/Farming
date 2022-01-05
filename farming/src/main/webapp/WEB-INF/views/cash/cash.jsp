<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../inc/top.jsp" %>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script type="text/javascript">
$('#cash').click(function () {
	let IMP = window.IMP;
	IMP.init('imp46523158');
	IMP.request_pay({
	    pg : 'html5_inicis',
	    pay_method : 'card',
	    merchant_uid : '13',
	    name : '캐시' , //결제창에서 보여질 이름
	    amount : 10, //실제 결제되는 가격
	    buyer_email : '${email}',
	    buyer_name : '${name}',
	    buyer_tel : '010-1234-5678',
	    buyer_addr : '${address1}',
	    buyer_postcode : '123-456'
	}, async function(rsp) {
		console.log(rsp);
	    if ( rsp.success ) {
	    	var msg = '결제가 완료되었습니다.';
	        msg += '고유ID : ' + rsp.imp_uid;
	        msg += '상점 거래ID : ' + rsp.merchant_uid;
	        msg += '결제 금액 : ' + rsp.paid_amount;
	        msg += '카드 승인번호 : ' + rsp.apply_num;
	    	alert("결제가 완료되었습니다.");
	    	console.log(rsp);
	    	let response = await fetch("/cash/done",{
	    		method:"psot",
	    		body:JSON.stringify(rsp),
	    		headers:{
	    			"Content-Type":"application/json; charset=utf-8"
	    		}
	    	});
	    	
	    	let parseResponse = await response.text();
	    	console.log(parseResponse);
	    	if(parseResponse === "ok"){
	    		location.href="<c:url value='/index'/>";
	    	}
	    } else {
	    	 var msg = '결제에 실패하였습니다.';
	         msg += '에러내용 : ' + rsp.error_msg;
	    }
	    alert(msg);
	});
}
</script>
    <section class="py-5">
      <div class="container">
        <!-- Breadcrumbs -->
        <ol class="breadcrumb ps-0  justify-content-start">
          <li class="breadcrumb-item"><a href="<c:url value='/index'/>">Home</a></li>
          <li class="breadcrumb-item active">파밍캐시 &amp; 페이 </li>
        </ol>
        <h1 class="hero-heading mb-0">파밍캐시 &amp; 페이 충전</h1>
        <p class="text-muted mb-5">Manage your account and settings here.</p>
        <input type="hidden" name="email" value="${param.memberNo}">
       <p style="font-weight: bold">캐시 충전 금액 선택</p>
        <div class="table-responsive">
          <table class="table text-gray-700 table-striped table-hover">
        <tr class="no-hover no-stripe">
              <th></th>
              <td class="text-center"><input type="radio" name="cp_item" value="5000" class="btn btn-outline-muted">5,000</td>
              <td class="text-center"><input type="radio" name="cp_item" value="10000" class="btn btn-outline-muted">10,000</td>
              <td class="text-center"><input type="radio" name="cp_item" value="15000" class="btn btn-outline-muted">15,000</td>
              <td class="text-center"><input type="radio" name="cp_item" value="20000" class="btn btn-outline-muted">20,000</td>
              <td class="text-center"><input type="radio" name="cp_item" value="30000" class="btn btn-outline-muted">30,000</td>
              <td class="text-center"><input type="radio" name="cp_item" value="50000" class="btn btn-outline-muted">50,000</td>
            </tr>
            </table>
        </div>
        <button type="button" class="btn btn-primary rounded-pill h-100" id="cash">충전하기</button>
      </div>
    </section>
   
    <!-- JavaScript files-->

<%@ include file="../inc/bottom.jsp" %>