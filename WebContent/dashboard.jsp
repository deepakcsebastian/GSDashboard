
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
									d577daf1d taxservice
										
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
					JSONArray arr = (JSONArray) request.getAttribute("pingdomArr");
					float kpi = Float.parseFloat(request.getAttribute("kpi").toString());
					float rKpi = Float.parseFloat(request.getAttribute("rKpi").toString());
					float pKpi = Float.parseFloat(request.getAttribute("pKpi").toString());
					//JSONArray arr1 = (JSONArray) request.getAttribute("jmxArr");
				%>

				<!--      		End of Parsing -->
				<!-- Start Page Content -->

				<div class="row bg-white m-l-0 m-r-0 box-shadow ">




					<!-- column -->
					<div class="col-lg-4">
						<a href="#" data-toggle="tooltip"
							title="Availability is calculated based on Uptime info from Pingdom tool">
							<div class="card">
								<div class="card-body browser">
									<p class="m-t-30 f-w-600">
										GS Availability KPI (January 2018 - till date )
										<%
										if (kpi > 99.5) {
									%>
									
									<h2 class="text-success">
										Achieved
										<%=kpi%>
										%
									</h2>
									<span class="pull-right"></span>
									</p>

									<div class="progress">
										<div role="progressbar" style="width: <%=kpi%>%; height:8px;"
											class="progress-bar bg-success wow animated progress-animated">
											<span class="sr-only"><%=kpi%>% Complete</span>
										</div>
									</div>
									<%
										} else {
									%>
									<h2 class="text-danger">
										Achieved
										<%=kpi%>
										%
									</h2>
									<span class="pull-right"></span>
									</p>

									<div class="progress">
										<div role="progressbar" style="width: <%=kpi%>%; height:8px;"
											class="progress-bar bg-danger wow animated progress-animated">
											<span class="sr-only"><%=kpi%>% Complete</span>
										</div>
									</div>
									<%
										}
									%>
									<p class="m-t-30 f-w-600">
										Targeted 99.5%<span class="pull-right"></span>
									</p>

								</div>
							</div>
						</a>
					</div>
					<div class="col-lg-4">
						<a href="#" data-toggle="tooltip"
							title="Reliability is calculated based on count of 200 OK response codes. Refer this link for raw logs : https://cloudopsvmaa84bdddb.vms.hana.ondemand.com/">
							<div class="card">
								<div class="card-body browser">


									<%
										if (rKpi > 99.5) {
									%>
									<p class="m-t-30 f-w-600">Reliability Index (Avg)
									<h2 class="text-success"><%=rKpi%>
										%
									</h2>
									<span class="pull-right"></span>
									</p>
									<div class="progress">
										<div role="progressbar" style="width: <%=rKpi%>%; height:8px;"
											class="progress-bar bg-success wow animated progress-animated">
											<span class="sr-only"><%=rKpi%>% Complete</span>
										</div>
									</div>
									<%
										} else {
									%>
									<p class="m-t-30 f-w-600">Reliability Index (Avg)
									<h2 class="text-danger"><%=rKpi%>
										%
									</h2>
									<span class="pull-right"></span>
									</p>
									<div class="progress">
										<div role="progressbar" style="width: <%=rKpi%>%; height:8px;"
											class="progress-bar bg-danger wow animated progress-animated">
											<span class="sr-only"><%=rKpi%>% Complete</span>
										</div>
									</div>
									<%
										}
									%>

								</div>
							</div>
						</a>
					</div>
					<div class="col-lg-4">
						<a href="#" data-toggle="tooltip"
							title="Performance is calculated based on response duration. If response duration is greater than 1000ms, then it's considered to be below benchmark. Refer this link for raw logs : https://cloudopsvmaa84bdddb.vms.hana.ondemand.com/ ">
							<div class="card">
								<div class="card-body browser">

									<%
										if (pKpi > 99.5) {
									%>
									<p class="m-t-30 f-w-600">Performance Index (Avg)
									<h2 class="text-success"><%=pKpi%>
										%
									</h2>
									<span class="pull-right"></span>
									</p>
									<div class="progress">
										<div role="progressbar" style="width: <%=pKpi%>%; height:8px;"
											class="progress-bar bg-success wow animated progress-animated">
											<span class="sr-only"><%=pKpi%>% Complete</span>
										</div>
									</div>
									<%
										} else {
									%>
									<p class="m-t-30 f-w-600">Performance Index (Avg)
									<h2 class="text-danger"><%=pKpi%>
										%
									</h2>
									<span class="pull-right"></span>
									</p>
									<div class="progress">
										<div role="progressbar" style="width: <%=pKpi%>%; height:8px;"
											class="progress-bar bg-danger wow animated progress-animated">
											<span class="sr-only"><%=pKpi%>% Complete</span>
										</div>
									</div>
									<%
										}
									%>

								</div>
							</div>
						</a>
					</div>
					<!-- column -->
				</div>
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
										<p class="m-b-0"><%=arr.getJSONObject(i).getString("label")%></p>
										<%
											if (Float.parseFloat(arr.getJSONObject(i).getString("value")) < 99.5) {
										%>
										<h4>Availability Index</h4>
										<h2 class="text-danger"><%=arr.getJSONObject(i).getString("value")%>%
										</h2>
										<%
											} else {
										%>
										<h4>Availability Index</h4>
										<h2 class="text-success"><%=arr.getJSONObject(i).getString("value")%>%
										</h2>
										<%
											}
										%>
										<%
											if (arr.getJSONObject(i).getString("rValue").equalsIgnoreCase("0")) {
										%>
										<h4>Reliability Index</h4>
										<h2>NA</h2>
										<%
											} else if (Float.parseFloat(arr.getJSONObject(i).getString("rValue")) < 99.5) {
										%>
										<h4>Reliability Index</h4>
										<h2 class="text-danger">
											<%=arr.getJSONObject(i).getString("rValue")%>%

										</h2>
										<%
											} else {
										%>
										<h4>Reliability Index</h4>
										<h2 class="text-success"><%=arr.getJSONObject(i).getString("rValue")%>%
										</h2>

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
										<h2 class="text-danger">
											<%=arr.getJSONObject(i).getString("pValue")%>%

										</h2>
										<%
											} else {
										%>
										<h4>Performance Index</h4>
										<h2 class="text-success"><%=arr.getJSONObject(i).getString("pValue")%>%
										</h2>
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