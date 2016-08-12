<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Mobile Acessories</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet">
	<link href="<c:url value="/resources/css/custom.css"/>" rel="stylesheet">
	<script src="<c:url value="/resources/js/respond.js"/>"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
    <script src="<c:url value="/resources/js/respond.js"/>"></script>
<style>
.carousel-inner>.item>img {
	width: 1040px;
	height: 340px;
}
</style>
<style>
.btn-min-block {
	min-width: 170px;
	line-height: 26px;
}

.btn-theme {
	color: #fff;
	background-color: transparent;
	border: 2px solid #fff;
	margin-right: 15px;
}

.btn-theme:hover {
	color: #000;
	background-color: #fff;
	border-color: #fff;
}

.ind {
	margin-left: 5px;
	margin-right: 5px;
	padding: 5px;
}

.cat {
	margin-left: 5px;
	margin-right: 5px;
}
</style>
</head>
<body style="background-color: #ddd">
<div class="container">
	<div class="row">
		<div class="col-md-3">
			<img src="<c:url value="resources/images/po.jpg"/>">
		</div>
	</div>
	</div>
	<h5>${msg}</h5>
	<br>
	<div class="container">
		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#myNavbar">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">WebSiteName</a>
				</div>
				<div class="collapse navbar-collapse" id="myNavbar">
					<ul class="nav navbar-nav">
						<li class="active"><a href="#">Home</a></li>
						<li><a href="product">product</a></li>
						<li><a href="upu">image</a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li><a href="re"><span
								class="glyphicon glyphicon-user"></span> Sign Up</a></li>
						<li><a href="login"><span
								class="glyphicon glyphicon-log-in"></span> Login</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</div>