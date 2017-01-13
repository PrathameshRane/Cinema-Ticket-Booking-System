<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Check box</title>

</head>
    
<body>
    
<form name="f1" method="get" action="insertmultiple.jsp">
    
<p>select a course:
  <label> <input type="checkbox" name="lang" value="JAVA" />java</label>
  <br />
  <br />
   <label><input type="checkbox" name="lang" value="C++" /> C++</label>
<br />
  <br />
   <label><input type="checkbox" name="lang" value=".NET" /> .NET</label>
   <br>
 <input name="Submit" value="Submit" type="submit">
</p>
</form>
</body>
</html>