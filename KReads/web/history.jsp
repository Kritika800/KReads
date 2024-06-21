<%-- 
    Document   : history
    Created on : 10 Jun, 2024, 12:48:09 PM
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
        <form action="validateservlet">
            <h1>History</h1>
        <% 
session=request.getSession(false);

String ratedfor=(String)session.getAttribute("ratedfor");
String rating=(String)session.getAttribute("rating");

        %>
        
        
        You rated <table>
            <tr>
                <td><h4><%=rating%></h4></td>
                <td>for :</td>
                <h4><%=ratedfor%></h4> 
            </tr>
        </table>
        
        
            
        </form>
        
        
        <script>
               document.addEventListener('contextmenu', event=> event.preventDefault()); 
      document.onkeydown = function(e) { 
      if(event.keyCode == 123) { 
      return false; 
      } 
      if(e.ctrlKey && e.shiftKey && e.keyCode == 'I'.charCodeAt(0)){ 
      return false; 
      } 
      if(e.ctrlKey && e.shiftKey && e.keyCode == 'J'.charCodeAt(0)){ 
      return false; 
      } 
      if(e.ctrlKey && e.keyCode == 'U'.charCodeAt(0)){ 
      return false; 
      } 
      } 
           </script>
           
           
          
    </body>
</html>


<style>
    body{
       
        background-size: 90%;
        padding-left: 200px;
       
       padding-top: 20px;
        padding-right: 100px;
        background-color: aliceblue;
        
        padding-bottom: 50px;
        
        
        
    }
    form{
        padding-left: 150px;
      
        padding-bottom: 20px;
        padding-right: 100px;
        
        padding-left: 100px;
        background-color: white;
        width: min-content;
        background-repeat: repeat;
        border-radius: 16px; 
    }
</style>
