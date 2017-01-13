<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <% String a_id="";%>
        <% a_id=(String)session.getAttribute("admin_id");%>
        <% if(a_id==""||a_id==null)
            {
            response.sendRedirect("AdminLogin.jsp");
         }
        %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Movies</title>
        <style type="text/css">
h3 {
	color:#ffffff;
	font-family: cursive;
        }
 .logout{
            float: right; width:100px; margin:0 auto; padding-right:30px;  align:right;
        }
</style>
        <link rel="stylesheet" type="text/css" href="style2.css" media="all" />
    </head>
<body bgcolor="#292929">
        <img src="images/Banner copy.gif">
         
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a href='Admin_Home.jsp'><img src="images/Home.gif"></a>&nbsp;&nbsp;&nbsp;&nbsp; 
    <a href='Movie_info2.jsp'><img src="images/Movies.gif"></a>&nbsp;&nbsp;&nbsp;&nbsp; 
    <a href='Admin_Panel.jsp'><img src="images/Admin_panel.gif"></a>&nbsp;&nbsp;&nbsp;&nbsp;
    <a href='About_us.jsp'><img src="images/about.gif"></a>&nbsp;&nbsp;&nbsp;&nbsp; 
    <a href='contact_us.jsp'><img src="images/contact.gif"></a>
    
    <br>
     <center>
         <div class="logout">
           <a href='index.jsp'><img src="images/button_logout.png"></a>  
             
         </div>
         <% session.setMaxInactiveInterval(2*60);%>   
         <h3>Welcome : <%=a_id%></h3> </center>
    <div  class="form">
        <form name="f1" method="get" action="Movieupdated.jsp">
          
                <p class="contact"><label> Movie Name:</label></p>    
                <input type="text" placeholder="Name of Movie" name="m_name" value="">
                
                <p class="contact"><label>Movie Center:</label></p> 	    
                 <select class="select-style" name="m_center">
                    <option value="CINEMAX-Goregoan">CINEMAX-Goregoan</option>
                    <option value="CINEMAX-Kandivali">CINEMAX-Kandivali</option>
                    <option value="CINEMAX-Andheri">CINEMAX-Andheri</option> 
                    <option value="CINEMAX-Malad">CINEMAX-Malad</option>
                    <option value="CINEMAX-Borivali">CINEMAX-Borivali</option>
                    <option value="CINEMAX-Dadar">CINEMAX-Dadar</option>
                    <option value="CINEMAX-Ghatkopar">CINEMAX-Ghatkopar</option>
                    <option value="CINEMAX-Thane">CINEMAX-Thane</option>
                 </select>
                <br><br>                                   
               <p class="contact"><label>Release Date:</label></p> 
               <input type="text" placeholder="Eg. 28-02-2014" name="m_date" value="">
                
               <p class="contact"><label> Show Time:</label></p> 	    
                <select class="select-style" name="m_time">                  
                     <option value="9:00 am to 12:00 pm">9:00 am to 12:00 pm</option>
                     <option value="1:00 pm to 4:00 pm">1:00 pm to 4:00 pm </option>
                     <option value="6:00 pm to 9:00 pm">6:00 pm to 9:00 pm</option>
                     <option value="9:00 pm to 12:00 pm">9:00 pm to 12:00 pm</option>
                </select>
        <br><br>
               <p class="contact"><label> Ticket Cost:</label></p>
               <input type="text" placeholder="Eg. 200" name="ticket_cost" value="">
                        
                    <br>
            <center>
            <input class="buttom" name="Submit" tabindex="5" value="Update Movie" type="submit">
            </center>
        </form>
    </div>
</body>
</html>
