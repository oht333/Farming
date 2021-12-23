<%@ include file="../adminInc/a_top.jsp" %>
        <!--/. NAV TOP  -->
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">

                    <li>
                        <a href="<c:url value='/admin/main'/>"><i class="fa fa-dashboard"></i> Dashboard</a>
                    </li>
                    <li>
                        <a href="<c:url value='/admin/uiElements'/>"><i class="fa fa-desktop"></i> UI Elements</a>
                    </li>
					 
					 <li>
                        <a href="#" class="active-menu"><i class="fa fa-sitemap"></i> Charts<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="<c:url value='/admin/chart'/>">Charts JS</a>
                            </li>
                            <li>
                                <a href="<c:url value='/admin/morris-chart'/>">Morris Chart</a>
                            </li>
							</ul>
						</li>	
                    <li>
                        <a href="<c:url value='/admin/tabPanel'/>"><i class="fa fa-qrcode"></i> Tabs & Panels</a>
                    </li>
                    
                    <li>
                        <a href="<c:url value='/admin/table'/>"><i class="fa fa-table"></i> Responsive Tables</a>
                    </li>
                    <li>
                        <a href="<c:url value='/admin/form'/>"><i class="fa fa-edit"></i> Forms </a>
                    </li>


                    <li>
                        <a href="#"><i class="fa fa-sitemap"></i> Multi-Level Dropdown<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="#">Second Level Link</a>
                            </li>
                            <li>
                                <a href="#">Second Level Link</a>
                            </li>
                            <li>
                                <a href="#">Second Level Link<span class="fa arrow"></span></a>
                                <ul class="nav nav-third-level">
                                    <li>
                                        <a href="#">Third Level Link</a>
                                    </li>
                                    <li>
                                        <a href="#">Third Level Link</a>
                                    </li>
                                    <li>
                                        <a href="#">Third Level Link</a>
                                    </li>

                                </ul>

                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="<c:url value='/admin/empty'/>"><i class="fa fa-fw fa-file"></i> Empty Page</a>
                    </li>
                </ul>

            </div>

        </nav>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper">
		  <div class="header"> 
                        <h1 class="page-header">
                             Charts <small>Show up your stats</small>
                        </h1>
						<ol class="breadcrumb">
					  <li><a href="#">Home</a></li>
					  <li><a href="#">Charts</a></li>
					  <li class="active">Data</li>
					</ol> 
									
		</div>
            <div id="page-inner"> 
             
                <div class="row"> 
                    
                      
                               <div class="col-md-6 col-sm-12 col-xs-12">                     
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Bar Chart
                        </div>
                        <div class="panel-body">
                            <div id="morris-bar-chart"></div>
                        </div>
                    </div>            
                </div>
                      <div class="col-md-6 col-sm-12 col-xs-12">                     
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Area Chart
                        </div>
                        <div class="panel-body">
                            <div id="morris-area-chart"></div>
                        </div>
                    </div>            
                </div> 
                
           </div>
                 <!-- /. ROW  -->
                <div class="row">                     
                      
                               <div class="col-md-6 col-sm-12 col-xs-12">                     
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Line Chart
                        </div>
                        <div class="panel-body">
                            <div id="morris-line-chart"></div>
                        </div>
                    </div>            
                </div>
                      <div class="col-md-6 col-sm-12 col-xs-12">                     
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Donut Chart
                        </div>
                        <div class="panel-body">                            
							<div id="morris-donut-chart"></div>
                        </div>
                    </div>            
                </div> 
                
           </div>
                 <!-- /. ROW  -->
				 <footer><p>All right reserved. Template by: <a href="http://webthemez.com">WebThemez.com</a></p></footer>
				</div>
             <!-- /. PAGE INNER  -->
            </div>
         <!-- /. PAGE WRAPPER  -->
        </div>
            <!-- jQuery Js -->
    <script src="<c:url value='/resources/admin_js/jquery-1.10.2.js'/>"></script>
      <!-- Bootstrap Js -->
    <script src="<c:url value='/resources/admin_js/bootstrap.min.js'/>"></script>
    <!-- Metis Menu Js -->
    <script src="<c:url value='/resources/admin_js/jquery.metisMenu.js'/>"></script>
     <!-- Morris Chart Js -->
     <script src="<c:url value='/resources/admin_js/morris/raphael-2.1.0.min.js'/>"></script>
    <script src="<c:url value='/resources/admin_js/morris/morris.js'/>"></script>
      <!-- Custom Js -->
    <script src="<c:url value='/resources/admin_js/custom-scripts.js'/>"></script>