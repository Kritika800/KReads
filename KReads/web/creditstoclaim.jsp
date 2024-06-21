<%-- 
    Document   : creditsgiven
    Created on : 14 Jun, 2024, 7:20:56 PM
    Author     : DELL-PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            session=request.getSession(false);
            String referredto=(String)session.getAttribute("referredto");
        %>
        <form>
            <p> You got the credits for referring to  :<%=referredto%></p>
            <img src="https://tse2.mm.bing.net/th?id=OIP.J4dFxnxvrkbXVAwIatvJSAHaHa&pid=Api&P=0&h=180" alt="" width="100px">
            
        </form>
    </body>
</html>

<style>
body{
       
        background-color: aliceblue;
        background-size: 90%;
        padding-left: 200px;
       
        padding-top: 100px;
        padding-right: 100px;
        
        
        padding-bottom: 10px;
        
    }
    div{
        color: navy;
        
    }
   form{
       
        width: min-content;
        background-color: white;
        border-radius: 12px;
       
        padding-bottom: 200px;
       padding-left: 20px;
       padding-right: 20px;
       
      
        
    }
    </style>