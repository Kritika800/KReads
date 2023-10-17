<%-- 
    Document   : Credit_Request_Form
    Created on : 11 Oct, 2023, 9:17:14 PM
    Author     : DELL-PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CREDIT REQUEST FORM</title>
    </head>
    <body>
        <center>
        <h3> CREDIT REQUEST FORM</h3>
        <p>
            
        </p>
        <form action="NewServlet">
        <input type="password" name="id" placeholder="id" required></br></br>
            <input type="text" name="parentname" placeholder="Parent Name" required></br></br>
            <input type="text" name="permanentaddress" placeholder="Permanent Address" required></br></br>
            <input type="text" name="city" placeholder="City" required></br></br>
            <input type="text" name="region" placeholder="Region" required></br></br>
            <input type="text" name="postalcode" placeholder="Postal Code" required></br></br>
            <input type="text" name="country" placeholder="Country" required></br></br>
            <input type="text" name="contactnumber" placeholder="Contact Number" required></br></br>
            <input type="text" name="firstname"  placeholder="Participant Name"    required></br></br>
            <h6> Date Of Birth(dd/mm/yy): <input type="date" name="dateofbirth" placeholder="Date Of Birth" required></h6></br></br>
            <input type="text" name="activity" placeholder="activity" required></br></br>
            <input type="text" name="classcode" placeholder="Class Code" required></br></br>
            <h6>Date Of Start(dd/mm/yy): <input type="date" name="startdate" placeholder="Date Of Start" required></h6></br></br>
            <input type="password" name="amountpaid" placeholder="Amount Payable" required></br></br>
            <h6>**The Reason should be handwritten and signed else it wont be accepted**</h6></br>
            <input type="file" name="reasonforcreditrequest" placeholder="Valid Reason For Credit Request" required></br>
            <h6>Employee signature:<input type="file" name="employeesign" placeholder="Sign" required></h6></br></br>
            
            <input type="submit" name="action" value="Save Credit request" style="color:white;background-color:green"></br></br>
            <style>
            
            
          
            
          
            h3{
                background-color: lightcyan;
            }
            body{
                background-color: lightgrey;
            }
           
            
        
        </style>
        </form>
    </center>
        
    </body>
</html>
