<%-- 
    Document   : referredto
    Created on : 18 Jun, 2024, 9:35:58 PM
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
            String referredto=(String)session.getAttribute("referredto");
            String bookname=(String)session.getAttribute("bookname");
            
        %>
        You referred <a href="<%=bookname%>"><%=bookname%></a> to <a href="<%=referredto%>"><%=referredto%></a><br><br>
        <table>
            <tr>
                <td><a href="http://localhost:16903/KReads/referto.jsp"><--back</a></td>
                <td style="width: 400px;"></td>
                <td><a href="http://localhost:16903/KReads/home1.jsp">Home</a></td>
            </tr>
        </table>
        
        <%
            session.setAttribute("referredperson",referredto);
            
            %>
    </body>
</html>
