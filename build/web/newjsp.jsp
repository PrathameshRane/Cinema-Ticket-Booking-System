<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ticket Booking</title>
       
        <script type="text/javascript">
function checkinfo()
{
if(f1.Username.value=="")
{
  alert("Please Enter your Username");
  f1.Username.focus();
  return false;
  }
else if(f1.Selcenter.value=="")
{
alert("Please select the center you want !!!");
f1.Selcenter.focus();
return false;
}
else if(f1.Selmovie.value=="")
{
alert("Please select the Movie you want !!!");
f1.Selmovie.focus();
return false;
}
else if(f1.adultticket.value=="")
{
alert("Please inser no of adults!!!");
f1.adultticket.focus();
return false;
}
else if(f1.childticket.value=="")
{
alert("Please inser no of child!!!");
f1.childticket.focus();
return false;
}

else if(f1.Seldate.value=="")
{
alert("Please select the date you want !!!");
f1.Seldate.focus();
return false;
}
else if(f1.Seltime.value=="")
{
alert("Please select a time you want !!!");
f1.Seltime.focus();
return false;
}
else if(f1.Bank.value=="")
{
alert("Please select a bank you want !!!");
f1.Bank.focus();
return false;
}
else if(f1.Card.value=="")
{
alert("Please choose your card !!!");
f1.Card.focus();
return false;
}
else if(f1.cardno.value=="")
{
alert("Please Enter card no !!!");
f1.cardno.focus();
return false;
}
else if(f1.Phone.value=="")
{
alert("Please enter contact no!!!");
f1.Phone.focus();
return false;
}
else
    {
        alert("Ready to conform ticket !!!!");
        return true;
}
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
    <a href='UserPanel.jsp'><img src="images/User_Panel.gif"></a>&nbsp;&nbsp;&nbsp;&nbsp;
    <a href='About_us.jsp'><img src="images/about.gif"></a>&nbsp;&nbsp;&nbsp;&nbsp; 
    <a href='contact_us.jsp'><img src="images/contact.gif"></a>
    
    <br>
 
         
         <form name="f1" method="post" action="Ticket.jsp" onsubmit="return checkinfo();">
             <img src="name.gif" height="135" width="100%">
         <h1 style="color:green;text-align:center">Welcome to Movie World !!!!!!!</h1>
         <center>
               <table border="2" width="50%" cellpadding=""bordercolor="blue"bgcolor="">
           <thead>
           <tr>
           </tr>
           </thead>
           <tbody>
               <%Connection con = null;
PreparedStatement ps = null;
try{ 
    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
con = DriverManager.getConnection("jdbc:odbc:movie");
String sql = "SELECT * FROM Adminadd";
ps = con.prepareStatement(sql);
ResultSet rs = ps.executeQuery();
 %>

         <tr><td> Username:</td><td><input type="text" name="Username" value=""</td></tr>
         
         <tr><td> Select Center :</td><td><select name="Selcenter">            
                     <%
                     while(rs.next())
                     {
                     String center = rs.getString("Addcenter");
                      %>
 <option value="<%=center%>"><%=center%></</option> 
 <%
}
%><%
}catch(Exception e)
{}
%></select></td>   

 <%
try{ 
    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
con = DriverManager.getConnection("jdbc:odbc:movie");
String sql = "SELECT * FROM Adminadd";
ps = con.prepareStatement(sql);
ResultSet rs = ps.executeQuery();
 %>
 <tr><td>Select Movie : </td><td><select name="Selmovie">
    <%
                     while(rs.next())
                     {
                       String movie=rs.getString("Addmovie");
                     
                      %>
 <option value="<%=movie%>"><%=movie%></</option>
 <%
}
%><%
}catch(Exception e)
{}
%> </select></td>                
                    
<tr><td> Ticket:</td> <td><input type="text" name="ticket"/></td>
     
     <%
try{ 
    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
con = DriverManager.getConnection("jdbc:odbc:movie");
String sql = "SELECT * FROM Adminadd";
ps = con.prepareStatement(sql);
ResultSet rs = ps.executeQuery();
 %>
        <tr><td> Select Date : </td><td><select name="Seldate"> 
    <%
                     while(rs.next())
                     {
                       String date=rs.getString("Adddate");
                     
                      %> 
                      <option value="<%=date%>"><%=date%></</option>
 <%
}
%><%
}catch(Exception e)
{}
%> </select></td>
                      
         <tr><td> Select Time : </td><td><select name="Seltime" ><option value="">None</option> <option value="9:00 am to 12:00 pm ">9:00 am to 12:00 pm</option><option value="1:00 pm to 4:00 pm">1:00 pm to 4:00 pm </option><option value="6:00 pm to 9:00 pm">6:00 pm to 9:00 pm</option><option value="9:00 pm to 12:00 pm">9:00 pm to 12:00 pm</option></select></td>
         <tr><td> Bank Name :</td> <td><select name="Bank"><option value="">None</option><option value="ICIC Bank">ICIC Bank</option> <option value="HDFC Bank">HDFC Bank</option> <option value="AXIS Bank">AXIS Bank</option></select></td>
        <tr><td> Card type : </td> <td> <input type="radio" name="Card" id="CC" value="credit"><label for="CC">Credit Card</label> <input type="radio" name="Card" id="DC" value="debit"> <label for="DC">Debit Card</label></td>
            <tr><td> Card no : </td> <td> <input type="text" name="cardno" value=""></td></tr>
            <tr><td> Phone no : </td> <td> <input type="integer" name="Phone" value=""></td></tr>
           <th colspan="2"><h3 style="text-align:center"><input type="submit" value=" Book Now !!! "></h3></th>
       
         </tbody>
               </table>
<a href='login.jsp'>Logout Click here!!!</a>
         </center>
             </form>
               </body>
</html>
