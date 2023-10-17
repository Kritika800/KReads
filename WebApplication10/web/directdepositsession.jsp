<%-- 
    Document   : directdepositsession
    Created on : 15 Oct, 2023, 4:15:23 PM
    Author     : DELL-PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Direct  deposit session</title>
    </head>
    <body>
        <h1>Direct deposit session </h1>
        
        <%
            session=request.getSession(false);
            String a13=(String)session.getAttribute("companyname");
            String a1=(String)session.getAttribute("companyname");
           String a2=(String)session.getAttribute("firstname");
           String a3=(String)session.getAttribute("lastname");
           String a4=(String)session.getAttribute("address");
           String a5=(String)session.getAttribute("city");
           String a6=(String)session.getAttribute("region");
           String a7=(String)session.getAttribute("postalcode");
           String a8=(String)session.getAttribute("country");
           String a9=(String)session.getAttribute("nameofbank");
           String a10=(String)session.getAttribute("amounttobedeposited");  
String a11=(String)session.getAttribute("employeesign");  
 String a12=(String)session.getAttribute("confirmbankname");
            %>
            
            
        <%="company name is:"%></br>      <%=a1%></br>
<%=" firstname is:"%></br>      <%=a2%></br>
<%="last name is:"%></br>      <%=a3%></br>
<%="Address is:"%></br>      <%=a4%></br>
<%="City  is:"%></br>      <%=a5%></br>
<%="Region is:"%></br>      <%=a6%></br>
<%="PostalCode is:"%></br>      <%=a7%></br>
<%="Country  is:"%></br>      <%=a8%></br>
<%=" Name of Bank is:"%></br>      <%=a9%></br>
<%=" Amount to be deposited is:"%></br>      <%=a10%></br>
<%="Emplotyee sign is:"%></br>      <%=a11%></br>
<%=" Confirm bank name  is:"%></br>      <%=a12%></br>
<%=" id  is:"%></br>      <%=a13%></br>
   
            
     <% 
                session.setAttribute("companyname", a1);
                session.setAttribute("firstname", a2);
                session.setAttribute("lastname", a3);
                session.setAttribute("address", a4);
                session.setAttribute("city", a5);
                session.setAttribute("region", a6);
                session.setAttribute("postalcode", a7);
                session.setAttribute("country", a8);
                session.setAttribute("nameofbank", a9);
                session.setAttribute("amounttobedeposited",a10);
                session.setAttribute("employeesign", a11);
                session.setAttribute("confirmbankname", a12);
                session.setAttribute("userid",a13);
                %>   
                
                
                
                <form action="NewServlet1">
                <input type="submit" name="action" value="Edit"  style="color:white;background-color:blue" ><br></br>
            <input type="submit" name="action" value="Submit Deposit authorization request" style="color:white;background-color:green" >
            </form>
            
           
    </body>
</html>

