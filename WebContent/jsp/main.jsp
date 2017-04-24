<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>EPM-Direction</title>

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
						<li class="active"><a href="main.html">Direction</a></li>
						<li><a href="/EPM-CAS/controller?command=show_person"
							class="hvr-bounce-to-bottom">Persons</a></li>
						<li><a href="/EPM-CAS/controller?command=show_rdm"
							class="hvr-bounce-to-bottom">RDM</a></li>
						<li><a href="/EPM-CAS/controller?command=show_requisition"
							class="hvr-bounce-to-bottom">Requisition</a></li>
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

	<!-- direction -->
	<!-- add direction -->
	<div class="about">
		<div class="container">
			<form action="controller" method="get">
				<div class="banner-center">
					<h3>
						<span>Direction</span>
					</h3>
				</div>

				<h3 class="bars animated wow fadeInUp" data-wow-duration="1000ms"
					data-wow-delay="500ms">New direction</h3>

				<div class="input-group animated wow fadeInUp"
					data-wow-duration="1000ms" data-wow-delay="500ms">
					<span class="input-group-addon" id="basic-addon1">Direction
						name</span> <input type="text" class="form-control" placeholder="name">
					<span class="input-group-addon" id="basic-addon2">RDM</span> <select
						class="form-control" name="select-rdm">
						<option selected="rdm">rdm</option>
						<option>rdm1</option>
						<option>rdm2</option>
						<option>rdm3</option>
					</select>
				</div>

				<div class="input-group animated wow fadeInUp"
					data-wow-duration="1000ms" data-wow-delay="500ms">
					<span class="input-group-addon" id="basic-addon2">Status</span>
					<div class="col-lg-6 in-gr-tb">
						<div class="input=group">
							<div class="input=group-addon">
								<input type="radio" name="command" value="active"><span>
									active</span>
							</div>
						</div>
					</div>
					<div class="col-lg-6 in-gr-tb">
						<div class="input=group">
							<div class="input=group-addon">
								<input type="radio" name="command" value="not active"><span>
									not active</span>
							</div>
						</div>
					</div>
				</div>

				<div class="grid_3 grid_5 animated wow fadeInUp"
					data-wow-duration="1000ms" data-wow-delay="500ms">
					<h2>
						<a href="/EPM-CAS/controller?command=add_direction"><span
							class="label label-warning">Add direction</span></a>
					</h2>
				</div>
			</form>

		</div>
	</div>
	<!-- //add direction -->

	<!-- direction table -->
	<div class="banner-center">
		<h3>
			<span>Our directions</span>
		</h3>
	</div>
	<div class="bs-docs-example animated wow fadeInUp"
		data-wow-duration="1000ms" data-wow-delay="500ms"
		style="padding-left: 10%; padding-right: 10%; padding-bottom: 5%">
		<table class="table table-bordered">
			<thead>
				<tr>
					<th>#</th>
					<th>Direction Name</th>
					<th>RDM</th>
					<th>Status</th>
					<th colspan="2">Change</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td rowspan="2">1</td>
					<td rowspan="2">Direction1</td>
					<td rowspan="2">rdm1</td>
					<td rowspan="2">active</td>
					<td><a href="#">Edit</a></td>
				</tr>
				<tr>
					<td><a href="#">Delete</a></td>
				</tr>

				<tr>
					<td rowspan="2">2</td>
					<td rowspan="2">Direction2</td>
					<td rowspan="2">rdm2</td>
					<td rowspan="2">active</td>
					<td><a href="#">Edit</a></td>
				</tr>
				<tr>
					<td><a href="#">Delete</a></td>
				</tr>

				<tr>
					<td rowspan="2">3</td>
					<td rowspan="2">Direction3</td>
					<td rowspan="2">rdm3</td>
					<td rowspan="2">active</td>
					<td><a href="#">Edit</a></td>
				</tr>
				<tr>
					<td><a href="#">Delete</a></td>
				</tr>
			</tbody>
		</table>
	</div>
	<!-- //direction table -->

	<!-- //direction -->

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
						<li><a href="#">Link</a></li>
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