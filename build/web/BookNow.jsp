<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ticket Booking</title>
        <link rel="stylesheet" type="text/css" href="style2.css" media="all" />
        <style type="text/css">
h3 {
	color:#ffffff;
	font-family: cursive;
        }
 .logout{
            float: right; width:100px; margin:0 auto; padding-right:30px;  align:right;
        }
</style>
        
       <% String u_id="";%>
        <% u_id=(String)session.getAttribute("user_id");%>
        <% if(u_id==""||u_id==null)
            {
            response.sendRedirect("Login.jsp");
         }
        %>
        
        

<script TYPE="text/javascript"> 
function modifyText3() 
{ 
var a = document.getElementById("text1").value; 
var b = document.getElementById("text2").value; 

var c = parseInt(a)* parseInt(b); 
document.getElementById("text3").value = c; 
 
} 
</script> 

    </head>    

       <body bgcolor="#292929">
            <img src="images/Banner copy.gif">
         
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a href='index.jsp'><img src="images/Home.gif"></a>&nbsp;&nbsp;&nbsp;&nbsp; 
    <a href='Movie_info.jsp'><img src="images/Movies.gif"></a>&nbsp;&nbsp;&nbsp;&nbsp; 
    <a href='User_Panel.jsp'><img src="images/User_Panel.gif"></a>&nbsp;&nbsp;&nbsp;&nbsp;
    <a href='About_us.jsp'><img src="images/about.gif"></a>&nbsp;&nbsp;&nbsp;&nbsp; 
    <a href='contact_us.jsp'><img src="images/contact.gif"></a>
    <br>
      <center>
           <div class="logout">
           <a href='index.jsp'><img src="images/button_logout.png"></a>  
             
         </div>
         <% session.setMaxInactiveInterval(5*60);%>   
         <h3>Welcome : <%=u_id%></h3></center><br>
    <% 
        String m_id=request.getParameter("m_id");
       
        
         Connection con =null;
              Statement stmt = null;
              ResultSet rs=null;
            
            try{
            Class.forName("com.microsoft.jdbc.sqlserver.SQLServerDriver");
            con=DriverManager.getConnection("jdbc:sqlserver://localhost:49160;user=sa;password=9969440818;databaseName=Cinema");
            
        if(m_id!=null)
        {
            
            stmt=con.createStatement();
                String rsql="select * from Movie where m_id='"+m_id+"'";
                rs=stmt.executeQuery(rsql);
        %>
       <div class="info">
          <%
                while(rs.next()){
            %> 
            <fieldset>
                <legend><b>Movie Selected</b></legend>
          <h3>
              Movie Name    :<%=rs.getString("m_name")%><br><br>    
              Movie Center  :<%=rs.getString("m_center")%><br><br>
              Movie Date    :<%=rs.getString("m_date")%><br><br>           
              Movie Time    :<%=rs.getString("m_time")%><br><br>
             Ticket Cost    :<%=rs.getString("ticket_cost")%>
            
          </h3>
            </fieldset>
             <br>
        <img src="images/cards.png">
</div>
            
    <div  class="form">
     
             
            
        <form id="form1" name="f1" method="get" action="booking.jsp">
                      
            <input type="hidden" name="m_id" value="<%=rs.getString("m_id")%>"> 
            <input type="hidden" name="m_date" value="<%=rs.getString("m_date")%>">          
            <input id="text1" type="hidden" name="ticket_cost" value="<%=rs.getString("ticket_cost")%>" /> 

            <p class="contact"><label for="No.ofTicket">No. of Ticket :</label></p> 
            <input id="text2" name="no_of_tickets" type="text" oninput="modifyText3()"/>
            
            <p class="contact"><label for="TotalCost"> Total Cost :</label></p> 
            <input id="text3" name="total_cost" value="" type="text">

	    <p class="contact"><label for="Cardno"> Card no :</label></p> 
            <input type="text" name="card_no" value="">
                        
	    <p class="contact"><label for="Cardtype"> Card type :</label></p> 
            <input type="radio" name="card_type" value="credit"><label>Credit Card</label>
	    <input type="radio" name="Card_type" value="debit"><label>Debit Card</label>

	    <p class="contact"><label for="BankName"> Bank Name :</label></p> 	    
            <select class="select-style" name="bank_name">
                 <option value="">None</option>
                 <option value="ICIC Bank">ICICI Bank</option>
                 <option value="HDFC Bank">HDFC Bank</option>
                 <option value="AXIS Bank">AXIS Bank</option>
             </select>
	    
	    <p class="contact"><label for="ExpiryDate"> Expiry Date :</label></p> 
            <input type="text" name="exp_date" value="">

	    
	    <br>
            <center>
            <input class="buttom" name="Submit" tabindex="5" value="Book Ticket" type="submit">
            </center>
        </form> 
        </div>
         <%  }}
          
                           
               if(con==null){con.close();}
            }
          catch(SQLException se){ out.print("SQL:"+se.getMessage());}
          catch(Exception e){ out.print("Exception:"+e.getMessage());}
            %>
              
        
             
               </body>
</html>
