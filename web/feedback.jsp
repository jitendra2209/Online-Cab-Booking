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
    
   

<div id="tooplate_wrapper">
<div id="tooplate_header">
<br/><center><h1><a href="#">Online Cab Booking</a></h1></center>
<div class="cleaner"></div>
</div>
    
<div id="tooplate_menu">
<ul>
<li><a href="userhome.jsp">Home</a></li>
<li><a href="search.jsp">Search Cabs</a></li>
<li><a href="viewmybookings.jsp" class="current">My Bookings</a></li>
<li><a href="user.jsp">Logout</a></li>
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
  
  <%
  
    String dname = request.getParameter("dname");
    String vno = request.getParameter("vno");
    %>
    
    <p align="justify">
        <center><p><font color="black" size="5"> Feedback Form</font></p></center>
        <form action="feedbackact.jsp" method="post">
        <center><table width="421">
       
        <tr>
        <td height="43"><font color="black"> Driver Name</td>
        <td><input name="drivername"  value="<%=dname%>" readonly=""/></td>
        </tr>

        
        <tr>
        <td height="43"><font color="black">Vehicle No</td>
        <td><input name="vno" value="<%=vno%>" readonly=""/></td>
        </tr>
            
        <tr>
        <td height="43"><font color="black">Feedback</td>
        <td><textarea name="feedback" rows="3" cols="22" required=""></textarea>
        </tr>
        
        <tr>
        <td height="43" rowspan="3">
        <p>&nbsp;</p></td>
        <td align="left" valign="middle"> <p>&nbsp;
        </p>
        <p>
        <input name="submit" type="submit" value="SUBMIT" />
        </p>
        <div align="right">
        </div></td>
        </tr>
            </table></center>
        </form>
        </p>
</div>


</div>
<div class="cleaner"></div>
</div>
<div id="tooplate_footer">
    
</div>

        
</div>
</body>
</html>