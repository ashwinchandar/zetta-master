<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<%@ page import="com.zetta.bean.AnnounceBean"%> 
<%@ page import="com.zetta.dao.AnnounceDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> 
 
<!doctype html>
<html class="no-js" lang="en">
<%@ include file = "header.jsp" %>

  <body><br>
  		<div class="blog-details-area mg-b-15">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="blog-details-inner">
                            <div class="row">
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="latest-blog-single blog-single-full-view">
                                        <div class="blog-image">
                                            <img src="img/org/raw.png" alt="" />  
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
                                         	<%--  <% 
                                         	 	AnnounceDAO adao = new AnnounceDAO();
												List<AnnounceBean> list = adao.getAnnouncements(); 
 												request.setAttribute("announcement", list);
 										     %>  --%> 
 										     
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
                                    <div class="col-lg-12">
                                        <div class="address-hr">
                                        <h2>Happy birthday!</h2>
                                        <h1>Zettaone</h1>
                                            <p> We hope all your birthday wishes and dreams come true.</p>
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
     
</body>

</html>