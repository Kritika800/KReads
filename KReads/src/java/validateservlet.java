/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.*;
import java.util.HashSet;
/**
 *
 * @author DELL-PC
 */
public class validateservlet extends HttpServlet {

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
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","");
            
            
            String username=request.getParameter("username");
            String password=request.getParameter("userpassword");
            String emailid=request.getParameter("emailid");
            String bookname=request.getParameter("bookname");
            String btn=request.getParameter("action");
            
            
            HttpSession session=request.getSession(false);//it won't create new session
            
            if(btn.equals("validate"))
            {
                String query="Select * from users where username='"+username+"' and password='"+password+"'";
                Statement stmt=con.createStatement();
                ResultSet rstmt=stmt.executeQuery(query);
                if(rstmt.next())
                {
                    //for sending values to your profile section
                    //session.setAttribute("username",username);
                    
                   session.setAttribute("bookname",bookname);
                    //session.setAttribute("emailid",emailid);
                    response.sendRedirect("http://localhost:16903/KReads/WishList.jsp");
                  
                }
                else
                {
                    out.println("invalid login");
                }
                String query2="Insert into books_read(username,bookname,emailid)values('"+username+"','"+bookname+"','"+emailid+"')";
                PreparedStatement stmt2=con.prepareStatement(query2);
                int rstmt2=stmt2.executeUpdate();
                if(rstmt2>0)
                {
                    session.setAttribute("username",username);
                    response.sendRedirect("http://localhost:16903/KReads/WishList.jsp");
                }
                else
                {
                    out.println("server busy...please try later");
                }
            }
            else if(btn.equals("logout"))
                    {
                        session.invalidate();
                        response.sendRedirect("http://localhost:16903/KMargretlibrary/coverpage.html");
                    }
//            else if(btn.equals("history"))
//            {
//                session=request.getSession();
//               
//                
//                if(session== null)
//                {
//                    
//                response.sendRedirect("http://localhost:16903/KMargretlibrary/nohistory.jsp");
//                
//               
//            }
//                else
//                    response.sendRedirect("http://localhost:16903/KMargretlibrary/history.jsp");
//            }
            else if(btn.equals("Choose book to Wishlist"))
            {
                response.sendRedirect("http://localhost:16903/KReads/home1.jsp");
            }
            else
            {
                out.println("could not initiate login");
            }
            
            
            /* TODO output your page here. You may use following sample code. */
            
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
