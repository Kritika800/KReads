<%-- 
    Document   : editprofile
    Created on : 9 Jun, 2024, 2:25:31 AM
    Author     : DELL-PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>edit username?</title>
    </head>
    <body>
        
        <div></div>
        <div></div>
        <div></div>
        <form action="editoperations">
            <%
            session =request.getSession(false);
            String emailid=(String)session.getAttribute("emailid");
             String username=(String)session.getAttribute("username");
            %>
        
        <center>
          
            <table>
               
            <tr>
                <input type="email" name="emailid" value="<%=emailid%>" readonly style="font-family: monospace;text-align: center;background-color: white;width: 300px;height: 30px;border-radius: 8px;border-color: white;" ><br>
                </tr><br>
                <tr>
                 <input type="text" name="username" value="<%=username%>" readonly style="font-family: monospace;text-align: center;background-color: white;width: 300px;height: 30px;border-radius: 8px;border-color: white;"  ><br>
                </tr><br>
            <tr>
                 <input type="text" name="usernamenew"  placeholder="Set Username" style="font-family: monospace;font-size: medium;text-align: center;background-color: white;width: 300px;height: 30px;border-radius: 8px;border-color: white;" ><br>
            </tr><br>
            
            <tr><br>
            <td>
                <input type="submit" name="action" value="save" style="font-family: monospace;text-align: center;background-color: black;width: 200px;height: 40px;border-radius: 24px;border-color: white;color: white">
               
            </td>
            
                </tr><br>
           
            
        </table>
                
                <br><br>
                                          <br><br>
                                          <footer>
                                              <table>
                                                  <tr>
                                                      <td style="font-family: inherit;font-size: x-small">2024</td>
                                                      <td> &copy;</td>
                                                      <td> <img src="https://vignette.wikia.nocookie.net/alphabet/images/3/3f/Stickers-feu-alphabet-lettre-k.jpg.jpg/revision/latest?cb=20190518050721" alt="logo" width="15"></td>
                                                      
                                                  </tr>
                                              </table>
                                          </footer>
        </center>
        
                
       
        </form>
        
       
    </body>
</html>
<style>
    
    body{
        background-color: aliceblue;
        
        padding-top: 100px;
        padding-bottom: 100px;
        padding-left: 800px;
        
        
    }
   form{
        padding-top: 100px;
       width: min-content;
        background-color: white;
        border-radius: 15px;
        border-top-color: black;
        border-bottom-color: black;
        border-width: 30px;
        padding-bottom: 20px;
        padding-left: 50px;
        padding-right: 50px;
        
        
    }
    div {
  width: 35px;
  height: 5px;
  background-color: black;
  margin: 6px 0;
}
    
</style>