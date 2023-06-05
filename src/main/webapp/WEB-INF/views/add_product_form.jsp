<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp"%>
</head>
<body>

	<div class="container mt-3">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<h1 class="text-center mb-3">Fill the Product details</h1>
				<form action="handle-product" method="post">
					<div class="form-group">
						<label for="name">Product name</label> <input type="text"
							class="form-control" id="name" name="name"
							placeholder="Enter the product name here">
					</div>

					<div class="form-group">
						<label for="description">Product Description</label>
						<textarea class="form-control" name="description" id="description"
							rows="5" placeholder="Enter the product description"></textarea>
					</div>
					<div class="form-group">
						<label for="name">Product Price</label> <input type="text"
							class="form-control" id="price" name="price"
							placeholder="Enter product price">
					</div>

					<div class="container text-center">
						<a href="${pageContext.request.contextPath }/"
							class="btn btn-outline-danger">Back</a>
						<button type="submit" class="btn btn-primary">Add</button>
					</div>
				</form>
			</div>

		</div>
	</div>
</body>
</html>