<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Movie Deleted</title>
        <style type="text/css">
a:link {
	color:#ffffff;
	text-decoration: none;
}
a:visited {
	text-decoration: none;
	color:#ffffff;
}
a:hover {
	text-decoration: none;
	color:#ffffff;
        
}
a:active {
	text-decoration: none;
	color: #ffffff;
}
h3 {
	color:#ffffff;
	font-family: cursive;
        }
</style>
    </head>
    <body bgcolor="#292929">
        <img src="images/Banner copy.gif">
        
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a href='index.jsp'><img src="images/Home.gif"></a>&nbsp;&nbsp;&nbsp;&nbsp; 
    <a href='Movie_info2.jsp'><img src="images/Movies.gif"></a>&nbsp;&nbsp;&nbsp;&nbsp; 
    <a href='Admin_Panel.jsp'><img src="images/Admin_panel.gif"></a>&nbsp;&nbsp;&nbsp;&nbsp;
    <a href='About_us.jsp'><img src="images/about.gif"></a>&nbsp;&nbsp;&nbsp;&nbsp; 
    <a href='contact_us.jsp'><img src="images/contact.gif"></a>
    
        <br>
            <%
                String m_name=request.getParameter("m_name");
                
              Connection con =null;
              
              
            try{
            Class.forName("com.microsoft.jdbc.sqlserver.SQLServerDriver");
            
            con=DriverManager.getConnection("jdbc:sqlserver://localhost:49160;user=sa;password=9969440818;databaseName=Cinema");
            
            if(con!=null){
                 
                 String sql=("delete from Movie WHERE m_name='"+m_name+"'");
                 Statement stmt = con.createStatement();
                 
                 //update and executes query
                 int i =stmt.executeUpdate(sql);
               
             %>
             <center>
            <h3> Movie Deleted.</h3>
            <br><br>
                 <h3><a href='DeleteMovie.jsp'>Click Here To Delete Another Movie</a></h3>
               <% }

            if(con==null)
           {con.close();}
            }
          catch(SQLException se){ out.print("SQL:"+se.getMessage());}
          catch(Exception e){ out.print("Exception:"+e.getMessage());}
            %>
        </center>
    </body>
          
</html>