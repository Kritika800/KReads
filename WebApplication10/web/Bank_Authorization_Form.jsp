<%-- 
    Document   : Bank-Authorization_Form
    Created on : 11 Oct, 2023, 9:16:50 PM
    Author     : DELL-PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bank Authorization form</title>
    </head>
    <body>
       <center>
        <h3>Bank Authorization form</h3>
        <form action="NewServlet">
            <input type="password" name="id" placeholder="id" required></br></br>
            <input type="text" name="city" placeholder="City" required></br></br>
            <input type="text" name="firstname" placeholder="First Name" required></br></br>
            <input type="email" name="emailid" placeholder="Email Id" required></br></br>
            <input type="tel" name="phonenumber" placeholder="Phone number" required></br></br>
            <input type="text" name="bankname" placeholder="Bank Name" required></br></br>
            <input type="text" name="bankbranch" placeholder="Bank branch name" required></br></br>
            <input type="tel" name="bankphonenumber" placeholder="Bank Branch Phone number" required></br></br>
            <input type="password" name="bankaccounttype"  placeholder="Type of bank Account"  required></br></br>
            <input type="password" name="confirmbankaccounttype"  placeholder="Confirm type of bank Account" style="border: 2px solid #3498db" required></br></br>
            <h6>Employee Signature:  <input type="file" name="employeesign" placeholder="Employee sign" style="border-color: red"required></h6></br></br>
        
            
            <input type="submit" name="action" value="Save bankauthorization"  style="color:white;background-color:blue;border-color: black">
            
            <style>
          
            
            h3{
                background-color: lightcyan;
            }
     
        </style>
        
        
        </form>
    </center>
        
    </body>
</html>
