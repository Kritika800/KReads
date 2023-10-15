<%-- 
    Document   : HomePage
    Created on : 11 Oct, 2023, 9:17:26 PM
    Author     : DELL-PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BANK MANAGEMENT SYSTEM</title>
    </head>
    <body>
        <center>
        <h3>BANK MANAGEMENT SYSTEM</h3>
<!--        <form action="servlet">-->
            <h4>Various bank forms for customer enquiry can be accessed from below </h4>
           <a href="http://localhost:16903/WebApplication10/Bank_Account_Registration_Form.jsp">Bank Account Registration Form </a></br>
            <a href ="http://localhost:16903/WebApplication10/Bank_Authorization_Form.jsp">Bank Authorization Form</a></br>
            <a href="http://localhost:16903/WebApplication10/Credit_Request_Form.jsp">Credit Request Form</a></br>
            <a href="http://localhost:16903/WebApplication10/Direct_Deposit_Authorization_Form.jsp">Direct deposit Authorization Form</a></br>
            <a href ="http://localhost:16903/WebApplication10/Loan_Application_Form.jsp">Loan Application Form</a> </br>
            </br></br>
            <a href="Loginfirst.jsp"><input type="submit" name="action" value="Logout" style="color:white;background-color:blue"></a>
          <style>
            h3{
                background-color: lightcyan;
            }
            body{
                background-color: lightgrey;
            }
             h4{
                background-color: white;
            }
           
            
        </style>
         </center>    
    </body>
</html>
