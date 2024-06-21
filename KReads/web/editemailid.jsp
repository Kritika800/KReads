<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : editemailid
    Created on : 9 Jun, 2024, 2:53:27 AM
    Author     : DELL-PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Edit email id?</title>
    </head>
    <body>
       
        <form action="editoperations">
            
            <% 
 session =request.getSession(false);
 String username=(String)session.getAttribute("username");
  String emailid=(String)session.getAttribute("emailid");
 
            %>
            <br>
            <center>
                <br>
                <table>
            <tr>
                <input type="text" name="username" value="<%=username%>"  readonly style="font-family: monospace;border-color: white;border-radius: 4px;font-size: medium;width: 300px;height: 30px;" >
            </tr><br><br>
            <tr>
                 <input type="email" name="emailid"  value="<%=emailid%>" readonly style="font-family: monospace;border-color: white;border-radius: 4px;font-size: medium;width: 300px;height: 30px;">
                                          </tr><br><br>
            <tr style="border-radius: 2px;font-size: medium">
               <input type="email" name="newemail" placeholder="New Email Address" style="font-family: monospace;text-align: center;border-color: white;border-radius: 4px;font-size: medium;width: 300px;height: 30px;">
               </tr><br><br><br><br><br>
            <tr>
            <input type="submit" name= "action" value="save"  style="font-family: monospace;text-align: center;border-color: white;background-color: black;color: gainsboro;border-radius: 12px;font-size: medium;width: 200px;height: 40px;" >
            </tr><br>
        </table>
                                          
                                          
            </center>
                                          
                                          
                                          <br><br><br><br>
                                          <footer>
                                              <center>
                                              <table>
                                                  <tr>
                                                      <td style="font-family: inherit;font-size: x-small">2024</td>
                                                      <td> &copy;</td>
                                                      <td> <img src="https://vignette.wikia.nocookie.net/alphabet/images/3/3f/Stickers-feu-alphabet-lettre-k.jpg.jpg/revision/latest?cb=20190518050721" alt="logo" width="15"></td>
                                                      
                                                  </tr>
                                              </table>
                                              </center>
                                          </footer>
        
        </form>
      
    </body>
    
    
                             
</html>



<style>
    
    body{
        background-color: aliceblue;
        background-size: 50%;
        padding-bottom: 20px;
        padding-top: 100px;
        padding-left: 700px;
        
    }
    form{
        background-color: white;
        
        padding-bottom: 50px;
        padding-top: 20px;
        padding-left: 50px;
        padding-bottom: 20px;
        width: min-content;
        border-radius: 8px;
        padding-right: 50px;
        
    }
    
</style>