<%-- 
    Document   : customersurveysession
    Created on : 25 Oct, 2023, 8:29:44 PM
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
        <h1>Form Review</h1>
        <%
            session=request.getSession(false);
            //using false so that new session is not created here otherwise all data of session will be removed.
            String s=(String)session.getAttribute("NAME");
            String s1=(String)session.getAttribute("MAIL");
            String s2=(String)session.getAttribute("OPTION1");
            String s3=(String)session.getAttribute("OPTION2");
            String s4=(String)session.getAttribute("OPTION3");
            String s5=(String)session.getAttribute("SUGGESTION");
            
            %>
            
            
            
            The Name is:                                                           <%=s%> <br>
            The Mail Id is:                                                        <%=s1%><br>
            Is this the first time you are using our products and services?        <%=s2%><br>
            Would you suggest to your friends and colleague?                       <%=s3%><br>
            How satisfied are you with your company overall?                       <%=s4%><br>
            Do you have suggestion to improve our service?                         <%=s5%><br>
            

            
            <% session.setAttribute("name1", s);
            session.setAttribute("mail1",s1);
            session.setAttribute("option1",s2);
             session.setAttribute("option2",s3);
             session.setAttribute("option3",s4);
             session.setAttribute("suggestion1",s5);
            
            %>
            
            <form action="sessionservlet"><br>
                <input type="submit" name="action" value="FINAL SUBMIT" style="color:white;background-color:deepskyblue">
            </form>
    </body>
</html>


