<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
            <title>Index</title>
         <style type="text/css">
a:link {
	color:#6747f2;
	text-decoration: none;
}
a:visited {
	text-decoration: none;
	color:#6747f2;
}
a:hover {
	text-decoration: none;
	color:#6747f2;
        
}
a:active {
	text-decoration: none;
	color: #FF9900;
}
</style>
    </head>
    
    <body>
        
     <%
         
            String admin_id=(String)request.getParameter("admin_id");
          String password=(String)request.getParameter("password");

           
          
            
              Connection con =null;
              Statement stmt = null;
              ResultSet rs=null;
              
               
           Class.forName("com.mysql.jdbc.Driver");
                      
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Cinema","root","Password@17");
            
                stmt=con.createStatement();
                String rsql="select * from Admin where admin_id='"+admin_id+"'and password='"+password+"'";
                rs=stmt.executeQuery(rsql);
             
              if (rs.next()) {
              session.setAttribute("admin_id",admin_id);
              response.sendRedirect("Admin_Panel.jsp");
               } 
            else {
                 %>
                 
                 <jsp:include page="Invalid2.jsp"/>
                 <%
                 }
              
                 %>

    </body>
</html>
