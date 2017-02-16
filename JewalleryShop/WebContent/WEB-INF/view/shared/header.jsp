<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span> 
                            
      </button>
      <a class="navbar-brand" href="#">Jewallery Shop</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
       <li class="active"><a href="/">Home</a></li>
        <li class="dropdown">
         
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Jewallery <span class="caret"></span></a>
           <ul class="dropdown-menu">
              <li class="dropdown-submenu">  
                 <a class="test" tabindex="-1" href="#">Diamond <span class="caret"></span></a>
                 
                 <ul class="dropdown-menu">
                 <li><a  href="#">Ring</a></li>
                 <li><a tabindex="-1" href="#">Earrings</a></li>
                 <li><a tabindex="-1" href="#">Pendants</a></li>
                 <li><a tabindex="-1" href="#">Necklace</a></li>
                 <li><a tabindex="-1" href="#">Nose Ring</a></li>
                 <li><a tabindex="-1" href="#">Bangles and Bracelets</a></li>
                 </ul> 
              </li>
            <li><a href="#">Rings</a></li>
                  <ul class="dropdown-menu">
                 <li><a href="#">Nail Ring</a></li>
                 <li><a href="#">Midi Ring</a></li>
                 <li><a href="#">Wide Ring</a></li>
                 <li><a href="#">Casual</a></li>
                 <li><a href="#">Cocktail</a></li>
                 <li><a href="#">Bridal Set</a></li>
                 </ul> 
            
            <li><a href="#">Color Stone And Pearl</a></li>
          </ul>
        </li>
          
        
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">View all <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Gold </a></li>
            <li><a href="#">Diamond</a></li>
            <li><a href="#">Platinum</a></li>
          </ul>
        </li>
        
        
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">About Us <span class="caret"></span></a>
          <ul class="dropdown-menu"> 
          <li><a href="#">History </a></li>
            <li><a href="#">Contact</a></li>
            <li><a href="#">Platinum</a></li>
          </ul>
        </li>
        
       
        </ul>
        
       
        <ul class="nav navbar-nav navbar-right"> 
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
   </ul>
       
        
       
        <c:if test="${empty LoginMessage}">
        <li><a href="login"><span class="glyphicon glyphicon-user"></span> Sign Up|Join</a></li>
        </c:if>
        
         <c:if test="${not empty LoginMessage}">
        <li><a href="logout"><span class="glyphicon glyphicon-log-in"></span> Sign Out</a></li>
        </c:if>
        
       <c:if test="${not empty LoginMessage} ">
       <li><a href="mycart"><span class="glyphicon glyphicon-log-in"></span> MyCart</a></li>
      </c:if>
        
       
   
   
   </div> 
  </div>
  </div>
</nav>