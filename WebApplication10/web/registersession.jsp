<%-- 
    Document   : registersession
    Created on : 15 Oct, 2023, 1:39:06 PM
    Author     : DELL-PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>REGISTER SESSION</title>
    </head>
    <body>
        <h1>REGISTER SESSION</h1>
        <%
            
session =request.getSession(false);
String a1=(String)session.getAttribute("userid");
String a2=(String)session.getAttribute("confirmtypeofaccount");
String a3=(String)session.getAttribute("confirmtypeofcurrency");
String a4=(String)session.getAttribute("firstname");
String a5=(String)session.getAttribute("lastname");
String a6=(String)session.getAttribute("contactnumber");
String a7=(String)session.getAttribute("emailaddress");
String a8=(String)session.getAttribute("mailinghomeaddress");
String a9=(String)session.getAttribute("city");
String a10=(String)session.getAttribute("state");
String a11=(String)session.getAttribute("postalcode");
String a12=(String)session.getAttribute("country");
String a13=(String)session.getAttribute("validmail");
%>

<%="user id is:"%></br>      <%=a1%></br>
<%=" confirmtypeofaccount is:"%></br>      <%=a2%></br>
<%="confirmtypeofcurrency is:"%></br>      <%=a3%></br>
<%="firstname is:"%></br>      <%=a4%></br>
<%="last name is:"%></br>      <%=a5%></br>
<%="contact number is:"%></br>      <%=a6%></br>
<%="email address is:"%></br>      <%=a7%></br>
<%="mailinghomeaddress is:"%></br>      <%=a8%></br>
<%=" city is:"%></br>      <%=a9%></br>
<%=" state is:"%></br>      <%=a10%></br>
<%="postalcode is:"%></br>      <%=a11%></br>
<%="country is:"%></br>      <%=a12%></br>
<%="validmail  is:"%></br>      <%=a13%></br>





<%
session.setAttribute("userid", a1);
                session.setAttribute("confirmtypeofaccount", a2);
                session.setAttribute("confirmtypeofcurrency", a3);
                session.setAttribute("firstname", a4);
                session.setAttribute("lastname", a5);
                session.setAttribute("contactnumber", a6);
                session.setAttribute("emailaddress", a7);
                session.setAttribute("mailinghomeaddress", a8);
                session.setAttribute("city", a9);
                session.setAttribute("state", a10);
                session.setAttribute("postalcode", a11);
                session.setAttribute("country", a12);
                session.setAttribute("validmail", a13);
                

        %>
        <form action="NewServlet1">
                <input type="submit" name="action" value="Edit"  style="color:white;background-color:blue" ><br></br>
            <input type="submit" name="action" value="Submit registration" style="color:white;background-color:green" >
            </form>
            
        
        
        
    </body>
</html>
