<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"  type="text/css" href="resources/css/style2.css">


</head>
<body>
<jsp:include page="/WEB-INF/view/shared/header.jsp"></jsp:include>

<div class="jumbotron jumbotron-sm">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-lg-12">
                <h1 class="h1">
                    Contact us <small>Feel free to contact us</small></h1>
            </div>
        </div>
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="col-md-8">
            <div class="well well-sm">
                <form>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="name">
                                Name</label>
                            <input type="text" class="form-control" id="name" placeholder="Enter name" required="required" />
                        </div>
                        <div class="form-group">
                            <label for="email">
                                Email Address</label>
                            <div class="input-group">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span>
                                </span>
                                <input type="email" class="form-control" id="email" placeholder="Enter email" required="required" /></div>
                        </div>
                        <div class="form-group">
                            <label for="subject">
                                Subject</label>
                            <select id="subject" name="subject" class="form-control" required="required">
                                <option value="na" selected="">Choose One:</option>
                                <option value="service">General Customer Service</option>
                                <option value="suggestions">Suggestions</option>
                                <option value="product">Product Support</option>
                                <option value="product">Product Defect</option>
                                
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="name">
                                Message</label>
                            <textarea name="message" id="message" class="form-control" rows="9" cols="25" required="required"
                                placeholder="Message"></textarea>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <button type="submit" class="btn btn-primary pull-right" id="btnContactUs">
                            Send Message</button>
                    </div>
                </div>
                </form>
            </div>
        </div>
        <div class="col-md-4">
            <form>
            <legend><span class="glyphicon glyphicon-globe"></span> Our office</legend>
            <address>
                <strong>JewelleryShop, Inc.</strong><br>
                795 Folsom Ave, Suite 600<br>
                India, CA 94107<br>
                website:www.jewellery.com<br>
                <abbr title="Phone">
                    P:</abbr>
                (123) 456-7890
                
            </address>
            <address>
                <strong>Full Name</strong><br>
                <a href="mailto:#">first.last@example.com</a>
            </address>
     
         
            
            </form>
            </div>
             </div>
</div>
            
            
   <div class="container"> 
     <div class="box">
     <div class="row">      
     <div class="col-lg-12">
     <hr>
     <h2 class="intro-text text-center">Contact
     <strong>business casual</strong>
      </h2>
     <hr>
     <div class="col-md-8">
     <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15091.028247402139!2d73.
     11694614707625!3d18.98633351926945!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be7e8135594239b%3A0x3a08cbd5e4840d41!
     2sSai+Jewellers!5e0!3m2!1sen!2sin!4v1487845525429" 
     width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
     
     </div>
     
    </div>
    </div>
    </div>
    </div>   
            
        
   








</body>
</html>