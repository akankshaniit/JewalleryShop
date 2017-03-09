<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"  type="text/css" href="resources/css/style6.css">


</head>
<body>
<jsp:include page="/WEB-INF/view/shared/header.jsp"></jsp:include> 
${categoryList}

<h2>Manage Category</h2>

<form action="">
<input type="text" name="id">
<input type="text" name="name">
<input type="text" name="description">
<input type="submit" value="create">



<hr>
<table border="2">
<thead>
<tr>
<td>ID</td>
<td>Name</td>
<td>Description</td>

</tr>
</thead>

<c:forEach var="category" items="${categoryList}" >
<tr>

<td>${category.id}</td>
<td>${category.name}</td>
<td>${category.description}</td>
<td><a href="/manage_category_edit">Edit</a> | <a href="/manage_category_delete">Delete</a></td>

</tr>
</c:forEach>
<hr>
</table>







</body>
</html>