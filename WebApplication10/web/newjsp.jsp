<%-- 
    Document   : newjsp
    Created on : 14 Oct, 2023, 6:03:58 PM
    Author     : DELL-PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>J S P  session</title>
    </head>
    <body>
        <%
            session=request.getSession(false);
           String ab1= (String)session.getAttribute("ID2");
           String ab2=(String) session.getAttribute("LOAN");
           String ab3=(String)  session.getAttribute("ANNUALINCOME");
           String ab4=(String)  session.getAttribute("NAME");
           String ab5=(String)  session.getAttribute("CONTACTNUMBER");
           String ab6=(String)  session.getAttribute("EMAILADDRESS");
           String ab7=(String)  session.getAttribute("STATE");
           String ab8=(String)  session.getAttribute("HOMEADDRESS");
           String ab9=(String)  session.getAttribute("CITY");
            String ab11=(String) session.getAttribute("POSTALCODE");
          String ab12=(String)   session.getAttribute("COUNTRY");
           String ab13=(String)  session.getAttribute("JOBTITLE");
           String ab14=(String)  session.getAttribute("EMPLOYERNAME");
          // String ab15=(String)  session.getAttribute("CONFIRMREASONOFLOAN");
           String ab16=(String)  session.getAttribute("DATEOFBIRTH");
          // String ab17=(String)  session.getAttribute("EMPLOYEESIGN");
           






session.setAttribute("DB",ab16);
            session.setAttribute("id",ab1);
            session.setAttribute("loan",ab2);
            session.setAttribute("annual income",ab3);
            session.setAttribute("name",ab4);
                      
            session.setAttribute("contactnumber",ab5);
            session.setAttribute("emailaddress",ab6);
            session.setAttribute("state",ab7);
            session.setAttribute("homeaddress",ab8);
            session.setAttribute("city",ab9);
                           
            session.setAttribute("postalcode",ab11);
            session.setAttribute("country",ab12);
            session.setAttribute("jobtitle",ab13);
            session.setAttribute("employername",ab14);
         //   session.setAttribute("confirmreasonofloan",ab15);
         //   session.setAttribute("employeesign",ab17);
                                  

//response.sendRedirect("NewServlet1");

           %>
           
              <%="ID IS"%>         <%=ab1%></br>
       <%="LOAN DESIRED IS"%>       <%=ab2%></br>
       <%="ANNUAL INCOME IS"%>       <%=ab3%></br>
       <%="NAME IS"%>       <%=ab4%></br>
       <%="CONTACT NUMBER IS"%>       <%=ab5%></br>
       <%="EMAIL ADDRESS IS"%>       <%=ab6%></br>
       <%="STATE IS"%>       <%=ab7%></br>
       <%="HOME ADDRESS IS"%>       <%=ab8%></br>
       <%="CITY IS"%>       <%=ab9%></br>
            
        <%="POSTAL CODE IS"%>      <%=ab11%></br>
       <%="COUNTRY IS"%>       <%=ab12%></br>
        <%="JOB TITLE IS"%>      <%=ab13%></br>
        <%="EMPLOYER NAME IS"%>      <%=ab14%></br>
      
        <%="DATE OF BIRTH IS"%>      <%=ab16%></br>
      
        -->
            
            
    
            
            
<!--            
-->           
     
            
                
                
<!--        <form action="NewServlet1">
            <input type="submit" name="action" value="submit application for loan" >
            
        </form>-->
        
<!--           
    </body>
</html>

