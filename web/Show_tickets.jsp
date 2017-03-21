<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Show Tickets Booked</title>
        <link rel="stylesheet" href="style3.css">
        <% String a_id="";%>
        <% a_id=(String)session.getAttribute("admin_id");%>
        <% if(a_id==""||a_id==null)
            {
            response.sendRedirect("AdminLogin.jsp");
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
b {
	color:#7efcf2;
	font-family: cursive;
      
}
</style>


    </head>
 <body bgcolor="#292929">
        <img src="images/Banner copy.gif">
        <form name="f1" method="post" action=""> 
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a href='Admin_Home.jsp'><img src="images/Home.gif"></a>&nbsp;&nbsp;&nbsp;&nbsp; 
    <a href='Movie_info.jsp'><img src="images/Movies.gif"></a>&nbsp;&nbsp;&nbsp;&nbsp; 
    <a href='Admin_Panel.jsp'><img src="images/Admin_panel.gif"></a>&nbsp;&nbsp;&nbsp;&nbsp;
    <a href='About_us.jsp'><img src="images/about.gif"></a>&nbsp;&nbsp;&nbsp;&nbsp; 
    <a href='contact_us.jsp'><img src="images/contact.gif"></a>     
   <br>
     <center>
         <div class="logout">
           <a href='index.jsp'><img src="images/button_logout.png"></a>              
         </div>
         <% session.setMaxInactiveInterval(2*60);%>   
         <h3>Welcome : <%=a_id%></h3> 
    
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
                String rsql="select t.t_id,u.name,m.m_name,t.date,m.m_time,t.no_of_tickets,t.total_cost from Ticket  t, Users u, Movie m where t.user_id=u.user_id and t.m_id=m.m_id order by t.t_id desc";
                rs=stmt.executeQuery(rsql);
            %>
            <tr><td> Ticket id  </td>
                <td> User Name </td>
                    <td> Movie Name  </td>
                    <td> Movie Date  </td>
                    <td> Movie Time  </td>
                    <td> No. of Tickets </td>
                    <td> Total Cost </td>
            
                    
            <%
                while(rs.next()){
            %>
            <tr><h3><td><%=rs.getString("t_id")%></td>
                    <td><%=rs.getString("name")%></td>
                    <td><%=rs.getString("m_name")%></td>
                    <td><%=rs.getString("date")%></td>
                    <td><%=rs.getString("m_time")%></td>
                    <td><%=rs.getString("no_of_tickets")%> </td>  
                    <td><%=rs.getString("total_cost")%> </td>
            </tr>  
            
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