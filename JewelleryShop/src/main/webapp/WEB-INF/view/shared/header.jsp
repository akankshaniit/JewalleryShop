<%@ page isELIgnored="false" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Case</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
 
 

  
  
</head>
<body>


<nav class="navbar navbar-default no-margin no-padding ">
  <div class="container-fluid">
  <div>
      <ul class="nav navbar-nav">
      <li>
      <a class="navbar-brand" href="#">JewelleryShop</a></li> 
      </ul>
       <ul class="nav navbar-nav navbar-right">
     <li > <span class="glyphicon glyphicon-user"></span>4412-7321</a></li>
   
      
  </ul>
  </div>
  </div>
</nav>

      
<nav class="navbar navbar-inverse  no-margin no-padding ">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
     
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="/JewelleryShop/">Home</a></li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">jewellery <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Ring</a></li>
            <li><a href="#">Diamond</a></li>
            <li><a href="#">pendant</a></li>
          </ul>
        </li>
        <li><a href="about">About Us</a></li>
       
        <li><a href="contact">Contact Us</a></li>
       <li><a href="showAll">All Products</a></li>
       <li><a href="adminhome">Admin Page</a></li>
      
      
        
      </ul>
      <ul class="nav navbar-nav navbar-right">
      
     
     <c:if  test="${empty LoginMessage}">
        <li><a href="login"><span class="glyphicon glyphicon-user"></span> Sign Up|join</a></li>
        </c:if>
        
         <c:if  test="${not empty LoginMessage}">
        <li><a href="logout"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
         <li><a href="mycart"><span class="glyphicon glyphicon-mycart"></span> mycart</a></li>
         </c:if>
      </ul>
      
      
       <form class="navbar-form navbar-left">
      <div class="input-group">
        <input type="text" class="form-control" placeholder="Search">
        <div class="input-group-btn">
          <button class="btn btn-default" type="submit">
            <i class="glyphicon glyphicon-search"></i>
          </button>
        </div>
      </div>
    </form>
    </div>
  </div>
</nav>





  


</body>
</html>
