<%-- 
    Document   : bankauthsession
    Created on : 15 Oct, 2023, 2:15:52 PM
    Author     : DELL-PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bank Authorization session</title>
    </head>
    <body>
        <h1>Bank Authorization session</h1>
        <%
           session=request.getSession(false);
           String a1=(String)session.getAttribute("userid");
           String a2=(String)session.getAttribute("city");
           String a3=(String)session.getAttribute("firstname");
           String a4=(String)session.getAttribute("emailid");
           String a5=(String)session.getAttribute("phonenumber");
           String a6=(String)session.getAttribute("bankname");
           String a7=(String)session.getAttribute("bankbranch");
           String a8=(String)session.getAttribute("bankphonenumber");
           String a9=(String)session.getAttribute("bankaccounttype");
           String a10=(String)session.getAttribute("confirmbankaccounttype");  
String a11=(String)session.getAttribute("sign");  

            %>
            
            
            <%="user id is:"%></br>      <%=a1%></br>
<%=" city is:"%></br>      <%=a2%></br>
<%="First Name is:"%></br>      <%=a3%></br>
<%="Email id is:"%></br>      <%=a4%></br>
<%="Phone number  is:"%></br>      <%=a5%></br>
<%="Bank NAMEis:"%></br>      <%=a6%></br>
<%="Bank barnch is:"%></br>      <%=a7%></br>
<%="Bank Phone Number  is:"%></br>      <%=a8%></br>
<%=" Bank account type  is:"%></br>      <%=a9%></br>
<%=" Confirm bank account type is:"%></br>      <%=a10%></br>
<%="Emplotyee sign is:"%></br>      <%=a11%></br>


            <%
                
            session.setAttribute("userid",a1);
                session.setAttribute("city",a2);
                session.setAttribute("firstname",a3);
                session.setAttribute("emailid",a4);
                session.setAttribute("phonenumber",a5);
                session.setAttribute("bankname",a6);
                session.setAttribute("bankbranch",a7);
                session.setAttribute("bankphonenumber",a8);
                session.setAttribute("bankaccounttype",a9);
                session.setAttribute("confirmbankaccounttype",a10);
                session.setAttribute("sign",a11);
                %>
            <form action="NewServlet1">
                <input type="submit" name="action" value="Edit"  style="color:white;background-color:blue" ><br></br>
            <input type="submit" name="action" value="Submit authorization request" style="color:white;background-color:green" >
            </form>
            
    </body>
</html>
