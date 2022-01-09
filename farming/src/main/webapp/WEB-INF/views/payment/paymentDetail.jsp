<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp" %>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

    <section class="py-5 p-print-0">
      <div class="container">
        <div class="row mb-4 d-print-none">
          <div class="col-lg-6">
            <!-- Breadcrumbs -->
            <ol class="breadcrumb ps-0  justify-content-start">
              <li class="breadcrumb-item"><a href="index.html">서비스이름</a></li>
              <li class="breadcrumb-item"><a href="user-account.html">Account</a></li>
              <li class="breadcrumb-item active">현재날짜   </li>
            </ol>
          </div>
          <div class="col-lg-6 text-lg-end">
            <button class="btn btn-primary me-2"><i class="far fa-file-pdf me-2"></i> Download PDF</button>
            <button class="btn" onclick="window.print()"><i class="fas fa-print me-2"></i> Print</button>
          </div>
        </div>
        <div class="card border-0 shadow shadow-print-0">
          <div class="card-header bg-gray-100 p-5 border-0 px-print-0">
            <div class="row">
              <div class="col-6 d-flex align-items-center"><img src="${pageContext.request.contextPath }/resources/img/farming-favicon.png" alt="Directory"></div>
              <div class="col-6 text-end">
                <h3 class="mb-0">Invoice 202009001</h3>
                <p class="mb-0">Issued on Sep 01, 2020</p>
              </div>
            </div>
          </div>
          <div class="card-body p-5 p-print-0">
            <div class="row mb-4">
              <div class="col-sm-6 pe-lg-3">
                <h2 class="h6 text-uppercase mb-4">Supplier</h2>
                <h6 class="mb-1">Directory, Inc.</h6>
                <p class="text-muted">13/25 New Avenue<br>New Heaven<br>45Y 73J<br>England<br><strong>Great Britain</strong></p>
              </div>
              <div class="col-sm-6 ps-lg-4">
                <h2 class="h6 text-uppercase mb-4">Customer</h2>
                <h6 class="mb-1">James Brown</h6>
                <p class="text-muted">13/25 New Avenue<br>New Heaven<br>45Y 73J<br>England<br><strong>Great Britain</strong></p>
              </div>
            </div>
            <div class="row mb-5">
              <div class="col-md-6 pe-lg-3 text-sm">
                <div class="row">
                  <div class="col-6 text-uppercase text-muted">Bank account</div>
                  <div class="col-6 text-end">hello@bootstrapious.com</div>
                </div>
                <div class="row">
                  <div class="col-6 text-uppercase text-muted">Reference</div>
                  <div class="col-6 text-end">202009001</div>
                </div>
                <div class="row">
                  <div class="col-6 text-uppercase text-muted">Payment method</div>
                  <div class="col-6 text-end">Bank transfer</div>
                </div>
              </div>
              <div class="col-md-6 ps-lg-4 text-sm">
                <div class="row">
                  <div class="col-6 text-uppercase text-muted">Issued on</div>
                  <div class="col-6 text-end">Sep 01, 2020</div>
                </div>
                <div class="row">
                  <div class="col-6 text-uppercase text-muted">Due on</div>
                  <div class="col-6 text-end">Sep 01, 2020</div>
                </div>
              </div>
            </div>
            <div class="table-responsive text-sm mb-5">
              <table class="table table-striped">
                <thead class="bg-gray-200">
                  <tr class="border-0">
                    <th class="center">#</th>
                    <th>Item</th>
                    <th>Description</th>
                    <th class="text-end">Price</th>
                    <th class="center">Qty</th>
                    <th class="text-end">Total</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td class="text-center">1</td>
                    <td class="fw-bold">Room Rental Services</td>
                    <td>August</td>
                    <td class="text-end">$958.00</td>
                    <td class="text-center">1</td>
                    <td class="text-end">$958.00</td>
                  </tr>
                  <tr>
                    <td class="text-center">2</td>
                    <td class="fw-bold">Premium Listing</td>
                    <td>London</td>
                    <td class="text-end">$100.00</td>
                    <td class="text-center">1</td>
                    <td class="text-end">$100.00</td>
                  </tr>
                </tbody>
              </table>
            </div>
            <div class="row">
              <div class="col-sm-7 col-lg-5 col-xl-4 ms-auto">
                <table class="table">
                  <tbody>
                    <tr class="text-sm">
                      <td class="fw-bold">Subtotal</td>
                      <td class="text-end">$1,058</td>
                    </tr>
                    <tr class="text-sm">
                      <td class="fw-bold">VAT (21%)</td>
                      <td class="text-end">$222.18</td>
                    </tr>
                    <tr>
                      <td class="text-uppercase fw-bold">Total</td>
                      <td class="text-end fw-bold">$1,280.18</td>
                    </tr>
                  </tbody>
                </table>
                <div style="text-align: right;"><button class="btn btn-primary" onclick="iamport()"><i class="far fa-credit-card"></i> 결제하기</button></div>
              </div>
            </div>
          </div>
          <div class="card-footer bg-gray-100 p-5 px-print-0 border-0 text-end text-sm">
            <p class="mb-0">Thank you for you business. Directory, Inc.</p>
          </div>
        </div>
      </div>
    </section>

<script type="text/javascript">
function iamport(){
	let IMP = window.IMP;
	IMP.init('imp46523158');
	IMP.request_pay({
	    pg : 'html5_inicis',
	    pay_method : 'card',
	    merchant_uid : '13',
	    name : '상품이름' , //결제창에서 보여질 이름
	    amount : 10, //실제 결제되는 가격
	    buyer_email : 'iamport@siot.do',
	    buyer_name : '구매자이름',
	    buyer_tel : '010-1234-5678',
	    buyer_addr : '서울 강남구 도곡동',
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
	    	let response = await fetch("/payment/done",{
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
<%@ include file="../inc/bottom.jsp" %>