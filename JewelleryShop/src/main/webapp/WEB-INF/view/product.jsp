<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"  type="text/css" href="resources/css/style7.css">




</head>
<body>

<jsp:include page="/WEB-INF/view/shared/header.jsp"></jsp:include> 


<div class="wrapper">
    <form class="form-signin">       
      <h2 class="form-signin-heading">Product Details</h2>
      <input type="text" class="form-control" name="id" placeholder="Id" required="" autofocus="" />
      <input type="text" class="form-control" name="name" placeholder="Name" required="" autofocus=""/> 
      <input type="text" class="form-control" name="discription" placeholder="Discription" required="" autofocus=""/>      
     
      <div class="btn-group">
     <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">Id Name <span class="caret"></span></button>
                <ul class="dropdown-menu scrollable-menu" role="menu">
                    <li><a href="#">Category Id</a></li>
                    <li><a href="#">Supplier Id</a></li>
                    </ul>
        </div>  
     
      <input type="text" class="form-control" name="discription" placeholder="Discription" required="" autofocus=""/>      
     
      <button class="btn btn-lg btn-primary btn-block" type="submit">Submit</button>   
    </form>
  </div>





</body>
</html>