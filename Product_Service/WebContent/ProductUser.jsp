<%@page import="com.Product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product Service</title>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.4.1.min.js"></script>
<script src="Components/jsproduct.js"></script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-6">
				<h1>Product Management Service</h1>

				<form id="formProduct" name="formProduct" method="post" action="ProductUser.jsp">


						Product Name: <input id="pName" name="pName" type="text"
						class="form-control form-control-sm"> 
						
						<br>Description: <input id="Pdescri" name="Pdescri" type="text"
						class="form-control form-control-sm"> 
						
						<br>Price: <input id="pPrice" name="pPrice" type="text"
						class="form-control form-control-sm"> 
						
						<br> <input
						id="btnSave" name="btnSave" type="button" value="Save"
						class="btn btn-primary"> <input type="hidden"
						id="hidProjectIDSave" name="hidProjectIDSave" value="">
				</form>

				<div id="alertSuccess" class="alert alert-success"></div>
				<div id="alertError" class="alert alert-danger"></div>

				<br>
				<div id="divProductGrid">
					<%
						Product productObj = new Product();
						out.print(productObj.readProject());
					%>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
