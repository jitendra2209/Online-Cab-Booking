<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Online Cab Booking</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="css/tooplate_style.css" rel="stylesheet" type="text/css" />



<link rel="stylesheet" href="css/nivo-slider.css" type="text/css" media="screen" />
<script src="js/jquery.min.js" type="text/javascript"></script>
<script src="js/jquery.nivo.slider.js" type="text/javascript"></script>

</head>
<body>
    
    <%
    if (request.getParameter("msg") != null) {%>
    <script>alert('Login Successful');</script>
    <%}%>

<div id="tooplate_wrapper">
<div id="tooplate_header">

<br/><center><h1><a href="#">Online Cab Booking</a></h1></center>
<div class="cleaner"></div>
</div>
    
<div id="tooplate_menu">
<ul>
<li><a href="adminhome.jsp" class="current">Home</a></li>
<li><a href="addcabs.jsp">Add Cabs</a></li>
<li><a href="viewbookings.jsp">View Bookings</a></li>
<li><a href="viewfeedback.jsp">View Feedback</a></li>
<li><a href="admin.jsp">Logout</a></li>
</ul>    	
</div> 
    
<div id="tooplate_middle">
<div id="middle_left">
<h2>Online Cab Booking</h2>
<p>We give customer satisfaction the utmost priority and so give ample options to book cab by entering details like their journey date and time , pick-up point and the destination they need to reach.  </p>
</div>
<div id="slider_wrapper">    
<div id="slider">
<a href="#"><img src="images/cab.jpg" alt="Image 01" /></a>
</div>
</div>
</div>
	
<div id="tooplate_main_top"></div>        
<div id="tooplate_main">
<div class="col_w900 col_w900_last">
<div class="col_w580 float_l">
        
        <br/>
        <center><p><font color="black" size="5"> Welcome Admin </font></p></center>

        
         <br/><br/>

         </div>


</div>
<div class="cleaner"></div>
</div>
<div id="tooplate_footer">
    
</div>

        
</div>
</body>
</html>