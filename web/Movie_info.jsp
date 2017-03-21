<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Movie Info</title>
        <link rel="stylesheet" href="style3.css">
        <% String u_id="";%>
        <% u_id=(String)session.getAttribute("user_id");%>
        <% if(u_id==""||u_id==null)
            {
            response.sendRedirect("Login.jsp");
         }
        %>
         <style type="text/css">

h3 {
	color:#ffffff;
	font-family: cursive;
        }
.logout{
            float: right; width:100px; margin:0 auto; padding-right:30px;  align:right;
        }
</style>


    </head>
 <body bgcolor="#292929">
        <img src="images/Banner copy.gif">
        <form name="f1" method="post" action=""> 
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a href='User_Home.jsp'><img src="images/Home.gif"></a>&nbsp;&nbsp;&nbsp;&nbsp; 
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
         <h3>Welcome : <%=u_id%></h3></center>
         <center>        
          <table class="rwd-table">
          
               
           <%
              Connection con =null;
              Statement stmt = null;
              ResultSet rs=null;
          
            
            try{
           
               Class.forName("com.mysql.jdbc.Driver");
                      
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Cinema","root","Password@17"); 
                
                
            if(con!=null){
                stmt=con.createStatement();
                String rsql="select * from Movie where available='available'";               
                rs=stmt.executeQuery(rsql);
                
            %>
            <tr>
                <td> Movie Name </td>
                    <td> Movie Center  </td>
                    <td> Release Date  </td>
                    <td> Show Time </td>
                    <td> Ticket Cost </td></tr>
                   
                 
            <%
                while(rs.next()){
            %>
            
            <tr><h3>
                    <td><%=rs.getString("m_name")%></td>
                    <td><%=rs.getString("m_center")%></td>
                    <td><%=rs.getString("m_date")%></td>
                    <td><%=rs.getString("m_time")%> </td>  
                    <td><%=rs.getString("ticket_cost")%> </td>
                     <% String m_id=rs.getString("m_id");%> 
                     
                    <td><a href="BookNow.jsp?m_id=<%=m_id%>"><img src="images/Book-Now.png"></a></td></h3></tr>  
            
            <%  }}
            
                           
               if(con==null){con.close();}
            }
          catch(SQLException se){ out.print("SQL:"+se.getMessage());}
          catch(Exception e){ out.print("Exception:"+e.getMessage());}
            %>
     
          </table>
        
           </form>
          
     </center>
    </body>
</html>