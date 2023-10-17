<%-- 
    Document   : creditrequestsession
    Created on : 15 Oct, 2023, 2:27:23 PM
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
        <h1>CREDIT REQUEST SESSION</h1>
        <%
            session=request.getSession(false);
           String a1=(String)session.getAttribute("userid");
           String a2=(String)session.getAttribute("parentname");
           String a3=(String)session.getAttribute("permanentaddress");
           String a4=(String)session.getAttribute("city");
           String a5=(String)session.getAttribute("region");
           String a6=(String)session.getAttribute("postalcode");
           String a7=(String)session.getAttribute("country");
           String a8=(String)session.getAttribute("contactnumber");
           String a9=(String)session.getAttribute("firstparticipantname");
           String a10=(String)session.getAttribute("dateofbirth");  
String a11=(String)session.getAttribute("activity");  
 String a12=(String)session.getAttribute("classcode");
           String a13=(String)session.getAttribute("startdate");
           String a14=(String)session.getAttribute("amountpaid");
           String a15=(String)session.getAttribute("reasonofcreditrequesr");
           String a16=(String)session.getAttribute("sign");
           
           
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
<%=" Bank account type  is:"%></br>      <%=a12%></br>
<%=" Confirm bank account type is:"%></br>      <%=a13%></br>
<%="Emplotyee sign is:"%></br>      <%=a14%></br>
<%=" Bank account type  is:"%></br>      <%=a15%></br>
<%=" Confirm bank account type is:"%></br>      <%=a16%></br>


        
        <form action="NewServlet1">
                <input type="submit" name="action" value="Edit"  style="color:white;background-color:blue" ><br></br>
            <input type="submit" name="action" value="Submit Credit request" style="color:white;background-color:green" >
            </form>
    </body>
</html>

