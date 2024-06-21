<%-- 
    Document   : ratings
    Created on : 18 Jun, 2024, 6:33:00 PM
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
            String rating=(String)session.getAttribute("rating");
        %>
        <% 
            session=request.getSession(false);
            String bookname=(String)session.getAttribute("bookname");
        %>
        You Rated <h4><%=rating%></h4> for <h4><a href="<%=bookname%>"><%=bookname%></a></h4><br><br>
        
        <a href="http://localhost:16903/KReads/home1.jsp" style="align-content: center;"><--back</a>
    </body>
</html>

<style>
    body
    {
        background-color: aliceblue;
        padding: 50px;
    }
    
</style> 