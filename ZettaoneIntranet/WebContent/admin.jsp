<%@ page import="com.zetta.bean.AnnounceBean"%>
<%@ page import="java.util.List"%>
<%@ page import="com.zetta.dao.AnnounceDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<!doctype html>
<html class="no-js" lang="en">
<%@ include file = "headerout.jsp" %> 
  
	<body> 
        <div class="widgets-programs-area">
            <div class="container-fluid"><br />
                <div class="row">
                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
                        <div class="hpanel widget-int-shape responsive-mg-b-30">
                             <form action="adminPage" method="post"> 
                            <Button name="submit" id="submit" value="adminListing">
                            <div class="panel-body">
                                <div class="stats-title pull-left">
                                    <h4>Manage Admin</h4>
                                </div>
                                <div class="stats-icon pull-right">
                                    <i class="educate-icon educate-apps"></i>
                                </div>
                                <div class="m-t-xl widget-cl-1"> 
                                    <small>
										The Admin has access to all administrative tasks &amp; can: Create, Edit, Update &amp; Delete admin users.	 
									</small>
                                </div>
                            </div>
                            </Button>
                           <!--  <input type="hidden" name="submit" id="submit" value="adminListing"> -->
                           </form>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
                        <div class="hpanel widget-int-shape responsive-mg-b-30">
                            <form action="employeeDirectory" method="post"> 
	                            <Button name="submit" id="submit" value="employeeListing">
	                            <div class="panel-body">
	                                <div class="stats-title pull-left">
	                                    <h4>Manage Employee</h4>
	                                </div>
	                                <div class="stats-icon pull-right">
	                                    <i class="educate-icon educate-professor"></i>
	                                </div>
	                                <div class="m-t-xl widget-cl-1"> 
	                                    <small>
											You can Add New Employee details as well as Edit employee details &amp; Drop employee from the record.	 
										</small>
	                                </div>
	                            </div>
	                            </Button>
	                           <!--  <input type="hidden" name="submit" id="submit" value="adminListing"> -->
                           </form>
                        </div>
                    </div> 
                    
                    
                    
                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
                        <div class="hpanel widget-int-shape responsive-mg-b-30">
                        
                        
                           <form action="orgChart" method="post"> 
	                            <Button name="submit" id="submit" value="orgListing">
	                            <div class="panel-body">
	                                <div class="stats-title pull-left">
	                                    <h4>Add Company Chart</h4>
	                                </div>
	                                <div class="stats-icon pull-right">
	                                    <i class="educate-icon educate-professor"></i>
	                                </div>
	                                <div class="m-t-xl widget-cl-1"> 
	                                    <small>
											You can add organization chart as well as drop organization chart as of every update may applied.	 
										</small>
	                                </div>
	                            </div>
	                            </Button>
	                           <!--  <input type="hidden" name="submit" id="submit" value="adminListing"> -->
                           </form>
                           
                           
                        </div>
                    </div>  
                    
                    
                    
                    
                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
                        <div class="hpanel widget-int-shape responsive-mg-b-30 res-tablet-mg-t-30 dk-res-t-pro-30">
                         <a href="add_qms.jsp">
                            <div class="panel-body">
                                <div class="stats-title pull-left">
                                    <h4>Add QMS</h4>
                                </div>
                                <div class="stats-icon pull-right">
                                    <i class="educate-icon educate-data-table"></i>
                                </div>
                                <div class="m-t-xl widget-cl-3"> 
                                    <small>
										You can add Quality Management Documents as well as drop QMS document.
									</small>
                                </div>
                            </div>
                          </a>
                        </div>
                    </div> 
                </div>
                <br />
                <div class="row">
                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
                        <div class="hpanel widget-int-shape responsive-mg-b-30">
                            <a href="add_knowledgebase.jsp">
                            <div class="panel-body">
                                <div class="stats-title pull-left">
                                    <h4>Add KnowledgeBase</h4>
                                </div>
                                <div class="stats-icon pull-right">
                                    <i class="educate-icon educate-form"></i>
                                </div>
                                <div class="m-t-xl widget-cl-1"> 
                                    <small>
										You can Add New Knowledge Base documents as well as Drop KB document from the record.	 
									</small>
                                </div>
                            </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
                        <div class="hpanel widget-int-shape responsive-mg-b-30">
                         <a href="add_calendar.jsp">
                            <div class="panel-body"> 
                                <div class="stats-title pull-left">
                                    <h4>Add Calendar</h4>
                                </div>
                                <div class="stats-icon pull-right">
                                    <i class="educate-icon educate-event"></i>
                                </div>
                                <div class="m-t-xl widget-cl-2"> 
                                    <small>
	 									You can Add New Company Calendar as well as Drop calendar from the record.
									</small>
                                </div>
                            </div>
                            </a>
                        </div>
                    </div>
                    
                    <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
                        <div class="hpanel widget-int-shape responsive-mg-b-30">
                            <form action="AnnouncePage" method="post"> 
	                            <Button name="submit" id="submit" value="announcementListing">
	                            <div class="panel-body">
	                                <div class="stats-title pull-left">
	                                    <h4>Manage Announcement</h4>
	                                </div>
	                                <div class="stats-icon pull-right">
	                                    <i class="educate-icon educate-department"></i>
	                                </div>
	                                <div class="m-t-xl widget-cl-1"> 
	                                    <small>
											You can add organization important announcement as well as drop the announcement.	 
										</small>
	                                </div>
	                            </div>
	                            </Button> 
                           </form>
                        </div>
                    </div> 
                    
                    
                </div><br /><br /><br /><br /><br /><br /><br /> 
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
    <!-- mCustomScrollbar JS
		============================================ -->
    <script src="js/scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="js/scrollbar/mCustomScrollbar-active.js"></script>
    <!-- metisMenu JS
		============================================ -->
    <script src="js/metisMenu/metisMenu.min.js"></script>
    <script src="js/metisMenu/metisMenu-active.js"></script>
    <!-- data table JS
		============================================ -->
    <script src="js/data-table/bootstrap-table.js"></script>
    <script src="js/data-table/tableExport.js"></script>
    <script src="js/data-table/data-table-active.js"></script>
    <script src="js/data-table/bootstrap-table-editable.js"></script>
    <script src="js/data-table/bootstrap-editable.js"></script>
    <script src="js/data-table/bootstrap-table-resizable.js"></script>
    <script src="js/data-table/colResizable-1.5.source.js"></script>
    <script src="js/data-table/bootstrap-table-export.js"></script>
    <!--  editable JS
		============================================ -->
    <script src="js/editable/jquery.mockjax.js"></script>
    <script src="js/editable/mock-active.js"></script>
    <script src="js/editable/select2.js"></script>
    <script src="js/editable/moment.min.js"></script>
    <script src="js/editable/bootstrap-datetimepicker.js"></script>
    <script src="js/editable/bootstrap-editable.js"></script>
    <script src="js/editable/xediable-active.js"></script>
    <!-- Chart JS
		============================================ -->
    <script src="js/chart/jquery.peity.min.js"></script>
    <script src="js/peity/peity-active.js"></script>
    <!-- tab JS
		============================================ -->
    <script src="js/tab.js"></script>
    <!-- plugins JS
		============================================ -->
    <script src="js/plugins.js"></script>
    <!-- main JS
		============================================ -->
    <script src="js/main.js"></script>
    <!-- tawk chat JS
		============================================ -->
    <script src="js/tawk-chat.js"></script>
</body>

</html>




<%-- <!DOCTYPE html> 
<html>
<head>
<title>Zettaone Admin</title>
<link rel="stylesheet"
	href="http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/owl.carousel.css">
<link rel="stylesheet" href="css/owl.transitions.css">
<link rel="stylesheet" href="css/animate.min.css">
<link rel="stylesheet" href="css/lightbox.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/preloader.css">
<link rel="stylesheet" href="css/image.css">
<link rel="stylesheet" href="css/icon.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/responsive.css">
</head>
<body>
	<center>
		<br>
		<h2>Hi ${username}. Welcome to Zettaone Admin Portal!</h2>

		<!-- <h2>
            <a href="/new">Add New Book</a>
            &nbsp;&nbsp;&nbsp;
            <a href="/list">List All Books</a>
        </h2> -->
        
	</center>
	<br>
	<h2>Zettaone Directory</h2>
	<div align="center">
		  <p style="color: green" align="center">${deletesuccessmessage}</p>   
		<table class="table">
			<thead class="thead-dark">
				<tr>
					<th scope="col">ID</th>
					<th scope="col">Name</th>
					<th scope="col">Gender</th>
					<th scope="col">DOB</th>
					<th scope="col">Department</th>
					<th scope="col">Designation</th>
					<th scope="col">Extention</th>
					<th scope="col">Mobile</th>
					<th scope="col">Email</th>
					<th scope="col">Skype</th>
					<th scope="col">Location</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="details" items="${list}">
					<tr> 
						<td>${details.empCardNo}</td>
						<td>${details.name}</td>
						<td>${details.gender}</td>
						<td>${details.dob}</td>
						<td>${details.department}</td>
						<td>${details.designation}</td>
						<td>${details.extention}</td>
						<td>${details.mobile}</td>
						<td>${details.email}</td>
						<td>${details.skype}</td>
						<td>${details.location}</td>
						
						 
                       <form action="loginRegister" method="post">
                       <input type="hidden" id="userid" name="userid" value='${details.empCardNo}'>
                        <button type="submit" name="submit" value="edit">Edit</button>
                       </form>
                       <form action="loginRegister" method="post">
                       <input type="hidden" id="userid" name="userid" value='${details.empCardNo}'>
                        <button type="submit" name="submit" value="delete">Delete</button>
                       </form> 
                        </td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html> --%>