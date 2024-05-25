/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author DELL-PC
 */
public class sessionservlet extends HttpServlet {

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
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/assignmnt","root","");
            String btn=request.getParameter("action");
             if(btn.equals("FINAL SUBMIT"))
            {
                HttpSession session=request.getSession();
            //using false so that new session is not created here otherwise all data of session will be erased.
            String p=(String)session.getAttribute("name1");
            String q=(String)session.getAttribute("mail1");
            String r=(String)session.getAttribute("option1");
            String s=(String)session.getAttribute("option2");
            String t=(String)session.getAttribute("option3");
            String u=(String)session.getAttribute("suggestion1");
            
            
        String query="Insert into customersurvey(name,email,is_it_the_first_time_u_r_using_our_products_and_service,suggestion_policy,How_satisfied_are_you_with_your_company_overall,Do_you_have_suggestion_to_improve_our_service)values('"+p+"','"+q+"','"+r+"','"+s+"','"+t+"','"+u+"')";
            /* TODO output your page here. You may use following sample code. */
            
            PreparedStatement stmt=con.prepareStatement(query);
            int rstmt=stmt.executeUpdate();
            if(rstmt>0)
            {
                out.println("successfully submitted the form");
            }
            
        }
        }
        catch(Exception e)
        {
           out.println("exception is"+e);
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
