<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<a href="manage_categories">Manage Categories</a>
<a href="manage_suppliers">Manage Supplier</a>
<a href="manage_products">Manage Product</a>

<c:if test="${isUserClickedCategories==true} ">
<jsp:include page="category.jsp"></jsp:include>
</c:if>

<c:if test="${isUserClickedProducts==true} ">
<jsp:include page="product.jsp"></jsp:include>
</c:if>

<c:if test="${isUserClickedSuppliers==true} ">
<jsp:include page="supplier.jsp"></jsp:include>
</c:if>

</body>
</html>