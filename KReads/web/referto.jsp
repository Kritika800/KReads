<%-- 
    Document   : referto
    Created on : 18 Jun, 2024, 6:51:47 PM
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
        <form action="servletforhomepage">
            <table>
                <%
                session=request.getSession(false);
                String username=(String)session.getAttribute("username");
                String emailid=(String)session.getAttribute("emailid");
                %>
                <tr style="font-size: small;">
                <input type="hidden" name="username" value="<%=username%>" style="border-color: white;border-radius: 4px;width: 200px;height: 40px;"><br><br>
                <input type="hidden" name="emailid" value="<%=emailid%>" style="border-color: white;border-radius: 4px;width: 200px;height: 40px;"><br><br>
                      <input type="email" name="referredto"  placeholder="Email Address of the person to be referred...." style="border-color: white;border-radius: 4px;width: 200px;height: 40px;">
            </tr>
            <br><br>
            <tr><input type="submit" name="action" value="refer" style="background-color: blue;color: white;border-radius: 8px;width: 100px;height: 30px;"></tr>
            </table>
            
        </form>
        
    </body>
</html>

<style>
    body{
        padding: 100px;
        background-color: aliceblue;
        
    }
    form{
        padding: 100px;
        width: min-content;
        
        padding: 50px;
        border-radius: 8px;
        background-color: white;
    }
</style>