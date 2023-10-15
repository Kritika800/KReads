<%-- 
    Document   : Bank_Account_Registration_Form
    Created on : 11 Oct, 2023, 9:15:28 PM
    Author     : DELL-PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bank Account Registration Form</title>
    </head>
    <body>
        <center>
        <h4>
            Bank Account Registration Form
        </h4>
        <form action="NewServlet">
            <input type="password" name="id" placeholder="id" required></br></br>
            <input type="text" name="confirmtypeofaccount" placeholder="Confirm Type Of account" required></br></br>
            <input type="text" name="confirmtypeofcurrency" placeholder="Confirm Type Of Currency" required></br></br>
            <input type="text" name="firstname" placeholder="First Name" required></br></br>
            <input type="text" name="lastname" placeholder="Last Name" required></br></br>
            <input type="tel" name="contactnumber" placeholder="Contact Number" required></br></br>
            <input type="email" name="emailaddress" placeholder="email id" required></br></br>
            <input type="text" name="mailinghomeaddress" placeholder="Home Address" required></br></br>
            <input type="password" name="city"  placeholder="city"  required></br></br>
            <input type="password" name="state" placeholder="state" required></br></br>
           
            
            <input type="text" name="postalcode" placeholder="Postal Code" required></br></br>
            <input type="text" name="country" placeholder="Country" required></br></br>
         
            <input type="email" name="validmail" placeholder="mailid" required></br></br></br>
            
            <input type="submit" name="action" value="Proceed for new Registration"style="color:white;background-color:purple"></br></br>
            
            <style>
            h3{
                background-color: lightcyan;
            }
           
            
        </style>
        </form>
     </center>
    </body>
</html>
