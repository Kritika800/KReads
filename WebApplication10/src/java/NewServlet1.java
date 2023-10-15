/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import javax.servlet.http.HttpSession;
/**
 *
 * @author DELL-PC
 */
public class NewServlet1 extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try 
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bank_management_system","root","");
            String btn=request.getParameter("action");
            
            
            
            HttpSession session=request.getSession();
            if(btn.equals("submit application for loan"))
            {
           String abc1=(String)session.getAttribute("id");
           String abc2=(String) session.getAttribute("loan");
           String abc3=(String)  session.getAttribute("annual income");
           String abc4=(String)  session.getAttribute("name");
           String abc5=(String)  session.getAttribute("contactnumber");
           String abc6=(String)  session.getAttribute("emailaddress");
           String abc7=(String)  session.getAttribute("state");
           String abc8=(String)  session.getAttribute("homeaddress");
           String abc9=(String)  session.getAttribute("city");
           String abc11=(String) session.getAttribute("postalcode");
           String abc12=(String)   session.getAttribute("country");
           String abc13=(String)  session.getAttribute("jobtitle");
           String abc14=(String)  session.getAttribute("employername");
          // String abc15=(String)  session.getAttribute("confirmreasonofloan");
           String abc16=(String)  session.getAttribute("DB");
           int newid=Integer.parseInt(abc1);
          // String abc17=(String)  session.getAttribute("employeesign");
                String query="Insert into loanapplication(id,desiredloan,annualincome,name,dateofbirth,contactnumber,emailaddress,homeaddress,city,state,postalcode,country,jobtitle,employername) values('"+newid+"','"+abc2+"','"+abc3+"','"+abc4+"','"+abc16+"','"+abc5+"','"+abc6+"','"+abc8+"','"+abc9+"','"+abc7+"','"+abc11+"','"+abc12+"','"+abc13+"','"+abc14+"')";
                PreparedStatement stmt=con.prepareStatement(query);      
                int rstmt=stmt.executeUpdate();
                if(rstmt>0)
                {
                    out.println("loan application submitted successfully and congratulations very soon you will be recieving a loan of"+abc2+"in your account");
                }
                else
                {
                    out.println("error in submitting loan application form");
                }
            }
            
        }
        catch(Exception e)
        {
            out.println("Exception is"+e);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

//  <%="ID IS"%>         <%=ab1%></br>
//       <%="LOAN DESIRED IS"%>       <%=ab2%></br>
//       <%="ANNUAL INCOME IS"%>       <%=ab3%></br>
//       <%="NAME IS"%>       <%=ab4%></br>
//       <%="CONTACT NUMBER IS"%>       <%=ab5%></br>
//       <%="EMAIL ADDRESS IS"%>       <%=ab6%></br>
//       <%="STATE IS"%>       <%=ab7%></br>
//       <%="HOME ADDRESS IS"%>       <%=ab8%></br>
//       <%="CITY IS"%>       <%=ab9%></br>
//            
//        <%="POSTAL CODE IS"%>      <%=ab11%></br>
//       <%="COUNTRY IS"%>       <%=ab12%></br>
//        <%="JOB TITLE IS"%>      <%=ab13%></br>
//        <%="EMPLOYER NAME IS"%>      <%=ab14%></br>
//        <%="CONFIRM REASON OF LOAN IS"%>      <%=ab15%></br>
//        <%="DATE OF BIRTH IS"%>      <%=ab16%></br>
//        <%="EMPLOYEE SIGN IS"%>      <%=ab17%></br><!--
//        -->