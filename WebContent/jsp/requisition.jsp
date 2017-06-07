<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>EPM-Requisition</title>

<link href="/EPM-CAS/css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="/EPM-CAS/css/style.css" rel="stylesheet" type="text/css"
	media="all" />
</head>

<body>
	<!-- header -->
	<div class="header">
		<div class="header-top">
			<div class="container">
				<div class="header-top-left">
					<ul>
						<li><span class="glyphicon glyphicon-earphone"
							aria-hidden="true"></span>+7 491 293-57-33</li>
						<li><a href="mailto:info@example.com"><span
								class="glyphicon glyphicon-envelope" aria-hidden="true"></span>cas@epam.com</a></li>
					</ul>
				</div>
				<div class="header-top-right">
					<ul class="social-icons">
						<a href="http://www.epam-group.ru"><img src="images/img.jpg"
							style="width: 70px; height: 35px" /></a>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="header-bottom">
			<div class="container">
				<nav class="navbar navbar-default">
				<div class="navbar-header">
					<div class="logo">
						<h1>
							<a class="navbar-brand" href="index.html">EPM-CAS <span>Candidate
									Accounting System</span></a>
						</h1>
					</div>
				</div>

				<div class="collapse navbar-collapse nav-wil"
					id="bs-example-navbar-collapse-1">
					<nav>
					<ul class="nav navbar-nav">
						<li><a href="/EPM-CAS/controller?command=show_direction"
							class="hvr-bounce-to-bottom">Direction</a></li>
						<li><a href="/EPM-CAS/controller?command=show_person"
							class="hvr-bounce-to-bottom">Persons</a></li>
						<li><a href="/EPM-CAS/controller?command=show_rdm"
							class="hvr-bounce-to-bottom">RDM</a></li>
						<li class="active"><a
							href="/EPM-CAS/controller?command=show_requisition">Requisition</a></li>
						<li><a href="/EPM-CAS/controller?command=show_analys"
							class="hvr-bounce-to-bottom">Analysis</a></li>
						<li><a href="/EPM-CAS/controller?command=logout"
							class="hvr-bounce-to-bottom">Logout</a></li>
					</ul>
					</nav>
				</div>
				</nav>
			</div>
		</div>
	</div>
	<!-- //header -->

	<!-- banner -->
	<div class="banner">
		<div class="container">
			<div class="banner-left">
				<h3>the easiest way to have a good education</h3>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!-- //baner -->

	<!-- requisition -->
	<div class="about">
		<div class="container">
			<div class="banner-center">
				<h3>
					<span>Requisition</span>
				</h3>
			</div>

			<!-- edit requisition -->
			<c:if test="${!com.equals('EDIT') }">
				<form action="controller" method="get">
					<h3 class="bars animated wow fadeInUp" data-wow-duration="1000ms"
						data-wow-delay="500ms">Edit requisition</h3>

					<div class="input-group animated wow fadeInUp"
						data-wow-duration="1000ms" data-wow-delay="500ms">
						<span class="input-group-addon" id="basic-addon3"
							placeholder="course title">Course title</span> <input type="text"
							class="form-control"> <span class="input-group-addon"
							id="basic-addon2">Training direction</span> <select
							class="form-control" name="select-direction">
							<option selected="Java Web Programming">Java Web
								Programming</option>
							<option>Web Development in C# and Microsoft.Net</option>
							<option>Software Testing Automation Basics</option>
							<option>Business Analysis in IT</option>
							<option>Front-End Basics</option>
						</select><span class="input-group-addon" id="basic-addon2">Course
							type</span>
						<div class="col-lg-6 in-gr-tb">
							<div class="input=group">
								<div class="input=group-addon">
									<input type="radio" name="command" value="external"><span>
										external</span>
								</div>
							</div>
						</div>
						<div class="col-lg-6 in-gr-tb">
							<div class="input=group">
								<div class="input=group-addon">
									<input type="radio" name="command" value="internal"><span>
										internal</span>
								</div>
							</div>
						</div>
					</div>

					<div class="grid_3 grid_5 animated wow fadeInUp"
						data-wow-duration="1000ms" data-wow-delay="500ms">
						<h2>
							<a href="/EPM-CAS/controller?command=add_requisition"><span
								class="label label-warning">Update requistion</span></a>
						</h2>
						<h2>
							<a href="#"><span class="label label-warning">Cancel</span></a>
						</h2>
					</div>
				</form>
			</c:if>
			<!-- //edit requisition -->

			<!-- add requisition -->
			<c:if test="${!com.equals('EDIT') }">
				<form action="controller" method="get">
					<h3 class="bars animated wow fadeInUp" data-wow-duration="1000ms"
						data-wow-delay="500ms">New requisition</h3>

					<div class="input-group animated wow fadeInUp"
						data-wow-duration="1000ms" data-wow-delay="500ms">
						<span class="input-group-addon" id="basic-addon3"
							placeholder="course title">Course title</span> <input type="text"
							class="form-control"> <span class="input-group-addon"
							id="basic-addon2">Training direction</span> <select
							class="form-control" name="select-direction">
							<option selected="Java Web Programming">Java Web
								Programming</option>
							<option>Web Development in C# and Microsoft.Net</option>
							<option>Software Testing Automation Basics</option>
							<option>Business Analysis in IT</option>
							<option>Front-End Basics</option>
						</select><span class="input-group-addon" id="basic-addon2">Course
							type</span>
						<div class="col-lg-6 in-gr-tb">
							<div class="input=group">
								<div class="input=group-addon">
									<input type="radio" name="command" value="external"><span>
										external</span>
								</div>
							</div>
						</div>
						<div class="col-lg-6 in-gr-tb">
							<div class="input=group">
								<div class="input=group-addon">
									<input type="radio" name="command" value="internal"><span>
										internal</span>
								</div>
							</div>
						</div>
					</div>

					<div class="grid_3 grid_5 animated wow fadeInUp"
						data-wow-duration="1000ms" data-wow-delay="500ms">
						<h2>
							<a href="/EPM-CAS/controller?command=add_requisition"><span
								class="label label-warning">Add requistion</span></a>
						</h2>
						<h2>
							<a href="#"><span class="label label-warning">Cancel</span></a>
						</h2>
					</div>
				</form>
			</c:if>
			<!-- //add requisition -->

			<!-- requisition table -->
			<div class="banner-center">
				<h3>
					<span>Our requisition</span>
				</h3>
			</div>
			<div class="bs-docs-example animated wow fadeInUp"
				data-wow-duration="1000ms" data-wow-delay="500ms"
				style="padding-left: 10%; padding-right: 10%; padding-bottom: 5%">
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>Course title</th>
							<th>Training direction</th>
							<th>Course type</th>
							<th colspan="2">Change</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td rowspan="2">AT:IN_17_1</td>
							<td rowspan="2">Software Testing Automation Basics</td>
							<td rowspan="2">internal</td>
							<td><a href="#">Edit</a></td>
						</tr>
						<tr>
							<td><a href="#">Delete</a></td>
						</tr>

						<tr>
							<td rowspan="2">J:EX_17_1</td>
							<td rowspan="2">Java Web Programming</td>
							<td rowspan="2">external</td>
							<td><a href="#">Edit</a></td>
						</tr>
						<tr>
							<td><a href="#">Delete</a></td>
						</tr>

						<tr>
							<td rowspan="2">FE:IN_16_1</td>
							<td rowspan="2">Front-End Basics</td>
							<td rowspan="2">internal</td>
							<td><a href="#">Edit</a></td>
						</tr>
						<tr>
							<td><a href="#">Delete</a></td>
						</tr>
					</tbody>
				</table>
			</div>
			<!-- //requisition table -->
		</div>
	</div>
	<!-- //requisition -->

	<!-- footer -->
	<div class="footer">
		<div class="container">
			<h2>Sign up for our newsletter</h2>
			<p class="para"></p>
			<div class="footer-grids">
				<div class="col-md-4 footer-grid">
					<p>
						<span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>
						Gogolya st. 16, 390035 Ryazan, Russia.
					</p>
					<p>
						<a href="mailto:contact@example.com"><span
							class="glyphicon glyphicon-envelope" aria-hidden="true"></span>
							cas@epam.com</a>
					</p>
					<p>
						<span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>+7
						491 293-57-33
					</p>
				</div>
				<div class="col-md-2 footer-grid">
					<ul>
						<li><a href="/EPM-CAS/controller?command=show_direction">Direction</a></li>
						<li><a href="/EPM-CAS/controller?command=show_person">Persons</a></li>
						<li><a href="/EPM-CAS/controller?command=show_rdm">RDM</a></li>
						<li><a href="/EPM-CAS/controller?command=show_requisition">Requisition</a></li>
					</ul>
				</div>
				<div class="col-md-3 footer-grid">
					<ul>
						<li><a href="/EPM-CAS/controller?command=show_analys">Analysis</a></li>
						<li><a href="/EPM-CAS/controller?command=logout">Log out</a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="footer-copy">
				<p>© 2017 EPAM Company. All rights reserved | Design by ""</p>
			</div>
		</div>
	</div>
	<!-- //footer -->
</body>
</html>