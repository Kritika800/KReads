/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.*;

import javax.servlet.http.Part;
import java.io.InputStream;
import java.time.LocalDate;



/**
 *
 * @author DELL-PC
 */
public class servletforhomepage extends HttpServlet {

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
            
            String btn=request.getParameter("action");
            
            HttpSession session=request.getSession();
            String username=request.getParameter("username");
            String emailid=request.getParameter("emailid");
            String password=request.getParameter("userpassword");
            
//            String wishlistcheck=request.getParameter("wishlistcheck");
//            
//           
            
            String editbtn=request.getParameter("change");
            
            
           
            String bkname="";
            
            
            if(btn.equals("wishlist"))
            {
                LocalDate today=LocalDate.now();
            session.setAttribute("today",today);
            
                response.sendRedirect("http://localhost:16903/KReads/validatesignin.jsp");
            }
            
            if(btn.equals("Sign in"))
            {
                
                 
                String query="Select * from users where username='"+username+"' and password='"+password+"'";
                Statement stmt=con.createStatement();
                ResultSet rstmt=stmt.executeQuery(query);
                
               
               session.setAttribute("emailid",emailid);
              
               session.setAttribute("username",username);
                if(rstmt.next())
                {
                    
                    
                    
                    response.sendRedirect("http://localhost:16903/KReads/home1.jsp");
                }
                else
                {
                    out.println("invalid credentials");
                }
                
                
            }
            else if(btn.equals("Sign up"))
            {
                String referredby=request.getParameter("referredby");
              
                    String query="Insert into users(username,emailid,password,referredby) values('"+username+"','"+emailid+"','"+password+"','"+referredby+"')";
                PreparedStatement stmt=con.prepareStatement(query);
                int rstmt=stmt.executeUpdate();
                if(rstmt>0)
                {
                    session.setAttribute("referredby",referredby);
                    response.sendRedirect("http://localhost:16903/KReads/signintohome.jsp");
                }
                else
                    out.println("couldnt signup");
                }
                
            
            else if(btn.equals("reset password"))
            {
                String newpassword=request.getParameter("confirmpassword");
                String query="Update users set password='"+newpassword+"' where username='"+username+"' ";
                PreparedStatement stmt=con.prepareStatement(query);
                int rstmt=stmt.executeUpdate();
                if(rstmt>0)
                {
                    response.sendRedirect("http://localhost:16903/KReads/signintohome.jsp");
                }
                else
                {
                    out.println("error in updating password");
                }
                
            }
         
            
            else if(btn.equals("applesignin"))
            {
                
                response.sendRedirect("http://localhost:16903/KReads/Your_Profile.jsp");
            }
            else if(btn.equals("Continue with Google"))
            {
                response.sendRedirect("http://localhost:16903/KReads/Your_Profile.jsp");
            }
            
            else if(btn.equals("submit"))
            {
                Part resume=request.getPart("resume");
                InputStream resumesubmit=resume.getInputStream();
                    String email=request.getParameter("jobseekeremail");
                    String jobseekername=request.getParameter("jobseeker");
                    String query="Insert into resumedata(jobseeker,emailid,resume) values('"+jobseekername+"','"+email+"','"+resumesubmit+"')";
                    PreparedStatement stmt=con.prepareStatement(query);
                    int rstmt=stmt.executeUpdate();
                    if(rstmt>0)
                    {
                    out.println("Thankyou for connecting us, our team will be contacting very soon for next process.!");
                    }
                    
                    else
                    {
                    out.println("could not process, try after sometime....");
                    }    
            }
            else if(btn.equals("save"))
            {
                
                String rating=request.getParameter("rating");
                String user=request.getParameter("username2");
               session.setAttribute("rating", rating);
              bkname=(String)session.getAttribute("bookname");
              
//               rating=(String)session.getAttribute("rating");
              
              String query3= "Insert into viewersrating(ratedfor,rating,ratedby) values('"+bkname+"','"+rating+"','"+user+"')";
              PreparedStatement stmt=con.prepareStatement(query3);
              int rstmt=stmt.executeUpdate();
              if(rstmt>0)
              {
                  response.sendRedirect("http://localhost:16903/KReads/ratings.jsp");
                  
              }
              else
              {
                 out.println("Rated could not be processed as of now...please try again later");
              }
              
              
           
            }
            else if(btn.equals("W"))
                    {
                         session=request.getSession(false);
                         String wish=(String)session.getAttribute("bookname");
                        
                        
                    if(  wish == null)
                    {
                        response.sendRedirect("http://localhost:16903/KReads/emptywishlist.jsp");
                    }
                    else
                    {
                        response.sendRedirect("http://localhost:16903/KReads/WishList.jsp");
                    }
                    }
            else if(btn.equals("history"))
            {
                session=request.getSession(false);
               
                String bk=(String)session.getAttribute("bookname");
//                String username2=(String)session.getAttribute("username");
                //String rated=(String)session.getAttribute("username");
                
                
                if(bk == null)
                {
                    
                    
                response.sendRedirect("http://localhost:16903/KReads/nohistory.jsp");
                }
                else
                    
                {
                  
               String str="Select* from viewersrating where ratedby='"+username+"' ";
               Statement  stmt=con.createStatement();
               ResultSet rstmt=stmt.executeQuery(str);String ratedfor="";String rating="";
               while(rstmt.next())
               {
                   
                    //user=rstmt.getString("ratedby");
                    ratedfor=rstmt.getString("ratedfor");
                    rating=rstmt.getString("rating");
                    
                    session.setAttribute("ratedfor",ratedfor);
                    session.setAttribute("rating",rating);
//                   session.setAttribute("username1",username1);
//                   session.setAttribute("ratedfor",ratedfor);
                   
                   response.sendRedirect("http://localhost:16903/KReads/history.jsp");
               }
               //out.println(user);
                   out.println(ratedfor);
//               else
//                  
//                    response.sendRedirect("http://localhost:16903/KMargretlibrary/nohistory.jsp");
                
            }
            }
            else if(btn.equals("logout"))
            {
                session.invalidate();
                response.sendRedirect("http://localhost:16903/KReads/coverpage.html");
            }
            
            else if(btn.equals("Choose Book"))
            {
                response.sendRedirect("http://localhost:16903/KReads/home1.jsp");
            }
            else if(btn.equals("credits"))
            {
//               
                
                //referredby=request.getParameter("referredby");
                String referredto=(String)session.getAttribute("referredto");
                if(referredto == null)
                {
                   
                    
                    response.sendRedirect("http://localhost:16903/KReads/nocreditstoclaim.jsp");
                }
                else
                {
                    
                    response.sendRedirect("http://localhost:16903/KReads/creditstoclaim.jsp"); 
                        
                }
                
                
//                        
                }
                
               
                
                
            
            else if (btn.equals("send feedback"))
            {
                response.sendRedirect("http://localhost:16903/KReads/feedback.jsp");
            }
            else if(btn.equals("submit feedback"))
            {
                
//                String uname=request.getParameter("feedbackperson");
//                String emaildata=request.getParameter("feedbackperson");
                String username2=(String)session.getAttribute("username");
                String emailid2=(String)session.getAttribute("emailid");
                
                String feedbackdata=request.getParameter("feedbackdata");
                String newquery="Insert into feedback(username,emailid,feedbackdata) values('"+username2+"','"+emailid2+"','"+feedbackdata+"')";
                PreparedStatement stmt=con.prepareStatement(newquery);
                int rstmt=stmt.executeUpdate();
                if(rstmt>0)
                {
                    session.setAttribute("username",username);
                    session.setAttribute("emailid",emailid);
                    response.sendRedirect("http://localhost:16903/KReads/feedbacksuccess.jsp");
                }
                else
                {
                    response.sendRedirect("http://localhost:16903/KReads/feedbackfaillure.jsp");
                }
                        
            }
            if(btn.equals("refer"))
            {
                String referredto=request.getParameter("referredto");
                String username1=request.getParameter("username");
                String emailid1=request.getParameter("emailid");
                
                String q="Insert into referaldata(username,emailid,referredto) values('"+username1+"','"+emailid1+"','"+referredto+"')";
                PreparedStatement stmt=con.prepareStatement(q);
                int rstmt=stmt.executeUpdate();
                if(rstmt>0)
                {   
                    session.setAttribute("username",username);
                    session.setAttribute("emailid",emailid);
                    session.setAttribute("referredto",referredto);
                    response.sendRedirect("http://localhost:16903/KReads/referredto.jsp");
                }
                else
                    out.println("you have not referred anyone");
           
            }
           
            else
            {
                out.println("response not found");
            }
    
                    
            
            
            
            
            
            
            if(editbtn.equals("changeusername"))
            {
                response.sendRedirect("http://localhost:16903/KReads/editusername.jsp");
                
            }
            else if(editbtn.equals("changeemailid"))
            {
                response.sendRedirect("http://localhost:16903/KReads/editemailid.jsp");
                
            }
            else
            {
                out.println("error");
            }
            
            
            
          
        }
        catch(Exception e)
        {
            
            out.println(e);
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
