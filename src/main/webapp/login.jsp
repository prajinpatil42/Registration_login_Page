<%@page import="com.DB.*"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet" href="css/style.css">
</head>
<body
	style="background-image: linear-gradient(to right top, #d92f90, #cd56b2, #bd74cc, #ad8cdd, #a1a1e6, #95adea, #90b8ea, #91c2e8, #8dc8e4, #8ecedf, #95d2d8, #9fd6d2); background-repeat: no-repeat; background-attachment: fixed; background-size: cover">
	<!-- Navbar -->
	<nav class="navbar navbar-expand-lg navbar-dark  bg-custom">
		<a class="navbar-brand" href="#">Navbar</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="#">Home
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="login.jsp">Login</a></li>

				<li class="nav-item"><a class="nav-link disabled"
					href="register.jsp">Register</a></li>
			</ul>
			<form class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="search"
					placeholder="Search" aria-label="Search">
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
			</form>
		</div>
	</nav>

	<!--End  Navbar -->


	<!--  Form -->

	<div class="container">
		<div class="row mt-3">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-header text-center c-head text-white">
						<i class="fa fa-user-circle-o fa-2x"></i>
						<h5>Login Page</h5>
					</div>
					<%
					String logoutMSG = (String) session.getAttribute("logout-msg");
					if (logoutMSG != null) {
					%>
					<div class="alert alert-success" role="alert"><%=logoutMSG%></div>
					<%
					session.removeAttribute("logout-msg");
					}
					%>

					<!-- Error Message -->

					<%
					String errorMsg = (String) session.getAttribute("error-msg");

					if (errorMsg != null) {
					%>

					<div class="alert alert-danger" role="alert"><%=errorMsg%></div>

					<%
					
					session.removeAttribute("error-msg");
					}
					%>
					<div class="card-body">

						<form action="loginServlet" method="post">

							<div class="form-group">
								<label for="exampleInputEmail1">Enter Email address</label> <input
									type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="email">

							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Enter Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									name="password">
							</div>

							<button type="submit"
								class="btn btn-primary btn-block badge-pill">Login</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>




</body>
</html>