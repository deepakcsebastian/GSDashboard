
<%@ page import="java.util.List" language="java"%>
<%@ page import="java.util.*" language="java"%>
<%@ page import="org.json.JSONArray" language="java"%>
<%@ page import="org.json.JSONObject" language="java"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- Tell the browser to be responsive to screen width -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<script src="js/dynatrace.js"></script>
<!-- Favicon icon -->
<link rel="icon" type="image/png" sizes="16x16"
	href="images/favicon.png">
<title>Globalization Services : Status Cockpit</title>
<!-- Bootstrap Core CSS -->
<link href="css/lib/bootstrap/bootstrap.min.css" rel="stylesheet">
<!-- Custom CSS -->

<link href="css/lib/calendar2/semantic.ui.min.css" rel="stylesheet">
<link href="css/lib/calendar2/pignose.calendar.min.css" rel="stylesheet">
<link href="css/lib/owl.carousel.min.css" rel="stylesheet" />
<link href="css/lib/owl.theme.default.min.css" rel="stylesheet" />
<link href="css/helper.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">


<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:** -->
<!--[if lt IE 9]>
    <script src="https:**oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https:**oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>

<body class="fix-header fix-sidebar">
	<!-- Preloader - style you can find in spinners.css -->
	<div class="preloader">
		<svg class="circular" viewBox="25 25 50 50"> <circle
			class="path" cx="50" cy="50" r="20" fill="none" stroke-width="2"
			stroke-miterlimit="10" /> </svg>
	</div>
	<!-- Main wrapper  -->
	<div id="main-wrapper">
		<!-- header header  -->
		<div class="header">
			<nav class="navbar top-navbar navbar-expand-md navbar-light">

			<div class="navbar-collapse">
				<!-- toggle and nav items -->


				<!-- User profile and search -->
				<ul class="navbar-nav my-lg-0">




					<!-- Profile -->
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle text-muted  " href="#"
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img
							src="images/users/5.jpg" alt="user" class="profile-pic" /></a></li>
				</ul>
			</div>
			</nav>
		</div>
		<!-- End header header -->
		<!-- Left Sidebar  -->
		<div class="left-sidebar">
			<!-- Sidebar scroll-->
			<div class="scroll-sidebar">
				<!-- Sidebar navigation-->
				<nav class="sidebar-nav">
				<ul id="sidebarnav">
					<li class="nav-devider"></li>
					<li class="nav-label">Globalization Services</li>
					<li><a
						href="${pageContext.request.contextPath}/GSDashServlet?req=dashboard"
						aria-expanded="false"><i class="fa fa-tachometer"></i><span
							class="hide-menu">Dashboard</span></a></li>
					<li><a class="has-arrow  " href="#" aria-expanded="false"><i
							class="fa fa-tachometer"></i><span class="hide-menu">Tax
								Service </span></a>
						<ul aria-expanded="false" class="collapse">
							<li><a
								href="${pageContext.request.contextPath}/GSDashServlet?req=taasus2_2">US2
									d577daf1d taxservice </a></li>
						
							<li><a
								href="${pageContext.request.contextPath}/GSDashServlet?req=taaseu1">EU1
									a30e284f1 taxservice </a></li>
						</ul></li>

					<li><a class="has-arrow  " href="#" aria-expanded="false"><i
							class="fa fa-tachometer"></i><span class="hide-menu">SMIRS
						</span></a>
						<ul aria-expanded="false" class="collapse">
							<li><a
								href="${pageContext.request.contextPath}/GSDashServlet?req=smirsap1">AP1
									c86b00db6 smirs </a></li>
							<li><a
								href="${pageContext.request.contextPath}/GSDashServlet?req=smirscn1">CN1
									cfdb4715bd smirsapp </a></li>
						</ul></li>

					<li><a class="has-arrow  " href="#" aria-expanded="false"><i
							class="fa fa-tachometer"></i><span class="hide-menu">ACRS
						</span></a>
						<ul aria-expanded="false" class="collapse">
							<li><a
								href="${pageContext.request.contextPath}/GSDashServlet?req=acrseu11">EU1
									a9cb41d3c acrscore </a></li>
							<li><a
								href="${pageContext.request.contextPath}/GSDashServlet?req=acrseu13">EU1
									a9cb41d3c acrsmanagedatacore </a></li>
							<li><a
								href="${pageContext.request.contextPath}/GSDashServlet?req=acrseu12">EU1
									a6ccc8948 acrscore </a></li>
							<li><a
								href="${pageContext.request.contextPath}/GSDashServlet?req=acrseu14">EU1
									a6ccc8948 acrsmanagedatacore </a></li>
									
						</ul></li>

					<li><a class="has-arrow  " href="#" aria-expanded="false"><i
							class="fa fa-tachometer"></i><span class="hide-menu">SLH
								SAP HR ESS China </span></a>
						<ul aria-expanded="false" class="collapse">
							<li><a
								href="${pageContext.request.contextPath}/GSDashServlet?req=eosmap1">AP1
									ca02ae044 eow </a></li>
						</ul></li>
					<li><a class="has-arrow  " href="#" aria-expanded="false"><i
							class="fa fa-tachometer"></i><span class="hide-menu">STH </span></a>
						<ul aria-expanded="false" class="collapse">
					<li><a class="has-arrow  " href="#" aria-expanded="false"><i
							class="fa fa-tachometer"></i><span class="hide-menu">EU1 </span></a>
						<ul aria-expanded="false" class="collapse">
							<li><a
								href="${pageContext.request.contextPath}/GSDashServlet?req=stheu11">
									a7d9108fa cleatranslation </a></li>
							<li><a
								href="${pageContext.request.contextPath}/GSDashServlet?req=stheu12">
									a7d9108fa cdi</a></li>
							<li><a
								href="${pageContext.request.contextPath}/GSDashServlet?req=stheu13">
									a7d9108fa mtservice4sth</a></li>
							<li><a
								href="${pageContext.request.contextPath}/GSDashServlet?req=stheu14">
									a7d9108fa lqe</a></li>
							<li><a
								href="${pageContext.request.contextPath}/GSDashServlet?req=stheu15">
									a7d9108fa conversionservice</a></li>
							<li><a
								href="${pageContext.request.contextPath}/GSDashServlet?req=stheu16">
									a7d9108fa sap</a></li>
						</ul></li>
						<li><a class="has-arrow  " href="#" aria-expanded="false"><i
							class="fa fa-tachometer"></i><span class="hide-menu">US1 </span></a>
						<ul aria-expanded="false" class="collapse">
							<li><a
								href="${pageContext.request.contextPath}/GSDashServlet?req=sthus11">
									bedc362a1 cdi </a></li>
							<li><a
								href="${pageContext.request.contextPath}/GSDashServlet?req=sthus12">
									bedc362a1 sap</a></li>
						</ul></li>
						<li><a class="has-arrow  " href="#" aria-expanded="false"><i
							class="fa fa-tachometer"></i><span class="hide-menu">US2 </span></a>
						<ul aria-expanded="false" class="collapse">
							<li><a
								href="${pageContext.request.contextPath}/GSDashServlet?req=sthus21">
									deefb0b0b sap </a></li>
							<li><a
								href="${pageContext.request.contextPath}/GSDashServlet?req=sthus22">
									deefb0b0b cdi</a></li>
						</ul></li>
						<li><a class="has-arrow  " href="#" aria-expanded="false"><i
							class="fa fa-tachometer"></i><span class="hide-menu">AP1 </span></a>
						<ul aria-expanded="false" class="collapse">
							<li><a
								href="${pageContext.request.contextPath}/GSDashServlet?req=sthap11">
									c79c67af6 sap </a></li>
							<li><a
								href="${pageContext.request.contextPath}/GSDashServlet?req=sthap12">
									c79c67af6 cdi</a></li>
						</ul></li>
						</ul></li>
					<li><a class="has-arrow  " href="#" aria-expanded="false"><i
							class="fa fa-tachometer"></i><span class="hide-menu">Print
								Forms </span></a>
						<ul aria-expanded="false" class="collapse">
							<li><a
								href="${pageContext.request.contextPath}/GSDashServlet?req=pfseu1">PFS
									EU1 </a></li>
							<li><a
								href="${pageContext.request.contextPath}/GSDashServlet?req=pfsus1">PFS
									US1 </a></li>
						</ul></li>

					<li><a class="has-arrow  " href="#" aria-expanded="false"><i
							class="fa fa-tachometer"></i><span class="hide-menu">Learning
								Reports </span></a>
						<ul aria-expanded="false" class="collapse">
							<li><a
								href="${pageContext.request.contextPath}/GSDashServlet?req=lmseu11">LMS
									EU1 PROD </a></li>
							<li><a
								href="${pageContext.request.contextPath}/GSDashServlet?req=lmseu12">LMS
									EU1 PRE PROD</a></li>
						</ul></li>

					<li><a class="has-arrow  " href="#" aria-expanded="false"><i
							class="fa fa-tachometer"></i><span class="hide-menu">CANDIDATE
								PIPELINE </span></a>
						<ul aria-expanded="false" class="collapse">
							<li><a href="#">CANDIDATE PIPELINE EU1 PROD </a></li>
							<li><a href="#">CANDIDATE PIPELINE EU1 PRE PROD</a></li>
						</ul></li>

					<li><a class="has-arrow  " href="#" aria-expanded="false"><i
							class="fa fa-tachometer"></i><span class="hide-menu">DCS </span></a>
						<ul aria-expanded="false" class="collapse">
							<li><a href="#">DCS RUSSIA PROD </a></li>
							<li><a href="#">DCS RUSSIA PRE PROD</a></li>
						</ul></li>

					<li><a class="has-arrow  " href="#" aria-expanded="false"><i
							class="fa fa-tachometer"></i><span class="hide-menu">VISA
								MANAGEMENT </span></a>
						<ul aria-expanded="false" class="collapse">
							<li><a href="#">VISA MANAGEMENT </a></li>
							<li><a href="#">VISA MANAGEMENT PRE PROD</a></li>
						</ul></li>
					<li><a class="has-arrow  " href="#" aria-expanded="false"><i
							class="fa fa-tachometer"></i><span class="hide-menu">SF Print Forms </span></a>
						<ul aria-expanded="false" class="collapse">
					<li><a class="has-arrow  " href="#" aria-expanded="false"><i
							class="fa fa-tachometer"></i><span class="hide-menu">EU1 </span></a>
						<ul aria-expanded="false" class="collapse">
							<li><a
								href="${pageContext.request.contextPath}/GSDashServlet?req=sfeu11">
									a437bc6e3 sf </a></li>
							<li><a
								href="${pageContext.request.contextPath}/GSDashServlet?req=sfeu12">
									aad75a7cf sf</a></li>
							<li><a
								href="${pageContext.request.contextPath}/GSDashServlet?req=sfeu13">
									add1f5340 sf</a></li>
							
						</ul></li>
						<li><a class="has-arrow  " href="#" aria-expanded="false"><i
							class="fa fa-tachometer"></i><span class="hide-menu">US2 </span></a>
						<ul aria-expanded="false" class="collapse">
							<li><a
								href="${pageContext.request.contextPath}/GSDashServlet?req=sfus21">
									dae14b0d5 sf </a></li>
							<li><a
								href="${pageContext.request.contextPath}/GSDashServlet?req=sfus22">
									dd9138043 sf</a></li>
							<li><a
								href="${pageContext.request.contextPath}/GSDashServlet?req=sfus23">
									d3eabad44 sf </a></li>
							<li><a
								href="${pageContext.request.contextPath}/GSDashServlet?req=sfus24">
									d49ac9dd2 sf</a></li>
						</ul></li>
						<li><a class="has-arrow  " href="#" aria-expanded="false"><i
							class="fa fa-tachometer"></i><span class="hide-menu">AP1 </span></a>
						<ul aria-expanded="false" class="collapse">
							<li><a
								href="${pageContext.request.contextPath}/GSDashServlet?req=sfap11">
									c86f5f5c3 sf </a></li>
							<li><a
								href="${pageContext.request.contextPath}/GSDashServlet?req=sfap12">
									cd4041ea4 sf</a></li>
							<li><a
								href="${pageContext.request.contextPath}/GSDashServlet?req=sfap13">
									c68fb94ef sf </a></li>
						</ul></li>
						</ul></li>
					<li><a
						href="${pageContext.request.contextPath}/GSDashServlet?req=status"
						aria-expanded="false"><i class="fa fa-tachometer"></i><span
							class="hide-menu">Public Status Page</span></a></li>

				</ul>
				</nav>
				<!-- End Sidebar navigation -->
			</div>
			<!-- End Sidebar scroll-->
		</div>
		<!-- End Left Sidebar  -->
		<!-- Page wrapper  -->
		<div class="page-wrapper">
			<!-- Bread crumb -->

			<!-- End Bread crumb -->
			<!-- Container fluid  -->
			<%-- <%
				response.setIntHeader("Refresh", 60);
			%> --%>
			<div class="container-fluid">

				<!--             Parsing response -->
				<%
					JSONArray arr = (JSONArray) request.getAttribute("kpiArr");
				    JSONArray usageArr = (JSONArray) request.getAttribute("usageArr");
					
					//JSONArray arr1 = (JSONArray) request.getAttribute("jmxArr");
				%>

				<!--      		End of Parsing -->
				<!-- Start Page Content -->

			
				<!--              	JMX -->

				<div class="row">
				
					<%
						for (int i = 0; i < arr.length(); i++) {
					%>

					<div class="col-md-3">
						<div class="card p-30">
							<a href="<%=arr.getJSONObject(i).getString("url")%>">
								<div class="media">
									<div class="media-left meida media-middle">
										<span><i class="fa fa-user f-s-40 color-danger"></i></span>
									</div>
									<div class="media-body media-text-right">
										<p class="m-b-0">Service : <%=arr.getJSONObject(i).getString("service")%></p>
										<p class="m-b-0">Account : <%=arr.getJSONObject(i).getString("account")%></p>
										<p class="m-b-0">Application : <%=arr.getJSONObject(i).getString("app")%></p>
										<%
											if (arr.getJSONObject(i).getString("rValue").equalsIgnoreCase("0")) {
										%>
										<h4>Reliability Index</h4>
										<h2>NA</h2>
										<%
											} else if (Float.parseFloat(arr.getJSONObject(i).getString("rValue")) < 99.5) {
										%>
										<h4>Reliability Index</h4>
										<a href="#" data-toggle="tooltip"
							            title="Out of <%=arr.getJSONObject(i).getString("rhits") %> POST calls, <%=arr.getJSONObject(i).getString("rsuccess")%> 
							            where 200ok.Refer this link for raw logs : https://cloudopsvmaa84bdddb.vms.hana.ondemand.com/ ">
										<h2 class="text-danger">
											<%=arr.getJSONObject(i).getString("rValue")%>%
										
										</h2></a>
										<%
											} else {
										%>
										<h4>Reliability Index</h4>
										<a href="#" data-toggle="tooltip"
							            title="Out of <%=arr.getJSONObject(i).getString("rhits") %> POST calls, <%=arr.getJSONObject(i).getString("rsuccess")%> 
							            where 200ok.Refer this link for raw logs : https://cloudopsvmaa84bdddb.vms.hana.ondemand.com/ "><h2 class="text-success"><%=arr.getJSONObject(i).getString("rValue")%>%
										</h2></a>

										<%
											}
												if (arr.getJSONObject(i).getString("pValue").equalsIgnoreCase("0")) {
										%>
										<h4>Performance Index</h4>
										<h2>NA</h2>
										<%
											} else if (Float.parseFloat(arr.getJSONObject(i).getString("pValue")) < 99.5) {
										%>
										<h4>Performance Index</h4>
										<a href="#" data-toggle="tooltip"
							            title="Out of <%=arr.getJSONObject(i).getString("phits") %> calls, <%=arr.getJSONObject(i).getString("psuccess")%> 
							            were above 1000ms.Refer this link for raw logs : https://cloudopsvmaa84bdddb.vms.hana.ondemand.com/ ">
										<h2 class="text-danger">
											<%=arr.getJSONObject(i).getString("pValue")%>%

										</h2></a>
										<%
											} else {
										%>
										<h4>Performance Index</h4>
										<a href="#" data-toggle="tooltip"
							            title="Out of <%=arr.getJSONObject(i).getString("phits") %> calls, <%=arr.getJSONObject(i).getString("psuccess")%> 
							            were above 1000ms.Refer this link for raw logs : https://cloudopsvmaa84bdddb.vms.hana.ondemand.com/ ">
										<h2 class="text-success"><%=arr.getJSONObject(i).getString("pValue")%>%
										</h2></a>
										<%
											}
										%>
									</div>
								</div>
							</a>
						</div>
					</div>


					<%
						}
					%>





				</div>
				
				<%
					if (usageArr != null) {
				%>
				<div class="row bg-white m-l-0 m-r-0 box-shadow ">

					<!--                     Column -->
					<div class="col-lg-10">
						<div class="card">
							<div class="card-body">
								<h4 class="card-title">Call pattern for this Month</h4>
								<div id="extra-area-chart-usage"></div>
							</div>
						</div>
					</div>
					<!--                     End Column -->
				
				<div class="col-lg-2">
                        <div class="card">
                            <div class="card-body browser">
                            	<p class="f-w-600">POST Calls<span class="pull-right"></span></p>
                                <div class="progress">
                                    <div role="progressbar" style="width: 100%; height:8px;" class="progress-bar bg-success wow animated progress-animated"> <span class="sr-only"></span> </div>
                                </div>
                                
                                <p class="m-t-30 f-w-600">HTTP 200 <span class="pull-right"></span></p>
                                <div class="progress ">
                                    <div role="progressbar" style="width: 100%; height:8px;" class="progress-bar bg-danger wow animated progress-animated"> <span class="sr-only"></span> </div>
                                </div>

                                <p class="m-t-30 f-w-600">HTTP 500<span class="pull-right"></span></p>
                                <div class="progress">
                                    <div role="progressbar" style="width: 100%; height:8px;" class="progress-bar bg-info wow animated progress-animated"> <span class="sr-only"></span> </div>
                                </div>


                                <p class="m-t-30 f-w-600">HTTP 400<span class="pull-right"></span></p>
                                <div class="progress">
                                    <div role="progressbar" style="width: 100%; height:8px;" class="progress-bar bg-warning wow animated progress-animated"> <span class="sr-only"></span> </div>
                                </div>

                            </div>
                        </div>
                    </div>

				</div>

				<%
					}
				%>
				<%-- <div class="row">
				
					<%
						for (int i = 0; i < usageArr.length(); i++) {
					%>

					<div class="col-md-3">
						<div class="card p-30">
								<div class="media">
									
									<div class="media-body media-text-right">
										<p class="m-b-0">Customer : <%=usageArr.getJSONObject(i).getString("customer")%></p>
										<p class="m-b-0">Calls made this month : <%=usageArr.getJSONObject(i).getString("count")%></p>
										<p class="m-b-0">200 OK : <%=usageArr.getJSONObject(i).getString("Ok200")%></p>
										<p class="m-b-0">HTTP 500 : <%=usageArr.getJSONObject(i).getString("Error500")%></p>
										<p class="m-b-0">HTTP 400 : <%=usageArr.getJSONObject(i).getString("Error400")%></p>
									</div>
								</div>
						</div>
					</div>


					<%
						}
					%>





				</div>
 --%>
				<!-- 			   END of JMX -->

				<!-- <div class="row">
                    column
                    <div class="col-lg-6" style="display: none;">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Product line Chart</h4>
                                <div id="morris-area-chart"></div>
                            </div>
                        </div>
                    </div>
                    column
                    column
                    <div class="col-lg-6">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Reliability</h4>
                                <div id="morris-donut-chart"></div>
                            </div>
                        </div>
                    </div>
                    column
                </div> -->



				<!-- End PAge Content -->
			</div>
			<!-- End Container fluid  -->

		</div>
		<!-- End Page wrapper  -->
	</div>
	<!-- End Wrapper -->
	<!-- All Jquery -->
	<script src="js/lib/jquery/jquery.min.js"></script>
	<!-- Bootstrap tether Core JavaScript -->
	<script src="js/lib/bootstrap/js/popper.min.js"></script>
	<script src="js/lib/bootstrap/js/bootstrap.min.js"></script>
	<!-- slimscrollbar scrollbar JavaScript -->
	<script src="js/jquery.slimscroll.js"></script>
	<!--Menu sidebar -->
	<script src="js/sidebarmenu.js"></script>
	<!--stickey kit -->


	<script src="js/lib/sticky-kit-master/dist/sticky-kit.min.js"></script>
	<!--Custom JavaScript -->


	<!-- Amchart -->
	<script src="js/lib/morris-chart/raphael-min.js"></script>
	<script src="js/lib/morris-chart/morris.js"></script>
	<!--     <script src="js/lib/morris-chart/morris-init.js"></script> -->

	<!--     <script src="js/lib/morris-chart/dashboard1-init.js"></script> -->


	<script src="js/lib/calendar-2/moment.latest.min.js"></script>
	<!-- scripit init-->
	<script src="js/lib/calendar-2/semantic.ui.min.js"></script>
	<!-- scripit init-->
	<script src="js/lib/calendar-2/prism.min.js"></script>
	<!-- scripit init-->
	<script src="js/lib/calendar-2/pignose.calendar.min.js"></script>
	<!-- scripit init-->
	<script src="js/lib/calendar-2/pignose.init.js"></script>

	<script src="js/lib/owl-carousel/owl.carousel.min.js"></script>
	<script src="js/lib/owl-carousel/owl.carousel-init.js"></script>
	<script src="js/scripts.js"></script>
	<!-- scripit init-->

	<script src="js/custom.min.js"></script>
	<script type="text/javascript">
	
	// Dashboard 1 Morris-chart
	
	var usageArr =
<%=usageArr%>
	$(function() {
		"use strict";

	});

	// Extra chart
	Morris.Area({
		element : 'extra-area-chart-usage',
		data : usageArr,
		lineColors: [ '#26DAD2', '#fc6180', '#4680ff', '#ffb64d'],
		xkey : 'customer',
		ykeys: [ 'count', 'Ok200', 'Error500', 'Error400' ],
		labels: [ 'POST calls', '200 OK', 'HTTP 500', 'HTTP 400' ],
		pointSize : 0,
		lineWidth : 0,
		resize : true,
		fillOpacity : 0.8,
		behaveLikeLine : true,
		gridLineColor : '#e0e0e0',
		hideHover : 'auto',
		parseTime: false

	});
	
		var psArr =
	<%=arr%>
		// Morris donut chart
		Morris.Donut({
			element : 'morris-donut-chart',
			data : psArr,
			resize : true,
			colors : [ '#00B7F7', '#26DAD2', '#25EA73' ]
		});
	</script>

	<script type="text/javascript">
		$(document).ready(function() {
			$('[data-toggle="tooltip"]').tooltip({
				placement : 'top'
			});
		});
	</script>



</body>

</html>