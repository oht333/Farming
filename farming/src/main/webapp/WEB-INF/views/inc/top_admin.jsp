<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html dir="ltr" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords"
        content="wrappixel, admin dashboard, html css dashboard, web dashboard, bootstrap 5 admin, bootstrap 5, css3 dashboard, bootstrap 5 dashboard, Monsterlite admin bootstrap 5 dashboard, frontend, responsive bootstrap 5 admin template, Monster admin lite design, Monster admin lite dashboard bootstrap 5 dashboard template">
    <meta name="description"
        content="Monster Lite is powerful and clean admin dashboard template, inpired from Bootstrap Framework">
    <meta name="robots" content="noindex,nofollow">
    <title>Monster Lite Template by WrapPixel</title>
    <link rel="canonical" href="https://www.wrappixel.com/templates/monster-admin-lite/" />
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="${pageContext.request.contextPath }/resources/admin_img/favicon.png">
    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath }/resources/admin_plugins/chartist/dist/chartist.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath }/resources/admin_css/style.min.css" rel="stylesheet">
    <link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/style.default.css"
	id="theme-stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>
<!-- ============================================================== -->
    <script src="<c:url value='/resources/admin_plugins/jquery/dist/jquery.min.js'/>"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="<c:url value='/resources/admin_plugins/bootstrap/dist/js/bootstrap.bundle.min.js'/>"></script>
    <script src="<c:url value='/resources/admin_js/app-style-switcher.js'/>"></script>
    <!--Wave Effects -->
    <script src="<c:url value='/resources/admin_js/waves.js'/>"></script>
    <!--Menu sidebar -->
    <script src="<c:url value='/resources/admin_js/sidebarmenu.js'/>"></script>
    <!--Custom JavaScript -->
    <script src="<c:url value='/resources/admin_js/custom.js'/>"></script>
    <!--This page JavaScript -->
    <!--flot chart-->
    <script src="<c:url value='/resources/admin_plugins/flot/jquery.flot.js'/>"></script>
    <script src="<c:url value='/resources/admin_plugins/flot.tooltip/js/jquery.flot.tooltip.min.js'/>"></script>
    <script src="<c:url value='/resources/admin_js/pages/dashboards/dashboard1.js'/>"></script>
	<!-- google maps api -->
    <script src="http://maps.google.com/maps/api/js?sensor=true"></script>
    <script src="${pageContext.request.contextPath }/resources/admin_plugins/gmaps/gmaps.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/admin_plugins/gmaps/jquery.gmaps.js"></script>
    <!--Custom JavaScript -->
    <script src="${pageContext.request.contextPath }/resources/admin_js/custom.js"></script>
    
<body>
    <!-- ============================================================== -->
    <!-- Preloader - style you can find in spinners.css -->
    <!-- ============================================================== -->
    <div class="preloader">
        <div class="lds-ripple">
            <div class="lds-pos"></div>
            <div class="lds-pos"></div>
        </div>
    </div>
    <!-- ============================================================== -->
    <!-- Main wrapper - style you can find in pages.scss -->
    <!-- ============================================================== -->
    <div id="main-wrapper" data-layout="vertical" data-navbarbg="skin6" data-sidebartype="full"
        data-sidebar-position="absolute" data-header-position="absolute" data-boxed-layout="full">
        <!-- ============================================================== -->
        <!-- Topbar header - style you can find in pages.scss -->
        <!-- ============================================================== -->
        <header class="topbar" data-navbarbg="skin6">
            <nav class="navbar top-navbar navbar-expand-md navbar-dark">
                <div class="navbar-header" data-logobg="skin6">
                    <!-- ============================================================== -->
                    <!-- Logo -->
                    <!-- ============================================================== -->
                    <a class="navbar-brand" href="<c:url value='/admin/main'/>" style="background:#2CCE8D">
                        <%-- <!-- Logo icon --> --%>
                        <img src="${pageContext.request.contextPath }/resources/img/farming-logo-w.png"
			               alt="Directory logo" style="width: 120px; padding: 2px; display:inline-block;">
			               <span style="font-size:16px;font-weight:400;padding-left:4px;color: white; font-weight: bold;">관리자모드</span>
                    </a>
                    <!-- ============================================================== -->
                    <!-- End Logo -->
                    <!-- ============================================================== -->
                    <!-- ============================================================== -->
                    <!-- toggle and nav items -->
                    <!-- ============================================================== -->
                    <a class="nav-toggler waves-effect waves-light text-dark d-block d-md-none"
                        href="javascript:void(0)"><i class="ti-menu ti-close"></i></a>
                </div>
                <!-- ============================================================== -->
                <!-- End Logo -->
                <!-- ============================================================== -->
                <div class="navbar-collapse collapse" id="navbarSupportedContent" data-navbarbg="skin5" style="background:#FCFCFC">
                    
                    <!-- ============================================================== -->
                    <!-- toggle and nav items -->
                    <!-- ============================================================== -->
                    <ul class="navbar-nav me-auto mt-md-0 ">
                        <!-- ============================================================== -->
                        <!-- Search -->
                        <!-- ============================================================== -->

                        <li class="nav-item hidden-sm-down">
                            <form class="app-search ps-3">
                                <input type="text" class="form-control" placeholder="Search for..."> <a
                                    class="srh-btn"><i class="ti-search"></i></a>
                            </form>
                        </li>
                    </ul>

                    <!-- ============================================================== -->
                    <!-- Right side toggle and nav items -->
                    <!-- ============================================================== -->
                    <ul class="navbar-nav ms-auto">
                        <!-- ============================================================== -->
                        <!-- User profile and search -->
                        <!-- ============================================================== -->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle active fas fa-user" href="#" id="docsDropdownMenuLink" data-bs-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false" style="color:#2CCE8D">
							<div class="dropdown-menu" aria-labelledby="docsDropdownMenuLink">
								<a class="dropdown-item" href="<c:url value='admin/category/list'/>">카테고리</a>
                               
                             </div>
                            </a>
                            <ul class="dropdown-menu show" aria-labelledby="navbarDropdown"></ul>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>
        <!-- ============================================================== -->
        <!-- End Topbar header -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <aside class="left-sidebar" data-sidebarbg="skin6">
            <!-- Sidebar scroll-->
            <div class="scroll-sidebar">
                <!-- Sidebar navigation-->
                <nav class="sidebar-nav">
                    <ul id="sidebarnav">
                        <!-- User Profile-->
                        <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link"
                                href="<c:url value='/admin/main'/>" aria-expanded="false"><i class="me-3 far fa-clock fa-fw"
                                    aria-hidden="true"></i><span class="hide-menu">Dashboard</span></a></li>
                        <li class="sidebar-item drop"> <a class="sidebar-link waves-effect waves-dark sidebar-link"
                                href="<c:url value='/admin/pagesProfile'/>" aria-expanded="false">
                                <i class="me-3 fa fa-user" aria-hidden="true"></i><span
                                    class="hide-menu">회원조회</span></a>
                                    
                                    <ul>
                                    	<li></li>
                                    </ul>
                        </li>
                        <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link"
                                href="<c:url value='/admin/category/list'/>" aria-expanded="false"><i class="me-3 fa fa-table"
                                    aria-hidden="true"></i><span class="hide-menu">카테고리</span></a></li>
                        <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link"
                                href="<c:url value='/admin/error'/>" aria-expanded="false"><i class="me-3 fa fa-info-circle"
                                    aria-hidden="true"></i><span class="hide-menu">Q&A</span></a></li>
                        <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link"
                                href="<c:url value='/admin/pagesBlank'/>" aria-expanded="false"><i class="me-3 fa fa-columns"
                                    aria-hidden="true"></i><span class="hide-menu">견적서 관리</span></a></li>
                        <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link"
                                href="<c:url value='/admin/iconFontawesome'/>" aria-expanded="false"><i class="me-3 fa fa-font"
                                    aria-hidden="true"></i><span class="hide-menu">Icon</span></a></li>
                        <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link"
                                href="<c:url value='/admin/mapGoogle'/>" aria-expanded="false"><i class="me-3 fa fa-globe"
                                    aria-hidden="true"></i><span class="hide-menu">Google Map</span></a></li>
                        
                        
                       
                    </ul>

                </nav>
                <!-- End Sidebar navigation -->
            </div>
            <!-- End Sidebar scroll-->
        </aside>
        <!-- ============================================================== -->
        <!-- End Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Page wrapper  -->
        <!-- ============================================================== -->  