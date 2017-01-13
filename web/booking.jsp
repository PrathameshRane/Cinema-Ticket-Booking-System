<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Booking</title>
        <script type="text/javascript">     
        function PrintDiv() {    
           var divToPrint = document.getElementById('divToPrint');
           var popupWin = window.open('', '_blank', 'width=720,height=1080');
           popupWin.document.open();
           popupWin.document.write('<html><body onload="window.print()">' + divToPrint.innerHTML + '</html>');
            popupWin.document.close();
                }
     </script>
        <% String u_id="";%>
         <% u_id=(String)session.getAttribute("user_id");%>
    </head>
    <body>
   
            <%
               
                String m_id=request.getParameter("m_id");
                String m_date=request.getParameter("m_date");
                String no_of_tickets=request.getParameter("no_of_tickets");
                String total_cost=request.getParameter("total_cost");
                String card_no=request.getParameter("card_no");
                String card_type=request.getParameter("card_type");
                String bank_name=request.getParameter("bank_name");
                String exp_date=request.getParameter("exp_date");
 
            Connection con =null;
              Statement stmt = null;
              
              
              
            try{
            Class.forName("com.microsoft.jdbc.sqlserver.SQLServerDriver");
            
            con=DriverManager.getConnection("jdbc:sqlserver://localhost:49160;user=sa;password=9969440818;databaseName=Cinema");
            
            if(con!=null){
                 stmt=con.createStatement();
                 
                 //insert and executes query
                 int i =stmt.executeUpdate("insert into Ticket(user_id,m_id,date,no_of_tickets,total_cost)values('"+u_id+"','"+m_id+"','"+m_date+"','"+no_of_tickets+"','"+total_cost+"')");
        
                 int c=stmt.executeUpdate("insert into Credit_Card(card_no,user_id,card_type,bank_name,exp_date)values('"+card_no+"','"+u_id+"','"+card_type+"','"+bank_name+"','"+exp_date+"')");
            
                 
                  response.sendRedirect("Ticket.jsp");
                 %>
                  
                 
                 <%
                 }
           if(con==null)
           {con.close();}
            }
          catch(SQLException se){ out.print("SQL:"+se.getMessage());}
          catch(Exception e){ out.print("Exception:"+e.getMessage());}
            %>
        
</body>
</html>          
