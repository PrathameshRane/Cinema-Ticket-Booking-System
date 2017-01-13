<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Registration</title>
        <link rel="stylesheet" type="text/css" href="style.css" media="all" />

       


    </head>
    
<body bgcolor="#292929">
        <img src="images/Banner copy.gif">
         
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a href='index.jsp'><img src="images/Home.gif"></a>&nbsp;&nbsp;&nbsp;&nbsp; 
    <a href='Movie_info.jsp'><img src="images/Movies.gif"></a>&nbsp;&nbsp;&nbsp;&nbsp; 
    <a href='User_Registration.jsp'><img src="images/Register.gif"></a>&nbsp;&nbsp;&nbsp;&nbsp;
    <a href='About_us.jsp'><img src="images/about.gif"></a>&nbsp;&nbsp;&nbsp;&nbsp; 
    <a href='contact_us.jsp'><img src="images/contact.gif"></a>
      
    <br>
    <br> 
   
        <div  class="form">
            
        <form name="f1" method="get" action="Useradded.jsp">
            
            <p class="contact"><label for="EnterUserID">Enter User ID : </label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    
            <input id="ui" name="user_id" placeholder="Eg.abc007" required="" tabindex="1" type="text"></p> 
             
            <p class="contact"><label for="password">Enter Password : </label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input id="pa" type="password" placeholder="Password" name="password"  maxlength="10" required=""> 
                
            <p class="contact"><label for="repassword">Confirm password :  </label>
                &nbsp;
            <input id="cp" type="password" name="password2" required="" maxlength="10"></p>
                         
            <p class="contact"><label for="name">Name : </label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input id="na" name="name" placeholder="First and last name" required="" tabindex="1" type="text"></p> 
                       
            <p class="contact"><label for="name">Address : </label></p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <textarea name="address" placeholder="Address" required=""></textarea> 
            <p class="contact"><label for="phone">Contact No.: </label> 
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input id="cn" name="contact_no" placeholder="Eg. 901245678 " required="" type="number"> </p>
            
            <p class="contact"><label for="email">Email ID : </label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input id="eid" name="email_id" placeholder="example@domain.com" required="" type="email"></p>
                        
            <br>
            <center>
                <input class="buttom" name="Submit" tabindex="5" value="Register" type="submit">
            </center>
        </form> 
        </div>      
</body>
</html>
