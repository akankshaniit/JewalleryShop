<%@ page language="java" contentType="text/html; charset=ISO-8859-1" isELIgnored="false"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Products</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

  <style>
  .msgblock {
 color: blue;
 background-color: lightgreen;
 border: 3px solid blue;
 padding: 8px;
}
  </style>
</head>
<body>
<div class="container" >

<c:if test="${not empty msg }">
   <div class="msgblock">
   <c:out value="${msg}" />
   </div>
 </c:if>
	
	<table class="table table-striped;">
	<tr>
	<th></th>
	<th>Product id </th>
	<th>product Name</th>
	<th>Quantity</th>
	<th></th>
	</tr>
	<c:forEach var="product" items="${prdList}" >
	<tr  >
	<!-- <td><img alt="NO IMAGE" height="50px" width="50px" src="<c:url value='/resources/Images/{product.category}/{product.image}'/>" /></td>  -->
	<td>${product.id}</td>
	<td>${product.name}</td>
	<td>${product.qty}</td>
	<td>
			
			|<a href="" >Edit</a>|
			<a href="" >Delete</a>
		
	</td>
	</tr>
	
	</c:forEach>
	</div>
</body>
</html>