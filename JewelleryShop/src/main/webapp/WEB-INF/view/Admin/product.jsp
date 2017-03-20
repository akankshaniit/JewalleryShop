<%@ page language="java" contentType="text/html; charset=ISO-8859-1" isELIgnored="false"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style>
  .msgblock {
 color: blue;
 background-color: lightgreen;
 border: 3px solid blue;
 padding: 8px;
}


.errStyle {
	color:red;
	font-style: italic;
	font-weight: bold;
	text-align: right;
}
  </style>


</head>
<body>
<jsp:include page="/WEB-INF/view/shared/header.jsp"></jsp:include> 

<c:if test="${not editing}"> 
<c:set var="saveorupdate" value="/JewelleryShop/Admin/create_product"></c:set>
</c:if>
<c:if test="${editing}" >
<c:set var="saveorupdate" value="/JewelleryShop/Admin/product_edit"></c:set>

</c:if>


<form:form  action="${saveorupdate}" modelAttribute="prd">
<table style="width: 100%; text-align: center;">
<tr>
<td>
 <form:label  path="id">
				<spring:message text="  Product Id:"/>
</form:label>
</td>
<td>
<form:input  path="id" />
</td>
<td>
 <form:label  path="name">
				<spring:message text="Product Name:"/>
</form:label>
</td>
<td>
<form:input  path="name" />
</td>
<td>
 <form:label  path="price">
				<spring:message text="Price:"/>
</form:label>
</td>
<td>
<form:input  path="price" />
</td>

<td>
 <form:label  path="qty">
				<spring:message text="Quantity:"/>
</form:label>
</td>
<td>
<form:input  path="qty" />
</td>

<td>
 <form:label  path="image">
				<spring:message text="Image:"/>
</form:label>
</td>
<td>
<form:input type="file"   path="file" />
</td>

<td>
<c:if test="${not editing}" >
 
 <input  class="btn btn-info"  type="submit"
					value="Add Product" />
</c:if>
<c:if test="${editing}" >
 
 <input  class="btn btn-info"  type="submit"
					value="Update Product" />
</c:if>
					
</td>
</tr>
<tr>
<td colspan="2">
<form:errors path="id" >
<p class="errStyle">
* Cannot be Empty
</p>
 </form:errors>
</td>
<td  colspan="2">
<form:errors path="name" >
<p class="errStyle">
* Invalid Name
</p>
 </form:errors>

</td>
<td  colspan="2">
<form:errors path="price" >
<p class="errStyle">
* Cannot be Empty
</p>
 </form:errors>

</td>

<td colspan="2">
<form:errors path="qty" >
<p class="errStyle">
* Cannot be Empty
</p>
 </form:errors>
</td>

<td colspan="2">
<form:errors path="file" >
<p class="errStyle">
* Cannot be Empty
</p>
 </form:errors>
</td>

</tr>
</table>
</form:form>
<br><br>


<div class="container" >

<c:if test="${not empty msg }">
   <div class="msgblock">
   <c:out value="${msg}" />
   </div>
 </c:if>
	
	<table class="table table-striped;">
	<tr>
	
	<th>Id </th>
	<th>Name</th>
	<th>Price</th>
	<th>Quantity</th>
	<th>Image</th>
	
	<th>Action</th>
	</tr>
	<c:forEach var="product" items="${productList}" >
	<tr  >
	<!-- <td><img alt="NO IMAGE" height="50px" width="50px" src="<c:url value='/resources/Images/{product.category}/{product.image}'/>" /></td>  -->
	<td>${product.id}</td>
	<td>${product.name}</td>
	<td>${product.price}</td>
	<td>${product.qty}</td>
	<td>${product.image}</td>
	<td>
			
			<a class="btn btn-primary"
									onclick="return confirm('Are you sure you want to edit this category?');"
									href="<c:url value='manage_product_edit/${product.id}' />"> 
									<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> Edit
								</a>

								<a class="btn btn-primary"
									onclick="return confirm('Are you sure you want to delete this Category?');"
									href="<c:url value='/Admin/product_delete/${product.id}' />"> 
									<span class="glyphicon glyphicon-trash" aria-hidden="true"></span> Delete
								</a>

	</td>
	</tr>
	
	</c:forEach>
	</div>




</body>
</html>