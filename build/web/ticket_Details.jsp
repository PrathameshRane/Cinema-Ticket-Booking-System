<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Ticket Details</title>
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
              String u_name=request.getParameter("u_name");
              Connection con =null;
              Statement stmt = null;
              ResultSet rs=null;
            
            try{
            
                Class.forName("com.mysql.jdbc.Driver");
                      
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Cinema","root","Password@17");
                
            if(con!=null){
                stmt=con.createStatement();
                String rsql="select distinct t.t_id,u.name,m.m_name,t.date,m.m_time,t.no_of_tickets,t.total_cost from Ticket  t, Movie m, Users u where t.user_id='"+u_id+"' and t.m_id=m.m_id and u.name='"+u_name+"' order by t.t_id desc";
                rs=stmt.executeQuery(rsql);
            %>
            <tr><td> Ticket id  </td>
                <td> User Name </td>
                <td> Movie Name  </td>
                <td> Movie Date  </td>
                <td> Movie Time  </td>
                <td> No. of Tickets </td>
                <td> Total Cost </td></tr>
                   
                    
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