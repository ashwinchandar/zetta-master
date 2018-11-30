<%@ page import="com.zetta.bean.AnnounceBean"%>
<%@ page import="java.util.List"%>
<%@ page import="com.zetta.dao.AnnounceDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<!doctype html>
<html class="no-js" lang="en">
<%@ include file="header.jsp"%>

<body>
	<!-- Single pro tab review Start-->
	<div class="single-pro-review-area mt-t-30 mg-b-15">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="product-payment-inner-st">
						<ul id="myTabedu1" class="tab-review-design">
							<li class="active"><a href="">Add Calendar</a></li>
						</ul>
						<div id="myTabContent" class="tab-content custom-product-edit">
							<div class="product-tab-list tab-pane fade active in"
								id="description">
								<div class="row">
									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="review-content-section">
											<div id="dropzone1" class="pro-ad">
												<form action="/upload" class="needsclick add-professors"
													id="demo1-upload">
													<div class="row">
														<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
															<div class="form-group-inner">
																<div class="row">
																	<div class="col-lg-3 col-md-12 col-sm-12 col-xs-12">
																		<label class="login2 pull-right pull-right-pro"></label>
																	</div>
																	<div class="col-lg-9 col-md-12 col-sm-12 col-xs-12">
																		<div
																			class="file-upload-inner file-upload-inner-right ts-forms">
																			<div class="input append-big-btn">
																				<div class="file-button">
																					Browse <input type="file"
																						onchange="document.getElementById('append-big-btn').value = this.value;">
																				</div>
																				<input type="text" id="append-big-btn"
																					placeholder="no file selected">
																			</div>
																		</div>
																		<div class="payment-adress">
																			<button type="submit"
																				class="btn btn-primary waves-effect waves-light">Upload</button>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</form>
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
	<!-- morrisjs JS
		============================================ -->
	<script src="js/sparkline/jquery.sparkline.min.js"></script>
	<script src="js/sparkline/jquery.charts-sparkline.js"></script>
	<!-- calendar JS
		============================================ -->
	<script src="js/calendar/moment.min.js"></script>
	<script src="js/calendar/fullcalendar.min.js"></script>
	<script src="js/calendar/fullcalendar-active.js"></script>
	<!-- maskedinput JS
		============================================ -->
	<script src="js/jquery.maskedinput.min.js"></script>
	<script src="js/masking-active.js"></script>
	<!-- datepicker JS
		============================================ -->
	<script src="js/datepicker/jquery-ui.min.js"></script>
	<script src="js/datepicker/datepicker-active.js"></script>
	<!-- form validate JS
		============================================ -->
	<!-- <script src="js/form-validation/jquery.form.min.js"></script>
    <script src="js/form-validation/jquery.validate.min.js"></script>
    <script src="js/form-validation/form-active.js"></script> -->
	<!-- dropzone JS
		============================================ -->
	<script src="js/dropzone/dropzone.js"></script>
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

