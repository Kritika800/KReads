<%-- 
    Document   : feedback
    Created on : 14 Jun, 2024, 11:32:09 PM
    Author     : DELL-PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Send Feedback</title>
    </head>
    <body>
        <form action="servletforhomepage">
            <br>
            <h3>Feedback form</h3><br>
            <div class="enquiry">
<!--                 Username:<br>
                 <input type="text" name="feedbackperson" placeholder="Write your name" ><br><br>
                 Email Address:<br>
                 <input type="email" name="mailid"placeholder="write your email"><br><br>-->
<%
    session=request.getSession(false);
    String username=(String)session.getAttribute("username");
    String emailid=(String)session.getAttribute("emailid");
%>
                Feedback:<br>
                <input type="hidden" name="username" value="<%=username%>"  style="border-radius: 8px;" >
                <input type="hidden" name="emailid" value="<%=emailid%>" style="border-radius: 8px;" >
                <textarea class="input" rows="5" cols="20" name="feedbackdata" style="border-radius: 8px;" >Write your feedback...</textarea>
            </div><br><br>
            <input type="submit" name="action" value="submit feedback" style="background-color: navy;color: white;border-radius:  4px;height: 30px;">
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
        background-color: aliceblue;
        padding-left: 300px;
        padding-top: 200px;
        
    }
    form{
        background-color: white;
        color: black;
        width: 500px;
        height: 300px;
        padding-left: 100px;
        background-image: url('https://tse3.mm.bing.net/th?id=OIP.bcwgZTwnnqxUgo8TLMc6qQAAAA&pid=Api&P=0&h=180');
        background-size: 200px;
        background-position: right;
        background-repeat: no-repeat;
        border-radius: 12px;
        padding-bottom: 100px;
    }
    .enquiry
    {
        border-radius: 20px;
        width: 200px;
        
       
        
    }
</style>