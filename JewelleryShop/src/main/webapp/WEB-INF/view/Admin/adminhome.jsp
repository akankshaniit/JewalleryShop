<%@ page language="java" contentType="text/html; charset=ISO-8859-1" isELIgnored="false" 
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libss/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   <script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
  
  
    
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Homepage</title>


<link rel="stylesheet"  type="text/css" href="resources/css/style7.css">

</head>
<body>
<jsp:include page="/WEB-INF/view/shared/header.jsp"></jsp:include>


<h2><center> Welcome Admin</center></h2>
<center><h3><a href="manage_category">Manage Categories</a></h3></center>
<br><br>
<h2><center><a href="manage_suppliers">Manage Supplier</a></h3></center>
<br><br>
<h2><center><a href="manage_products">Manage Product</a></h3></center>

<c:if test="${isUserClickedCategories==true} ">
<jsp:include page="category.jsp"></jsp:include>
</c:if>



<c:if test="${isUserClickedProduct==true} ">
<jsp:include page="product.jsp"></jsp:include>
</c:if>

<c:if test="${isUserClickedSupplier==true} ">
<jsp:include page="supplier.jsp"></jsp:include>
</c:if>

</body>
</html>