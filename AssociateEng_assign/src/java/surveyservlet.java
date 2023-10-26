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
public class surveyservlet extends HttpServlet 
{

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
            throws ServletException, IOException
    {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try
        
        {
            
            String str=request.getParameter("name");
            String str1=request.getParameter("mail");
            String str2=request.getParameter("option1");
            String str3=request.getParameter("option2");
            String str4=request.getParameter("option3");
            String str5=request.getParameter("suggestion");
            String btn=request.getParameter("action");
            String a="",b="",c="";
            if(str2.equals("yes"))
            {
                a="yes";
                
            }
            else
                a="no";
            if(str3.equals("yes"))
            {
                b="yes";
            }
            else
                b="no";
            if(str4.equals("Satisfied"))
            {
                c="Satisfied";
            }
            else if(str4.equals("Undecided"))
                c="Undecided";
            else
                c="Unsatisfied";
            
            if(btn.equals("SUBMIT"))
            {
                HttpSession session=request.getSession();
                session.setAttribute("NAME",str);
                session.setAttribute("MAIL",str1);
                session.setAttribute("OPTION1",a);
                session.setAttribute("OPTION2",b);
                session.setAttribute("OPTION3",c);
                session.setAttribute("SUGGESTION",str5);
                response.sendRedirect("customersurveysession.jsp");
                        
                
            }
            
            
             if(btn.equals("RESET"))
            {
                response.sendRedirect("Customersurvey_HTML_QUES2.jsp");
            }
            
           
        }
        catch(Exception e)
        {
            out.println("exception"+e);
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