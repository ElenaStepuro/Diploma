<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>EPM-Persons</title>

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
						<li class="active"><a href="person.html">Persons</a></li>
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

	<!-- person -->
	<div class="about">
		<div class="container">

			<!-- add persons -->
			<form action="controller" method="get">
				<div class="banner-center">
					<h3>
						<span>Persons</span>
					</h3>
				</div>

				<h3 class="bars animated wow fadeInUp" data-wow-duration="1000ms"
					data-wow-delay="500ms">New person</h3>

				<div class="input-group animated wow fadeInUp"
					data-wow-duration="1000ms" data-wow-delay="500ms">
					<span class="input-group-addon" id="basic-addon3">Person
						information</span>
				</div>
				<div class="input-group animated wow fadeInUp"
					data-wow-duration="1000ms" data-wow-delay="500ms">
					<span class="input-group-addon" id="basic-addon1">Lastname</span> <input
						type="text" class="form-control" placeholder="lastname"> <span
						class="input-group-addon" id="basic-addon2">Firstname</span> <input
						type="text" class="form-control" placeholder="firstname"><span
						class="input-group-addon" id="basic-addon3">Patronymic</span> <input
						type="text" class="form-control" placeholder="patronymic">
				</div>

				<div class="input-group animated wow fadeInUp"
					data-wow-duration="1000ms" data-wow-delay="500ms">
					<span class="input-group-addon" id="basic-addon3">Contacts</span>
				</div>
				<div class="input-group animated wow fadeInUp"
					data-wow-duration="1000ms" data-wow-delay="500ms">
					<span class="input-group-addon" id="basic-addon1">E-mail</span> <input
						type="text" class="form-control" placeholder="E-mail"> <span
						class="input-group-addon" id="basic-addon2">Skype</span> <input
						type="text" class="form-control" placeholder="Skype"><span
						class="input-group-addon" id="basic-addon3">Phone</span> <input
						type="text" class="form-control" placeholder="Phone">
				</div>

				<div class="input-group animated wow fadeInUp"
					data-wow-duration="1000ms" data-wow-delay="500ms">
					<span class="input-group-addon" id="basic-addon3">English</span>
				</div>
				<div class="input-group animated wow fadeInUp"
					data-wow-duration="1000ms" data-wow-delay="500ms">
					<span class="input-group-addon" id="basic-addon1">TA Level</span> <select
						class="form-control" name="select-ta level">
						<option selected="courses">special school/courses</option>
						<option>A0</option>
						<option>A1</option>
						<option>A1+</option>
						<option>A2</option>
						<option>A2+</option>
						<option>B1</option>
						<option>B1+</option>
						<option>B2</option>
						<option>B2+</option>
						<option>C1</option>
						<option>C1+</option>
						<option>C2</option>
					</select> <span class="input-group-addon" id="basic-addon1">s Level</span> <select
						class="form-control" name="select-s level">
						<option selected="courses">special school/courses</option>
						<option>A0</option>
						<option>A1</option>
						<option>A1+</option>
						<option>A2</option>
						<option>A2+</option>
						<option>B1</option>
						<option>B1+</option>
						<option>B2</option>
						<option>B2+</option>
						<option>C1</option>
						<option>C1+</option>
						<option>C2</option>
					</select> <span class="input-group-addon" id="basic-addon1">w Level</span> <select
						class="form-control" name="select-S level">
						<option selected="courses">special school/courses</option>
						<option>A0</option>
						<option>A1</option>
						<option>A1+</option>
						<option>A2</option>
						<option>A2+</option>
						<option>B1</option>
						<option>B1+</option>
						<option>B2</option>
						<option>B2+</option>
						<option>C1</option>
						<option>C1+</option>
						<option>C2</option>
					</select>
				</div>

				<div class="input-group animated wow fadeInUp"
					data-wow-duration="1000ms" data-wow-delay="500ms">
					<span class="input-group-addon" id="basic-addon3">Another
						information</span>
				</div>
				<div class="input-group animated wow fadeInUp"
					data-wow-duration="1000ms" data-wow-delay="500ms">
					<span class="input-group-addon" id="basic-addon1">Army</span> <select
						class="form-control" name="select-army">
						<option selected="Draft">Draft</option>
						<option>Not draft</option>
						<option>At the military department</option>
					</select> <span class="input-group-addon" id="basic-addon3">Working
						place</span> <input type="text" class="form-control"
						placeholder="Working place">
				</div>
				<div class="input-group animated wow fadeInUp"
					data-wow-duration="1000ms" data-wow-delay="500ms">
					<span class="input-group-addon" id="basic-addon3">How did
						you know about us?</span> <input type="text" class="form-control">
				</div>

				<div class="grid_3 grid_5 animated wow fadeInUp"
					data-wow-duration="1000ms" data-wow-delay="500ms">
					<h2>
						<a href="/EPM-CAS/controller?command=add_person"><span
							class="label label-warning">Add person</span></a>
					</h2>
				</div>
			</form>
			<!-- //add persons -->

			<!-- persons table -->
			<div class="banner-center">
				<h3>
					<span>Our persons</span>
				</h3>
			</div>
			<div class="bs-docs-example animated wow fadeInUp"
				data-wow-duration="1000ms" data-wow-delay="500ms"
				style="padding-left: 10%; padding-right: 10%; padding-bottom: 5%">
				<table class="table table-bordered">
					<thead>
						<tr>
							<th rowspan="2">#</th>
							<th rowspan="2">Person information</th>
							<th colspan="3">Contacts</th>
							<th colspan="3">English</th>
							<th colspan="2">Another information</th>
							<th colspan="2" rowspan="2">Change</th>
						</tr>
						<tr>
							<td>E-mail</td>
							<td>Skype</td>
							<td>Phone</td>
							<td>TA</td>
							<td>S</td>
							<td>W</td>
							<td>Army</td>
							<td>Job</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td rowspan="2">1</td>
							<td rowspan="2">LastName FirstName Patronymic</td>
							<td rowspan="2">@gmail.com</td>
							<td rowspan="2">mars190</td>
							<td rowspan="2">+79521260733</td>
							<td rowspan="2">A2+</td>
							<td rowspan="2">A2+</td>
							<td rowspan="2">A2+</td>
							<td rowspan="2">Not draft</td>
							<td rowspan="2">no</td>
							<td><a href="#">Edit</a></td>
						<tr>
							<td><a href="#">Delete</a></td>
						</tr>
						</tr>

						<tr>
							<td rowspan="2">2</td>
							<td rowspan="2">LastName FirstName Patronymic</td>
							<td rowspan="2">@gmail.com</td>
							<td rowspan="2">mars190</td>
							<td rowspan="2">+79521260733</td>
							<td rowspan="2">A2+</td>
							<td rowspan="2">A2+</td>
							<td rowspan="2">A2+</td>
							<td rowspan="2">Not draft</td>
							<td rowspan="2">no</td>
							<td><a href="#">Edit</a></td>
						<tr>
							<td><a href="#">Delete</a></td>
						</tr>
						</tr>

						<tr>
							<td rowspan="2">3</td>
							<td rowspan="2">LastName FirstName Patronymic</td>
							<td rowspan="2">@gmail.com</td>
							<td rowspan="2">mars190</td>
							<td rowspan="2">+79521260733</td>
							<td rowspan="2">A2+</td>
							<td rowspan="2">A2+</td>
							<td rowspan="2">A2+</td>
							<td rowspan="2">Not draft</td>
							<td rowspan="2">no</td>
							<td><a href="#">Edit</a></td>
						<tr>
							<td><a href="#">Delete</a></td>
						</tr>
						</tr>
					</tbody>
				</table>
			</div>
			<!-- //persons table -->

			<!-- add candidates -->
			<form action="controller" method="get">
				<div class="banner-center">
					<h3>
						<span>Candidates</span>
					</h3>
				</div>

				<h3 class="bars animated wow fadeInUp" data-wow-duration="1000ms"
					data-wow-delay="500ms">New candidate</h3>

				<div class="input-group animated wow fadeInUp"
					data-wow-duration="1000ms" data-wow-delay="500ms">
					<span class="input-group-addon" id="basic-addon2">Person</span> <select
						class="form-control" name="select-person">
						<option selected="person">personLastName personFirstName</option>
						<option>personLastName personFirstName</option>
						<option>personLastName personFirstName</option>
					</select> <span class="input-group-addon" id="basic-addon2">Requisition
						number</span> <select class="form-control" name="select-requisition">
						<option selected="requisition">1</option>
						<option>2</option>
						<option>3</option>
					</select>
				</div>

				<div class="grid_3 grid_5 animated wow fadeInUp"
					data-wow-duration="1000ms" data-wow-delay="500ms">
					<h2>
						<a href="/EPM-CAS/controller?command=add_candidate"><span
							class="label label-warning">Add candidate</span></a>
					</h2>
				</div>
			</form>
			<!-- //add candidate -->

			<!-- candidates table -->
			<div class="banner-center">
				<h3>
					<span>Our candidates</span>
				</h3>
			</div>
			<div class="bs-docs-example animated wow fadeInUp"
				data-wow-duration="1000ms" data-wow-delay="500ms"
				style="padding-left: 10%; padding-right: 10%; padding-bottom: 5%">
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>#</th>
							<th>Person's name</th>
							<th>Requisition number</th>
							<th>Priority</th>
							<th colspan="2">Change</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td rowspan="2">1</td>
							<td rowspan="2">personLastName personFirstName</td>
							<td rowspan="2">1</td>
							<td rowspan="2">active</td>
							<td><a href="#">Edit</a></td>
						</tr>
						<tr>
							<td><a href="#">Delete</a></td>
						</tr>

						<tr>
							<td rowspan="2">2</td>
							<td rowspan="2">personLastName personFirstName</td>
							<td rowspan="2">2</td>
							<td rowspan="2">active</td>
							<td><a href="#">Edit</a></td>
						</tr>
						<tr>
							<td><a href="#">Delete</a></td>
						</tr>

						<tr>
							<td rowspan="2">3</td>
							<td rowspan="2">personLastName personFirstName</td>
							<td rowspan="2">3</td>
							<td rowspan="2">active</td>
							<td><a href="#">Edit</a></td>
						</tr>
						<tr>
							<td><a href="#">Delete</a></td>
						</tr>
					</tbody>
				</table>
			</div>
			<!-- //candidates table -->
		</div>
	</div>

	<!-- //person -->


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