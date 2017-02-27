<%@ page isELIgnored="false" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  
  <link rel="stylesheet"  type="text/css" href="resources/css/style4.css">
  
  <script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="resources/js/script1.js"></script>
 <style type="text/css">
.carousel{
    background: #2f4357;
    margin-top: 20px;
}
.carousel .item img{
    margin: 0 auto; /* Align slide image horizontally center */
}
.bs-example{
	margin: 20px;
}
.carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 40%;
      height:30%;
      margin: Auto;
  }
  
 
  
</style>
  
</head>
<body>

<jsp:include page="/WEB-INF/view/shared/header.jsp"></jsp:include>





<center>${LoginMessage }</center>


<div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="3000" >
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
    <li data-target="#myCarousel" data-slide-to="3"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="<c:url value='/resources/images/s1.jpg'/>" alt="Chania" >
    </div>

    <div class="item">
      <img src="<c:url value='/resources/images/s2.jpg'/>" alt="Chania">
    </div>

    <div class="item">
      <img src="<c:url value='/resources/images/s3.jpg'/>" alt="Flower">
    </div>

    <div class="item">
      <img src="<c:url value='/resources/images/s6.jpg'/>" alt="Flower">
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>



</body>
</html>
