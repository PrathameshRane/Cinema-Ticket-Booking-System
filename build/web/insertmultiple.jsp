<%@page import="java.util.*"%>
<%@page import="java.sql.*" %>
<%
String languages="";
String lang[]=request.getParameterValues("lang");
for(int i=0;i<lang.length;i++)
{
    languages+=lang[i]+",";
}

        try{
        Class.forName("com.microsoft.jdbc.sqlserver.SQLServerDriver");
        Connection con = DriverManager.getConnection("jdbc:sqlserver://localhost:49159;user=sa;password=9969440818;databaseName=Cinema");
        Statement st=con.createStatement();
        int i=st.executeUpdate("insert into Seat(s_no) values('"+languages+"')");
        out.println("Data is successfully inserted into database.");
        }
        catch(Exception e){
        System.out.println(e);
    }
 %>