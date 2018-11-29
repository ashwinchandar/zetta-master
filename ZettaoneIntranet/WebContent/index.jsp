<%@ page import="com.zetta.bean.AnnounceBean"%>
<%@ page import="java.util.List"%>
<%@ page import="com.zetta.dao.AnnounceDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  

<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Home | Zettaone Technology</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- favicon
		============================================ -->
    <link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
    <!-- Google Fonts
		============================================ -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700,900" rel="stylesheet">
    <!-- Bootstrap CSS
		============================================ -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Bootstrap CSS
		============================================ -->
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <!-- owl.carousel CSS
		============================================ -->
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link rel="stylesheet" href="css/owl.theme.css">
    <link rel="stylesheet" href="css/owl.transitions.css">
    <!-- animate CSS
		============================================ -->
    <link rel="stylesheet" href="css/animate.css">
    <!-- normalize CSS
		============================================ -->
    <link rel="stylesheet" href="css/normalize.css">
    <!-- meanmenu icon CSS
		============================================ -->
    <link rel="stylesheet" href="css/meanmenu.min.css">
    <!-- main CSS
		============================================ -->
    <link rel="stylesheet" href="css/main.css">
    <!-- educate icon CSS
		============================================ -->
    <link rel="stylesheet" href="css/educate-custon-icon.css">
    <!-- morrisjs CSS
		============================================ -->
    <link rel="stylesheet" href="css/morrisjs/morris.css">
    <!-- mCustomScrollbar CSS
		============================================ -->
    <link rel="stylesheet" href="css/scrollbar/jquery.mCustomScrollbar.min.css">
    <!-- metisMenu CSS
		============================================ -->
    <link rel="stylesheet" href="css/metisMenu/metisMenu.min.css">
    <link rel="stylesheet" href="css/metisMenu/metisMenu-vertical.css">
    <!-- calendar CSS
		============================================ -->
    <link rel="stylesheet" href="css/calendar/fullcalendar.min.css">
    <link rel="stylesheet" href="css/calendar/fullcalendar.print.min.css">
    <!-- style CSS
		============================================ -->
    <link rel="stylesheet" href="style.css">
    <!-- responsive CSS
		============================================ -->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- modernizr JS
		============================================ -->
    <script src="js/vendor/modernizr-2.8.3.min.js"></script>
</head>



 <jsp:body> 
  
    <!-- Start Left menu area -->
    <div class="left-sidebar-pro">
        <nav id="sidebar" class="">
            <div class="sidebar-header">
                <a href="home.jsp"><img class="main-logo" src="img/logo/logo.png" alt="" /></a>
                <strong><a href="home.jsp"><img src="img/logo/logosn.png" alt="" /></a></strong>
            </div>
            <div class="left-custom-menu-adp-wrap comment-scrollbar">
                <nav class="sidebar-nav left-sidebar-menu-pro">
                    <ul class="metismenu" id="menu1">
                    	<li>
                            <center><a aria-expanded="false"><br />Quick Lookup</a></center>
                        </li>
                        <li>
                            <a title="Zettaone website" href="http://www.zettaone.com/" target="_blank" aria-expanded="false"><span class="educate-icon educate-library icon-wrap sub-icon-mg" aria-hidden="true"></span> <span class="mini-click-non">Company Website</span></a>
                        </li>
                        <li class="active">
                            <a title="Organization chart" href="organization.jsp" aria-expanded="false"><span class="educate-icon educate-charts icon-wrap sub-icon-mg" aria-hidden="true"></span> <span class="mini-click-non">Organization Chart</span></a>
                        </li>
                        <li>
                            <a title="Employee directory" href="employeedirectory.jsp" aria-expanded="false"><span class="educate-icon educate-professor icon-wrap sub-icon-mg" aria-hidden="true"></span> <span class="mini-click-non">Employee Directory</span></a>
                        </li>
                        <li>
                            <a title="QMS" href="qms.jsp" aria-expanded="false"><span class="educate-icon educate-data-table icon-wrap sub-icon-mg" aria-hidden="true"></span> <span class="mini-click-non">QMS</span></a>
                        </li>
                        <li>
                            <a title="Knowledge Base" href="knowledgebase.jsp" aria-expanded="false"><span class="educate-icon educate-form icon-wrap sub-icon-mg" aria-hidden="true"></span> <span class="mini-click-non">Knowledge Base</span></a>
                        </li>
                        <li>
                            <a title="Calendar" href="calendar.jsp" aria-expanded="false"><span class="educate-icon educate-event icon-wrap sub-icon-mg" aria-hidden="true"></span> <span class="mini-click-non">Company Calendar</span></a>
                        </li>
                        <li>
                            <a title="IT Help Desk" href="https://zettaone.on.spiceworks.com/portal/tickets" target="_blank" aria-expanded="false"><span class="educate-icon educate-apps icon-wrap sub-icon-mg" aria-hidden="true"></span> <span class="mini-click-non">IT Help Desk</span></a>
                        </li>  
                    </ul>
                </nav>
            </div>
        </nav>
    </div>
    <!-- End Left menu area -->
    <!-- Start Welcome area -->
    <div class="all-content-wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="logo-pro">
                        <a href="home.jsp"><img class="main-logo" src="img/logo/logo.png" alt="" /></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="header-advance-area">
            <div class="header-top-area">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="header-top-wraper">
                                <div class="row">
                                    <div class="col-lg-1 col-md-0 col-sm-1 col-xs-12">
                                        <div class="menu-switcher-pro">
                                            <button type="button" id="sidebarCollapse" class="btn bar-button-pro header-drl-controller-btn btn-info navbar-btn">
													<i class="educate-icon educate-nav"></i>
												</button>
                                        </div>
                                    </div>
                                    <div class="col-lg-10 col-md-12 col-sm-6 col-xs-12">
                                        <div class="header-top-menu tabl-d-n">
                                            <ul class="nav navbar-nav mai-top-nav">
                                                <li class="nav-item"><a href="home.jsp" class="nav-link">Home</a>
                                                </li>
                                                <li class="nav-item"><a href="employeedirectory.jsp" class="nav-link">Employee Directory</a>
                                                </li>
                                                <li class="nav-item"><a href="qms.jsp" class="nav-link">QMS</a>
                                                </li> 
                                                <li class="nav-item"><a href="knowledgebase.jsp" class="nav-link">Knowledge Base</a>
                                                </li>
                                                <li class="nav-item"><a href="calendar.jsp" class="nav-link">Company Calendar</a>
                                                </li>
                                                <li class="nav-item"><a href="login.jsp" class="nav-link">Login</a>
                                                </li>  
                                            </ul>
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div> 
        </div>
         
        <div class="blog-details-area mg-b-15">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="blog-details-inner">
                            <div class="row">
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="latest-blog-single blog-single-full-view">
                                        <div class="blog-image">
                                            <a href="#"><img src="img/org/raw.png" alt="" />
												</a> 
                                        </div>
                                        <!-- <div class="blog-details blog-sig-details"> 
                                        	<h1><a class="blog-ht">About</a></h1>
                                            <h1><a class="blog-ht">Zettaone is branded by its Expertise, Commitment & High Standard of Quality.</a></h1>
                                            <p>Zettaone Technologies, established in 2007 and offering End-End engineering consulting services to multiple industry segments like Semiconductor, Automotive, Industrial, IoT and Telecommunication. We have a highly capable team of System Architects to Product Application / Support Professionals who know how to drive the project and deliver results.</p>
                                            <p>"We strongly believe that our unique expertise is about we providing Timely and Cost-Effective support with Quality. Our Design and Manufacturing abilities are the key factor for our clients to expect single point of solution, all under one roof"</p>
                                        </div> -->
                                    </div>
                                </div>
                            </div> 
                        </div>
                    </div>
                </div>
            </div>
        </div>
         
      <div class="single-pro-review-area mt-t-30 mg-b-15">
            <div class="container-fluid">
                <div class="row"> 
                    <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
                        <div class="product-payment-inner-st res-mg-t-30 analysis-progrebar-ctn">
                            <ul id="myTabedu1" class="tab-review-design">
                                <li class="active"><a href="#description">Announcement</a></li> 
                            </ul>
                            <div id="myTabContent" class="tab-content custom-product-edit">
                                <div class="product-tab-list tab-pane fade active in" id="description">
                               
                                <form action="" method="post"> 
											
                                    <div class="row">
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"> 
                                         	 <%!
                                             	AnnounceDAO adao = new AnnounceDAO();
                                             	List<AnnounceBean> list = adao.getAnnouncements(); 
                                             %> 
											<% 
                                             	request.setAttribute("announcement", list);
                                             %>
                                             <c:forEach items="${announcement}" var="announce">
                                            <div class="review-content-section">
                                                <div class="chat-discussion" style="height: auto"> 
                                                      <div class="message">
                                                            <a class="message-author full-right" href="#"> ${announce.title} </a><br />	
                                                            <span class="message-date"> ${announce.date} </span>
                                                            <span class="message-content">   ${announce.announcement}  </span> 
                                                      </div>  
                                                </div>
                                            </div>
                                           </c:forEach> 
                                        </div>
                                    </div>
                                </div>  
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                        <div class="profile-info-inner">
                            <div class="profile-img">
                                <img src="img/profile/1.jpg" alt="" />
                            </div>
                            <div class="profile-details-hr">
                                <div class="row">
                                    <div class="col-lg-6 col-md-12 col-sm-12 col-xs-6">
                                        <div class="address-hr">
                                            <p><b>Name</b><br /> Fly Zend</p>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-12 col-sm-12 col-xs-6">
                                        <div class="address-hr tb-sm-res-d-n dps-tb-ntn">
                                            <p><b>Designation</b><br /> Head of Dept.</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-6 col-md-12 col-sm-12 col-xs-6">
                                        <div class="address-hr">
                                            <p><b>Email ID</b><br /> fly@gmail.com</p>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-12 col-sm-12 col-xs-6">
                                        <div class="address-hr tb-sm-res-d-n dps-tb-ntn">
                                            <p><b>Phone</b><br /> +01962067309</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="address-hr">
                                            <p><b>Address</b><br /> E104, catn-2, Chandlodia Ahmedabad Gujarat, UK.</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                                        <div class="address-hr">
                                            <a href="#"><i class="fa fa-facebook"></i></a>
                                            <h3>500</h3>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                                        <div class="address-hr">
                                            <a href="#"><i class="fa fa-twitter"></i></a>
                                            <h3>900</h3>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                                        <div class="address-hr">
                                            <a href="#"><i class="fa fa-google-plus"></i></a>
                                            <h3>600</h3>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>
          
         
    </div>

    <!-- jquery
		============================================ -->
    <script src="js/vendor/jquery-1.12.4.min.js"></script>
    <!-- bootstrap JS
		============================================ -->
    <script src="js/bootstrap.min.js"></script>
    <!-- wow JS
		============================================ -->
    <script src="js/wow.min.js"></script>
    <!-- price-slider JS
		============================================ -->
    <script src="js/jquery-price-slider.js"></script>
    <!-- meanmenu JS
		============================================ -->
    <script src="js/jquery.meanmenu.js"></script>
    <!-- owl.carousel JS
		============================================ -->
    <script src="js/owl.carousel.min.js"></script>
    <!-- sticky JS
		============================================ -->
    <script src="js/jquery.sticky.js"></script>
    <!-- scrollUp JS
		============================================ -->
    <script src="js/jquery.scrollUp.min.js"></script>
    <!-- counterup JS
		============================================ -->
    <script src="js/counterup/jquery.counterup.min.js"></script>
    <script src="js/counterup/waypoints.min.js"></script>
    <script src="js/counterup/counterup-active.js"></script>
    <!-- mCustomScrollbar JS
		============================================ -->
    <script src="js/scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="js/scrollbar/mCustomScrollbar-active.js"></script>
    <!-- metisMenu JS
		============================================ -->
    <script src="js/metisMenu/metisMenu.min.js"></script>
    <script src="js/metisMenu/metisMenu-active.js"></script>
    <!-- morrisjs JS
		============================================ -->
    <script src="js/morrisjs/raphael-min.js"></script>
    <script src="js/morrisjs/morris.js"></script>
    <script src="js/morrisjs/morris-active.js"></script>
    <!-- morrisjs JS
		============================================ -->
    <script src="js/sparkline/jquery.sparkline.min.js"></script>
    <script src="js/sparkline/jquery.charts-sparkline.js"></script>
    <script src="js/sparkline/sparkline-active.js"></script>
    <!-- calendar JS
		============================================ -->
    <script src="js/calendar/moment.min.js"></script>
    <script src="js/calendar/fullcalendar.min.js"></script>
    <script src="js/calendar/fullcalendar-active.js"></script>
    <!-- plugins JS
		============================================ -->
    <script src="js/plugins.js"></script>
    <!-- main JS
		============================================ -->
    <script src="js/main.js"></script>
     
</jsp:body>

</html>