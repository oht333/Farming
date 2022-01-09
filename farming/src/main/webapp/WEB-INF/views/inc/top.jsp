<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>파밍 - 가장 빠르게 스킬업하는 방법! 프리랜서, 레슨 전문가매칭서비스</title>

<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="robots" content="all,follow">
<!-- Price Slider Stylesheets -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/vendor/nouislider/nouislider.css">
<!-- Google fonts - Playfair Display-->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700">
<!-- Google fonts - Poppins-->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,400i,700">
<!-- swiper-->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.1/css/swiper.min.css">
<!-- Magnigic Popup-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/vendor/magnific-popup/magnific-popup.css">
<!-- theme stylesheet-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/style.default.css"
	id="theme-stylesheet">
<!-- Custom stylesheet - for your changes-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/custom.css">
<!-- Favicon-->

<link rel="shortcut icon"
	href="${pageContext.request.contextPath }/resources/img/farming-favicon.png">
<script
	src="${pageContext.request.contextPath }/resources/vendor/jquery/jquery.min.js"></script>
<!-- Tweaks for older IEs-->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
<!-- Font Awesome CSS-->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
	integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
	crossorigin="anonymous">
</head>
<body style="padding-top: 72px;">
	<header class="header">
		<!-- Navbar-->
		<nav
			class="navbar navbar-expand-lg fixed-top shadow navbar-light bg-white">
			<div class="container-fluid">
				<div class="d-flex align-items-center">
					<a class="navbar-brand py-1" href="<c:url value='/index'/>"><img
						src="${pageContext.request.contextPath }/resources/img/farming-logo.png"
						alt="Directory logo" style="width: 163px; padding: 2px"></a>
					<form class="form-inline d-none d-sm-flex" action="#" id="search">
						<div
							class="input-label-absolute input-label-absolute-left input-expand ms-lg-2 ms-xl-3">
							<label class="label-absolute" for="search_search"><i
								class="fa fa-search"></i><span class="sr-only">What are
									you looking for?</span></label> <input
								class="form-control form-control-sm border-0 shadow-0 bg-gray-200"
								id="search_search" placeholder="Search" aria-label="Search"
								type="search">
						</div>
					</form>
				</div>
				<button class="navbar-toggler navbar-toggler-right" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarCollapse"
					aria-controls="navbarCollapse" aria-expanded="false"
					aria-label="Toggle navigation">
					<i class="fa fa-bars"></i>
				</button>
				<!-- Navbar Collapse -->
				<div class="collapse navbar-collapse" id="navbarCollapse">
					<form class="form-inline mt-4 mb-2 d-sm-none" action="#"
						id="searchcollapsed">
						<div class="input-label-absolute input-label-absolute-left w-100">
							<label class="label-absolute" for="searchcollapsed_search"><i
								class="fa fa-search"></i><span class="sr-only">What areyou looking for?</span></label> 
								<input
								class="form-control form-control-sm border-0 shadow-0 bg-gray-200"
								id="searchcollapsed_search" placeholder="Search"
								aria-label="Search" type="search">
						</div>
					</form>
					<ul class="navbar-nav ms-auto">
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle active" id="docsDropdownMenuLink"
							href="index.html" data-bs-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false">파밍하기</a>
							<div class="dropdown-menu" aria-labelledby="docsDropdownMenuLink">
								<a class="dropdown-item" href="index.html">파밍소개</a>
								<a class="dropdown-item" href="index.html">카테고리 검색</a>
               					<a class="dropdown-item" href="<c:url value='/hiddenExp/findByMap'/>">지도로 파밍<span class="badge badge-info-light ms-1 mt-n1">NEW</span></a>
								<c:if test="${user eq '사용자' }">
									<a class="dropdown-item" href="<c:url value='/findExp/findExpList'/>">전문가찾기</a>
								</c:if>
								<c:if test="${user eq '전문가' }">
									<c:if test="${empty career }">
										<a class="dropdown-item" href="<c:url value='/expert/addExp/addExp'/>">추가정보입력</a>
									</c:if>
								</c:if>
							</div>
						</li>
						<li class="nav-item"><a class="nav-link" href="contact.html">전문가의 노하우</a></li>
						<c:if test="${empty email }">
							<li class="nav-item"><a class="nav-link"
								href="<c:url value='/login/loginType'/>">로그인</a></li>
							<li class="nav-item"><a class="nav-link"
								href="<c:url value='/register'/>">회원가입</a></li>
							<li
								class="nav-item mt-3 mt-lg-0 ms-lg-3 d-lg-none d-xl-inline-block"><a
								class="btn btn-primary"
								href="<c:url value='/expert/agreement'/>">전문가가입</a>
						</c:if>
						<c:if test="${!empty email }">
							<c:if test="${user eq '사용자' }">
								<li class="nav-item"><a class="nav-link" href="#">받은견적</a>
								<li class="nav-item"><a class="nav-link" href="<c:url value='/chat/rooms'/>">채팅</a>
								<li class="nav-item dropdown ms-2">
									<a class="btn btn-primary" id="docsDropdownMenuLink"
								data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">${name } 고객님</a>
								<!-- 프로필 이미지로 변경예정 -->
								<div class="dropdown-menu dropdown-menu-end" aria-labelledby="docsDropdownMenuLink">
									<h6 class="dropdown-header fw-normal">${name } 고객님</h6>
									<a class="dropdown-item" href="docs/docs-directory-structure.html">받은견적</a>
									<a class="dropdown-item" href="docs/docs-introduction.html">파밍페이</a>
									<a class="dropdown-item" href="<c:url value='/member/mypage/main?email=${email }'/>l">마이페이지</a>
									<div class="dropdown-divider"></div>
									<h6 class="dropdown-header fw-normal">설정</h6>
									<a class="dropdown-item" href="docs/components-bootstrap.html">전문가로 전환하기</a>
									<a class="dropdown-item" href="docs/components-directory.html">설정</a>
									<a class="dropdown-item" href="<c:url value='/login/logout'/>">로그아웃</a>
								</div>
							</c:if>
							<c:if test="${user eq '전문가' }">
								<li class="nav-item"><a class="nav-link" href="#">받은요청</a>
								<li class="nav-item"><a class="nav-link" href="<c:url value='/chat/rooms'/>">채팅</a>
								<li class="nav-item dropdown ms-2">
									<a class="btn btn-primary" id="docsDropdownMenuLink"
								data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">${name } 고객님</a>
								<!-- 프로필 이미지로 변경예정 -->
									<div class="dropdown-menu dropdown-menu-end" aria-labelledby="docsDropdownMenuLink">
										<h6 class="dropdown-header fw-normal">${name } 고객님</h6>
											<a class="dropdown-item" href="docs/docs-directory-structure.html">받은요청</a>
											<a class="dropdown-item" href="docs/docs-introduction.html">파밍페이</a>
											<a class="dropdown-item" href="<c:url value='/expert/mypage/main?email=${email }'/>l">마이페이지</a>
											<div class="dropdown-divider"></div>
											<a class="dropdown-item" href="docs/components-bootstrap.html">사용자로 전환하기</a>
										<a class="dropdown-item" href="docs/components-directory.html">설정</a>
										<!-- 일반로그아웃 -->
										<c:if test="${empty ktoken }">
											<a class="dropdown-item" href="<c:url value='/login/logout'/>">로그아웃</a>
										</c:if>
										<!-- 카카오로그아웃 -->
										<c:if test="${!empty ktoken }">
											<a class="dropdown-item" href="<c:url value='/login/kakaoLogout'/>">로그아웃</a>
										</c:if>
									</div>
								</li>
							</c:if>
						</c:if>
					</ul>
				</div>
			</div>
		</nav>
	</header>