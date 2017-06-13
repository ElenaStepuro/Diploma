<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>EPM-Analysis</title>

<link href="/EPM-CAS/css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="/EPM-CAS/css/style.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="/EPM-CAS/css/graph.css" rel="stylesheet" type="text/css"
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
						<li><a href="/EPM-CAS/controller?command=show_requisition"
							class="hvr-bounce-to-bottom">Requisition</a></li>
						<li class="active"><a
							href="/EPM-CAS/controller?command=show_analys">Analysis</a></li>
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

	<!-- students table -->
	<div class="about">
		<div class="container">
			<div class="banner-center">
				<h3>
					<span>Java Web Programming</span>
				</h3>
			</div>

			<form action="controller" method="get">
				<h3 class="bars animated wow fadeInUp" data-wow-duration="1000ms"
					data-wow-delay="500ms">Academic performance</h3>
				<div class="bs-docs-example animated wow fadeInUp"
					data-wow-duration="1000ms" data-wow-delay="500ms"
					style="padding-bottom: 5%">
					<table class="table table-bordered">
						<thead>
							<tr>
								<th>Student</th>
								<th>Java basics</th>
								<th>Object Oriented Programming</th>
								<th>Errors and exceptions</th>
								<th>Input and output stream</th>
								<th>Data processing</th>
								<th>Collections</th>
								<th>Multithreaded programming</th>
								<th>Java & XML</th>
								<th>SQL basics and relational databases</th>
								<th>JDBC 4.0</th>
								<th>Servlets basics</th>
								<th>JSP basics</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>Vladimir Abramov</td>
								<td>3</td>
								<td>3</td>
								<td>2</td>
								<td>1</td>
								<td>1</td>
								<td>0</td>
								<td>0</td>
								<td>1</td>
								<td>0</td>
								<td>0</td>
								<td>1</td>
								<td>0</td>
							</tr>
							<tr>
								<td>Pavel Romanenko</td>
								<td>3</td>
								<td>3</td>
								<td>1</td>
								<td>2</td>
								<td>1</td>
								<td>2</td>
								<td>2</td>
								<td>1</td>
								<td>0</td>
								<td>2</td>
								<td>1</td>
								<td>1</td>
							</tr>
							<tr>
								<td>Lada Chernysheva</td>
								<td>1</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
							</tr>
							<tr>
								<td>Sergey Micheev</td>
								<td>3</td>
								<td>3</td>
								<td>1</td>
								<td>2</td>
								<td>2</td>
								<td>2</td>
								<td>3</td>
								<td>1</td>
								<td>2</td>
								<td>2</td>
								<td>2</td>
								<td>1</td>
							</tr>
							<tr>
								<td>Vladislav Gusev</td>
								<td>3</td>
								<td>3</td>
								<td>1</td>
								<td>2</td>
								<td>2</td>
								<td>2</td>
								<td>3</td>
								<td>1</td>
								<td>2</td>
								<td>2</td>
								<td>2</td>
								<td>1</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="grid_3 grid_5 animated wow fadeInUp"
					data-wow-duration="1000ms" data-wow-delay="500ms">
					<h2>
						<a href="/EPM-CAS/controller?command=add_requisition"><span
							class="label label-warning">Save</span></a>
					</h2>
				</div>
			</form>
			<form action="controller" method="get">
				<h3 class="bars animated wow fadeInUp" data-wow-duration="1000ms"
					data-wow-delay="500ms">Attendance</h3>
				<div class="bs-docs-example animated wow fadeInUp"
					data-wow-duration="1000ms" data-wow-delay="500ms"
					style="padding-bottom: 5%">
					<table class="table table-bordered">
						<thead>
							<tr>
								<th>Student</th>
								<th>Java basics</th>
								<th>Object Oriented Programming</th>
								<th>Errors and exceptions</th>
								<th>Input and output stream</th>
								<th>Data processing</th>
								<th>Collections</th>
								<th>Multithreaded programming</th>
								<th>Java & XML</th>
								<th>SQL basics and relational databases</th>
								<th>JDBC 4.0</th>
								<th>Servlets basics</th>
								<th>JSP basics</th>
								<th>Average assessment</th>
							</tr>
						</thead>
						<tbody>
							<tr>
							<tr>
								<td>Vladimir Abramov</td>
								<td>2</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
							</tr>
							<tr>
								<td>Pavel Romanenko</td>
								<td>2</td>
								<td>2</td>
								<td>2</td>
								<td>2</td>
								<td>2</td>
								<td>2</td>
								<td>2</td>
								<td>2</td>
								<td>2</td>
								<td>2</td>
								<td>2</td>
								<td>2</td>
								<td>2</td>
							</tr>
							<tr>
								<td>Lada Chernysheva</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
							</tr>
							<tr>
								<td>Sergey Micheev</td>
								<td>2</td>
								<td>2</td>
								<td>2</td>
								<td>2</td>
								<td>2</td>
								<td>2</td>
								<td>2</td>
								<td>2</td>
								<td>2</td>
								<td>2</td>
								<td>2</td>
								<td>2</td>
								<td>2</td>
							</tr>
							<tr>
								<td>Vladislav Gusev</td>
								<td>2</td>
								<td>2</td>
								<td>2</td>
								<td>2</td>
								<td>2</td>
								<td>2</td>
								<td>2</td>
								<td>2</td>
								<td>2</td>
								<td>2</td>
								<td>2</td>
								<td>2</td>
								<td>2</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="grid_3 grid_5 animated wow fadeInUp"
					data-wow-duration="1000ms" data-wow-delay="500ms">
					<h2>
						<a href="/EPM-CAS/controller?command=add_requisition"><span
							class="label label-warning">Save</span></a>
					</h2>
				</div>
			</form>

			<form action="controller" method="get">
				<h3 class="bars animated wow fadeInUp" data-wow-duration="1000ms"
					data-wow-delay="500ms">Analysis</h3>
				<div class="bs-docs-example animated wow fadeInUp"
					data-wow-duration="1000ms" data-wow-delay="500ms"
					style="padding-bottom: 5%">
					<table class="table table-bordered">
						<thead>
							<tr>
								<th>Student</th>
								<th>Java basics</th>
								<th>Object Oriented Programming</th>
								<th>Errors and exceptions</th>
								<th>Input and output stream</th>
								<th>Data processing</th>
								<th>Collections</th>
								<th>Multithreaded programming</th>
								<th>Java & XML</th>
								<th>SQL basics and relational databases</th>
								<th>JDBC 4.0</th>
								<th>Servlets basics</th>
								<th>JSP basics</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>Vladimir Abramov</td>
								<td>2</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
							</tr>
							<tr>
								<td>Pavel Romanenko</td>
								<td>2</td>
								<td>2</td>
								<td>-2</td>
								<td>2</td>
								<td>-2</td>
								<td>2</td>
								<td>-2</td>
								<td>2</td>
								<td>-4</td>
								<td>2</td>
								<td>-2</td>
								<td>2</td>
							</tr>
							<tr>
								<td>Lada Chernysheva</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
							</tr>
							<tr>
								<td>Sergey Micheev</td>
								<td>2</td>
								<td>2</td>
								<td>-2</td>
								<td>2</td>
								<td>2</td>
								<td>2</td>
								<td>2</td>
								<td>2</td>
								<td>2</td>
								<td>2</td>
								<td>2</td>
								<td>2</td>
							</tr>
							<tr>
								<td>Vladislav Gusev</td>
								<td>2</td>
								<td>2</td>
								<td>-2</td>
								<td>2</td>
								<td>2</td>
								<td>2</td>
								<td>2</td>
								<td>2</td>
								<td>2</td>
								<td>2</td>
								<td>2</td>
								<td>2</td>
							</tr>
							<tr>
								<td>Average</td>
								<td>1,6</td>
								<td>1,2</td>
								<td>-1,2</td>
								<td>1,2</td>
								<td>0,4</td>
								<td>1,2</td>
								<td>0,4</td>
								<td>1,2</td>
								<td>0</td>
								<td>1,2</td>
								<td>0,4</td>
								<td>1,2</td>
							</tr>
						</tbody>
					</table>
				</div>

			</form>

			<!-- topic diagram -->
			<h3 class="bars animated wow fadeInUp" data-wow-duration="1000ms"
				data-wow-delay="500ms">Average lag by topics</h3>



			<!-- // topic diagram -->

		</div>
	</div>
	<!-- // students table -->

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
				<p>Â© 2017 EPAM Company. All rights reserved | Design by ""</p>
			</div>
		</div>
	</div>
	<!-- //footer -->
</body>
</html>