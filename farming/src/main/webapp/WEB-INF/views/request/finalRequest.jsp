<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/top.jsp"%>
<style>

.file-uploader{
	margin: 0;
    position: relative;
    border-radius: 0.5rem;
    border: 0.0625rem solid #f2f2f2;
    background: url(data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCI+PGcgZmlsbD0iI0I1QjVCNSIgZmlsbC1ydWxlPSJldmVub2RkIj48cGF0aCBkPSJNOSAwaDJ2MjBIOXoiLz48cGF0aCBkPSJNMCAxMVY5aDIwdjJ6Ii8+PC9nPjwvc3ZnPg==) no-repeat 50%,#f2f2f2;
    cursor: pointer;
}

.file-uploader > .slot-content{
	overflow: hidden;
    position: absolute;
    z-index: 2;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    display: flex;
    border-radius: 8px;
    transition: background .2s ease-in-out;
	overflow: hidden;
    position: absolute;
    z-index: 2;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    display: flex;
    border-radius: 8px;
    transition: background .2s ease-in-out;
}

.file-uploader > .file-uploader-input{
	position: absolute;
    z-index: 2;
    width: 100%;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    opacity: 0;
    cursor: pointer;
}
.input-price-group {
    width: 17.75rem;
    margin: 0 auto;
    position: relative;
}
.input-price-group .input-group {
    align-items: center;
}
.input-group {
    position: relative;
    display: flex;
    flex-wrap: wrap;
    align-items: stretch;
    width: 100%;
}
.input-group>.custom-select:not(:last-child), .input-group>.form-control:not(:last-child) {
    border-top-right-radius: 0;
    border-bottom-right-radius: 0;
}
.input-price {
    width: 100%;
    padding: 0.6875rem 0.5rem 0.6875rem 1.4375rem;
    font-size: 2.125rem;
    font-weight: 500;
    text-align: right;
    border-radius: 0;
    border: 0;
}
.input-validate-border {
    position: absolute;
    left: 0;
    bottom: 0;
    width: 100%;
    height: 0;
    background: none;
    border: 0;
    border-bottom: 0.0625rem solid #e1e1e1;
    margin: 0;
    z-index: 3;
    transition: border-color .15s ease-in-out;
}
.input-price-group .input-group-append {
    pointer-events: none;
}
.input-group-append {
    height: 100%;
    padding-right: 1.5rem;
    padding-bottom: 0.0625rem;
}
.input-group-text {
    display: flex;
    align-items: center;
    padding: 0.6875rem 1rem;
    margin-bottom: 0;
    font-size: 1rem;
    font-weight: 400;
    line-height: 1.5;
    color: #323232;
    text-align: center;
    white-space: nowrap;
    background-color: #f2f2f2;
    border: 0.0625rem solid #e1e1e1;
    border-radius: 0.25rem;
}

.input-group-text {
    padding: 0;
    font-size: 2.125rem;
    font-weight: 500;
    background: none;
    border: none;
}
</style>
<div class="container-fluid">               
      <div class="row">
        <div class="col-lg-4 col-xl-3 px-4 py-5 ps-xl-5 pe-xl-5">
          <!-- Breadcrumbs -->
          <ol class="breadcrumb ps-0  justify-content-start">
            <li class="breadcrumb-item"><a href="index.html">Home</a></li>
            <li class="breadcrumb-item"><a href="user-grid.html">받은 요청</a></li>
            <li class="breadcrumb-item active">견적보내기  </li>
          </ol>
          <div class="text-block">
	          <div class="d-flex align-items-center justify-content-between mb-3">
	          <div>
	            <h3>회원이름</h3>
	            <p class="text-muted mb-0">2022-01-22 </p>
	           </div>
	            <img class="avatar avatar-lg p-1 flex-shrink-0 ms-4" src="${pageContext.request.contextPath }/resources/img/avatar/avatar-10.jpg" alt="Jack London">
            </div>
          </div>
          <div class="text-block">
            <div class="row">
              <div class="col-sm">
                <h6>지역</h6>
                <p class="text-muted">Ap #867, 859 Sit Rd., London</p>
              </div>
              <div class="col-sm">
                <h6>분야</h6>
                <p class="text-muted">+421 454 897 545</p>
              </div>
            </div>
          </div>
          <div class="text-block">
            <h6 class="mb-3">Who's coming</h6>
            <div class="row mb-3">
              <div class="col-auto text-center text-sm"><img class="avatar avatar-border-white mb-1" src="${pageContext.request.contextPath }/resources/img/avatar/avatar-0.jpg" alt="Ondrej"><br>Ondrej</div>
              <div class="col-auto text-center text-sm"><img class="avatar avatar-border-white mb-1" src="${pageContext.request.contextPath }/resources/img/avatar/avatar-1.jpg" alt="Julie"><br>Julie</div>
              <div class="col-auto text-center text-sm"><img class="avatar avatar-border-white mb-1" src="${pageContext.request.contextPath }/resources/img/avatar/avatar-2.jpg" alt="Barbora"><br>Barbora</div>
            </div>
          </div>
          <div class="text-block">
            <div class="row">
              <div class="col">
                <h6> Total cost</h6>
                <p class="text-muted">$499.50</p>
              </div>
              <div class="col align-self-center">
                <p class="text-end d-print-none"><a class="btn btn-link text-muted" href="user-invoice.html"><i class="far fa-file me-2"></i>Your invoice</a></p>
              </div>
            </div>
          </div>
          <div class="text-block d-print-none">
            <button class="btn btn-link ps-0" onclick="window.print()"><i class="fa fa-print me-2"></i>Print </button>
          </div>
        </div>
        <div class="col-lg-8 col-xl-9 py-5 map-side-lg">
          <div class="col-lg-8 col-xl-5 m-auto map-full shadow-left" id="detailSideMap">
          	<div class="">
          		<h1 class="h2 mb-4">견적보내기</h1>
          		<div class="col-xl-4 col-md-6 mb-4 ">
	          		<fieldset class="input-price-group">
		          		<div class="input-group" role="group">
	          				<input type="tel" placeholder="0" autocomplete="off" 
	          				maxlength="11" class="input-price form-control">
			          		<hr class="input-validate-border">
		          			<div class="input-group-append">
		          				<div class="input-group-text">원</div>
		          			</div>
		          		</div>
	          		</fieldset>
	          		<div class="dropdown bootstrap-select show-tick form-control">
		          		<select class="selectpicker form-control" data-style="btn-selectpicker">
		          			<option>총 비용</option>
		          			<option>시간 당</option>
		          		</select>
	          		</div>
          		</div>
          		<div>
          			<h6 class="form-check-inline">견적 설명</h6><span class="form-check-inline text-muted small" style="float:right">0/1000자</span>
          			<textarea class="form-control" rows="7"  placeholder="요청사항에 대한 답변, 서비스 진행방식, 고수님만의 강점이나 특징 등을 작성하세요."></textarea>
          		</div>
          		<div class="py-3 mb-3">
          			<h6>파일 첨부</h6>
          			<label class="file-uploader" style="width: 80px; height: 80px;">
	            		<input class="file-uploader-input" type="file" name="businessLicense" id="businessLicense">
	           			<span class="slot-content"></span>
	           		</label>
          		</div>
          		<div class="d-grid mb-4">
          			<button class="btn btn-primary btn-lg">견적 보내기</button>
          		</div>
          	</div>
          </div>
        </div>
      </div>
    </div>
<%@ include file="../inc/bottom.jsp"%>