<%-- 
    Document   : Loginfirst
    Created on : 15 Oct, 2023, 9:31:40 AM
    Author     : DELL-PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login first</title>
    </head>
    <body>
    <center>
        <h3>Application login</h1>
        <style>
            h3{
                background-color: lightcyan;
            }
           
            
        </style>
        
        
        <form action="NewServlet">
            <input type="text" name="accountholdername" placeholder="username" style="border: 1px solid black; placeholder { text-align: center}" required></br></br>
            <input type="password" name="userpin" placeholder="User Pin"  style="border: 1px solid black" required></br></br>
            <input type="submit" name="action" value="Login" style="color:white;background-color:green">
            <input type="reset" name="action" value="Reset" style="color:white;background-color:blue">
            
        </form>
    </center>
    </body>
</html>
