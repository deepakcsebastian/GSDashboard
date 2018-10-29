
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
<!-- Favicon icon -->
<script src="js/dynatrace.js"></script>
<link rel="icon" type="image/png" sizes="16x16"
	href="images/favicon.png">
<title>Globalization Services : Status Cockpit</title>
<!-- Bootstrap Core CSS -->
<link href="css/lib/bootstrap/bootstrap.min.css" rel="stylesheet">
<!-- Custom CSS -->

<link href="css/helper.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link href="css/lib/sweetalert/sweetalert.css" rel="stylesheet">


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
									Cfdb4715bd smirsapp </a></li>
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
			
			<%response.setIntHeader("Refresh", 120); %>

				<!--             Parsing response -->
				<%
					JSONArray pingdomStatusArr = (JSONArray) request.getAttribute("pingdomStatusArr");
				  	JSONArray taasPingdomStatusArr = (JSONArray) request.getAttribute("taasPingdomStatusArr");
				  	JSONArray smirPingdomStatusArr = (JSONArray) request.getAttribute("smirPingdomStatusArr");
				  	JSONArray acrsPingdomStatusArr = (JSONArray) request.getAttribute("acrsPingdomStatusArr");
				  	JSONArray nfePingdomStatusArr = (JSONArray) request.getAttribute("nfePingdomStatusArr");
				  	JSONArray eosmPingdomStatusArr = (JSONArray) request.getAttribute("eosmPingdomStatusArr");
				%>

				<!--              	Pingdom -->

				<div class="row">
					<div class="col-lg-12">
						<div class="card">
							<div class="card-body">
								<h4 class="card-title">GS OVERALL SYSTEM STATUS</h4>
							</div>
							<%
								if(pingdomStatusArr.getJSONObject(pingdomStatusArr.length() - 1).getString("flag").equalsIgnoreCase("1"))
								{%>
							<div class="button-list">
								<button type="button" class="btn btn-success"></button>

							</div>
							<%}else{ %>
							<div class="button-list">
								<button type="button" class="btn btn-danger"></button>
							
							</div>
							<%} %>
						</div>
					</div>
				</div>
				
				<!-- 			  Tax Pingdom -->
				
				<div class="row">
					 <div class="col-lg-12">
                        <div class="card">
                            <div class="card-title">
                            <%
								if(taasPingdomStatusArr.getJSONObject(taasPingdomStatusArr.length() - 1).getInt("flag")==1)
								{%>
                                <h4 class="color-success">SLH Tax as a Service</h4>
                                <%}else {%>
                                <h4 class="color-danger">SLH Tax as a Service</h4>
                                <%} %>

                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-striped">
                                        <thead>
                                            <tr>
                                                
                                                <th>Application</th>
                                                <th>Status</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <%
						for (int j = 0; j < taasPingdomStatusArr.length() - 1; j++) {
							
					%>
                                            <tr>
                                                
                                                <td><%=taasPingdomStatusArr.getJSONObject(j).get("name")%></td>
                                                
                                                <%if (taasPingdomStatusArr.getJSONObject(j).getString("status").equalsIgnoreCase("up")) { %>
                                                <td><span class="badge badge-success">&nbsp;</span></td>
                                                <%}else{ %>
												<td><span class="badge badge-danger">&nbsp;</span></td>
												<%} %>
                                            </tr>
                                            
                                          
                                            <%} %>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>

				</div>

				<!-- 			   END of Tax Pingdom -->
				
				<!-- 			  NFE Pingdom -->
				
				<div class="row">
				<div class="col-lg-12">
                        <div class="card">
                            <div class="card-title">
                            <%
								if(nfePingdomStatusArr.getJSONObject(nfePingdomStatusArr.length() - 1).getInt("flag")==1)
								{%>
                                <h4 class="color-success">SLH NFe</h4>
                                <%}else {%>
                                <h4 class="color-danger">SLH NFe</h4>
                                <%} %>

                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-striped">
                                        <thead>
                                            <tr>
                                                
                                                <th>Application</th>
                                                <th>Status</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <%
						for (int j = 0; j < nfePingdomStatusArr.length() - 1; j++) {
							
					%>
                                            <tr>
                                                
                                                <td><%=nfePingdomStatusArr.getJSONObject(j).get("name")%></td>
                                                
                                                <%if (nfePingdomStatusArr.getJSONObject(j).getString("status").equalsIgnoreCase("up")) { %>
                                                <td><span class="badge badge-success">&nbsp;</span></td>
                                                <%}else{ %>
												<td><span class="badge badge-danger">&nbsp;</span></td>
												<%} %>
                                            </tr>
                                            
                                          
                                            <%} %>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>

				</div>

				<!-- 			   END of NFE Pingdom -->
				
				<!-- 			  SMIR Pingdom -->
				
				<div class="row">
					<div class="col-lg-12">
                        <div class="card">
                            <div class="card-title">
                            <%
								if(smirPingdomStatusArr.getJSONObject(smirPingdomStatusArr.length() - 1).getInt("flag")==1)
								{%>
                                <h4 class="color-success">SLH Social Media Integrated Successfactor Recruiting</h4>
                                <%}else {%>
                                <h4 class="color-danger">SLH Social Media Integrated Successfactor Recruiting</h4>
                                <%} %>

                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-striped">
                                        <thead>
                                            <tr>
                                                
                                                <th>Application</th>
                                                <th>Status</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <%
						for (int j = 0; j < smirPingdomStatusArr.length() - 1; j++) {
							
					%>
                                            <tr>
                                                
                                                <td><%=smirPingdomStatusArr.getJSONObject(j).get("name")%></td>
                                                
                                                <%if (smirPingdomStatusArr.getJSONObject(j).getString("status").equalsIgnoreCase("up")) { %>
                                                <td><span class="badge badge-success">&nbsp;</span></td>
                                                <%}else{ %>
												<td><span class="badge badge-danger">&nbsp;</span></td>
												<%} %>
                                            </tr>
                                            
                                          
                                            <%} %>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
					

				</div>

				<!-- 			   END of SMIR Pingdom -->
				
				<!-- 			  ACRS Pingdom -->
				
				<div class="row">
					<div class="col-lg-12">
                        <div class="card">
                            <div class="card-title">
                            <%
								if(acrsPingdomStatusArr.getJSONObject(acrsPingdomStatusArr.length() - 1).getInt("flag")==1)
								{%>
                                <h4 class="color-success">SLH Advanced Compliance Reporting Service</h4>
                                <%}else {%>
                                <h4 class="color-danger">SLH Advanced Compliance Reporting Service</h4>
                                <%} %>

                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-striped">
                                        <thead>
                                            <tr>
                                                
                                                <th>Application</th>
                                                <th>Status</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <%
						for (int j = 0; j < acrsPingdomStatusArr.length() - 1; j++) {
							
					%>
                                            <tr>
                                                
                                                <td><%=acrsPingdomStatusArr.getJSONObject(j).get("name")%></td>
                                                
                                                <%if (acrsPingdomStatusArr.getJSONObject(j).getString("status").equalsIgnoreCase("up")) { %>
                                                <td><span class="badge badge-success">&nbsp;</span></td>
                                                <%}else{ %>
												<td><span class="badge badge-danger">&nbsp;</span></td>
												<%} %>
                                            </tr>
                                            
                                          
                                            <%} %>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
					
				</div>

				<!-- 			   END of ACRS Pingdom -->
				
				<!-- 			  EOSM Pingdom -->
				
				<div class="row">
					<div class="col-lg-12">
                        <div class="card">
                            <div class="card-title">
                            <%
								if(eosmPingdomStatusArr.getJSONObject(eosmPingdomStatusArr.length() - 1).getInt("flag")==1)
								{%>
                                <h4 class="color-success">SLH EOSM</h4>
                                <%}else {%>
                                <h4 class="color-danger">SLH EOSM</h4>
                                <%} %>

                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-striped">
                                        <thead>
                                            <tr>
                                                
                                                <th>Application</th>
                                                <th>Status</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <%
						for (int j = 0; j < eosmPingdomStatusArr.length() - 1; j++) {
							
					%>
                                            <tr>
                                                
                                                <td><%=eosmPingdomStatusArr.getJSONObject(j).get("name")%></td>
                                                
                                                <%if (eosmPingdomStatusArr.getJSONObject(j).getString("status").equalsIgnoreCase("up")) { %>
                                                <td><span class="badge badge-success">&nbsp;</span></td>
                                                <%}else{ %>
												<td><span class="badge badge-danger">&nbsp;</span></td>
												<%} %>
                                            </tr>
                                            
                                          
                                            <%} %>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
					
				</div>

				<!-- 			   END of EOSM Pingdom -->
				
				  
				
				

			</div>
			<!-- End PAge Content -->
		</div>
		<!-- End Container fluid  -->
		<!-- footer -->
		<footer class="footer"> © Globalization Services</footer>
		<!-- End footer -->
	</div>
	<!-- End Page wrapper  -->

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




	<!-- scripit init-->

	<script src="js/custom.min.js"></script>

	<script src="js/lib/sweetalert/sweetalert.min.js"></script>
	<!-- scripit init-->
	<!--     <script src="js/lib/sweetalert/sweetalert.init.js"></script> -->

	<script type="text/javascript">
		document.querySelector('.sweet-wrong').onclick = function() {
			sweetAlert("Oops...", "Something went wrong !!", "error");
		};
		document.querySelector('.sweet-success').onclick = function() {
			swal("Hey, Good job !!", "You clicked the button !!", "success")
		};

		document.querySelector('.sweet-image-message').onclick = function() {
			swal({
				title : "Sweet !!",
				text : "Hey, Here's a custom image !!",
				imageUrl : "images/hand.jpg"
			});
		};
	</script>

</body>

</html>