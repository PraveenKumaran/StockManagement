<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
<title>Insert title here</title>
</head>
<body>
<div class="container">
		<div class="row">
			<div class="offset-2 col-md-8"> 
			<c:url value="/stocks/${stock.id}/update" var="update"></c:url>
			<form:form method="POST" modelAttribute="stock"
					action="update">
			<div class="card">
			<div class="card-header">
			<h1 class="card-title text-center">Edit Stock Record</h1">
			</div>
			<div class="card-body">
			<form:hidden path="id"/>
			<div class="form-group">
					<form:label path="name">Stock Name:</form:label>
					<form:input cssClass="form-control" path="name" />
			</div>
						<div class="form-group">
					<form:label path="quantity">Stock Quantity:</form:label>
					<form:input cssClass="form-control" path="quantity" />
			</div>
			<div class="form-group">
					<form:label path="price">Stock Price:</form:label>
					<form:input cssClass="form-control" path="price" />
			</div>
			<div class="form-group">
					<form:label path="productnumber">Product Number:</form:label>
					<form:input cssClass="form-control" path="productnumber" />
			</div>
			<div class="form-group">
					<form:label path="description">Stock Description:</form:label>
					<form:input cssClass="form-control" path="description" />
			</div>
			</div>
			<div class="card-footer">
			<button type="submit" class="btn btn-primary">Update</button>
			</div>
			</div>
			</form:form>
			</div>
		</div>
</div>

</body>
</html>