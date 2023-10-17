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
import java.time.Year;
import javax.servlet.http.HttpSession;
import java.sql.*;

/**
 *
 * @author DELL-PC
 */
public class NewServlet extends HttpServlet {

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
            
            String a=request.getParameter("id");
           
            String b=request.getParameter("companyname");
            String c=request.getParameter("firstname");
            String d=request.getParameter("lastname");
          String h=request.getParameter("city");
            String i=request.getParameter("region");
            String j=request.getParameter("postalcode");
            String k=request.getParameter("country");
            String l=request.getParameter("bankname");
            String m=request.getParameter("amountdeposit");
            String n=request.getParameter("employeesign");
            String o=request.getParameter("confirmtypeofaccount");
            String ok=request.getParameter("action");
            String newstr="";
            int z,ny;
         
            if(ok.equals("Save Registration"))
            {
                HttpSession session=request.getSession();
                String str=request.getParameter("confirmtypeofcurrency");
                String str1=request.getParameter("contactnumber");
                String str2=request.getParameter("emailaddress");
                String str3=request.getParameter("validmail");
               String str4=request.getParameter ("mailinghomeaddress");
               String str5=request.getParameter ("state");
                
                session.setAttribute("userid", a);
                session.setAttribute("confirmtypeofaccount", o);
                session.setAttribute("confirmtypeofcurrency", str);
                session.setAttribute("firstname", c);
                session.setAttribute("lastname", d);
                session.setAttribute("contactnumber", str1);
                session.setAttribute("emailaddress", str2);
                session.setAttribute("mailinghomeaddress", str4);
                session.setAttribute("city", h);
                session.setAttribute("state", str5);
                session.setAttribute("postalcode", j);
                session.setAttribute("country", str3);
                session.setAttribute("validmail", j);
                
               response.sendRedirect("registersession.jsp");//sending values into the session.
                
                
        }
           else if(ok.equals("Save Credit request"))
            {
//                String str =request.getParameter("action");
                String str =request.getParameter("permanentaddress");
                String str1 =request.getParameter("contactnumber");
                String str2 =request.getParameter("dateofbirth");
                String str3 =request.getParameter("activity");
                String str4 =request.getParameter("classcode");
                String str5 =request.getParameter("startdate");
                String str6 =request.getParameter("amountpaid");
                String str7 =request.getParameter("raesonforcreditrequest");
                String str8 =request.getParameter("employeesign");
                String str9 =request.getParameter("parentname");
                
                HttpSession session=request.getSession();
                
                 session.setAttribute("userid", a);
                session.setAttribute("parentname", str9);
                session.setAttribute("permanentaddress", str);
                session.setAttribute("city", h);
                session.setAttribute("region", i);
                session.setAttribute("postalcode", j);
                session.setAttribute("country", k);
                session.setAttribute("contactnumber", str1);
                session.setAttribute("firstparticipantname", c);
                session.setAttribute("dateofbirth", str2);
                session.setAttribute("activity",str3);
                session.setAttribute("classcode", str4);
                session.setAttribute("startdate", str5);
                session.setAttribute("amountpaid", str6);
               session.setAttribute("reasonforcreditrequest", str7);
               session.setAttribute("sign", str8);
                
            
                response.sendRedirect("creditrequestsession.jsp");
                
                
                
            }
           else if(ok.equals("Save direct deposit authorization"))
            {
                
                String str5 =request.getParameter("address");
                String str6 =request.getParameter("comfirmnameofbank");
                
                
                
                
                HttpSession session=request.getSession();
                
                 session.setAttribute("userid", a);
                session.setAttribute("companyname", b);
                session.setAttribute("firstname", c);
                session.setAttribute("lastname", d);
                session.setAttribute("address", str5);
                session.setAttribute("city", h);
                session.setAttribute("region", i);
                session.setAttribute("postalcode", j);
                session.setAttribute("country", k);
                session.setAttribute("nameofbank", l);
                session.setAttribute("amounttobedeposited",m);
                session.setAttribute("employeesign", n);
                session.setAttribute("confirmbankname", str6);
                
                
            
                response.sendRedirect("directdepositsession.jsp");
               
                        
           
        }
           else if(ok.equals("Save bankauthorization"))
            {
                String str =request.getParameter("emailid");
                String str1 =request.getParameter("phonenumber");
                String str2 =request.getParameter("bankbranch");
                String str3 =request.getParameter("bankphonenumber");
                String str4 =request.getParameter("bankaccounttype");
                String str5 =request.getParameter("confirmbankaccounttype");
                
                 if(str4.equals(str5))
                     
                 {
                     
                 HttpSession session=request.getSession();
                
                 session.setAttribute("bankaccounttype",str4);
                session.setAttribute("confirmbankaccounttype",str5);
                
                session.setAttribute("userid",a);
                session.setAttribute("city",h);
                session.setAttribute("firstname",c);
                session.setAttribute("emailid",str);
                session.setAttribute("phonenumber",str1);
                session.setAttribute("bankname",l);
                session.setAttribute("bankbranch",str2);
                session.setAttribute("bankphonenumber",str3);
                session.setAttribute("bankaccounttype",str4);
                session.setAttribute("confirmbankaccounttype",str5);
                session.setAttribute("sign",n);
                
                response.sendRedirect("bankauthsession.jsp");
            }
            }
           else if(ok.equals("loanapplication"))
           {
               
               String str3 =request.getParameter("dateofbirth");
               
               for( z=0;z<4;z++)
                {
                    char chr=str3.charAt(z);
                    newstr+= chr;
                }
              // out.println(newstr);
               int intyear=Integer.parseInt(newstr);
//// Get the current year
                  Year currentYear = Year.now();
                 int currntyear= currentYear.getValue();
                // out.println(currntyear);
                 if(currntyear-intyear>=18)
                {
                    HttpSession session=request.getSession();
               
                 String str =request.getParameter("desiredloan");
                String str1 =request.getParameter("annualincome");
                String str2 =request.getParameter("name");
                String str4 =request.getParameter("contactnumber");
                String str5 =request.getParameter("emailaddress");
                String str6 =request.getParameter("state");
                String str7 =request.getParameter("jobtitle");
                String str8 =request.getParameter("employername");
//                Part filePart = request.getPart("blobFile");
                String str9=request.getParameter("confirmreasonofloan");
                String str10=request.getParameter("homeaddress");
                
                 session.setAttribute("DATEOFBIRTH",str3);
                  session.setAttribute("ID2",a);
                   session.setAttribute("LOAN",str);
                    session.setAttribute("ANNUALINCOME",str1);
                     session.setAttribute("NAME",str2);
                      
                       session.setAttribute("CONTACTNUMBER",str4);
                        session.setAttribute("EMAILADDRESS",str5);
                         session.setAttribute("STATE",str6);
                          session.setAttribute("HOMEADDRESS",str10);
                           session.setAttribute("CITY",h);
                           
                             session.setAttribute("POSTALCODE",j);
                              session.setAttribute("COUNTRY",k);
                               session.setAttribute("JOBTITLE",str7);
                                session.setAttribute("EMPLOYERNAME",str8);
                                 session.setAttribute("CONFIRMREASONOFLOAN",str9);
                                  session.setAttribute("EMPLOYEESIGN",n);
                                   
                                   
                 response.sendRedirect("loansession.jsp");
//                 out.println(DATEOFBIRTH);
           }
                 else
                     out.println("invalid dob");
                
           }
          else if(ok.equals("Login"))
           {
               String p1=request.getParameter("accountholdername");
               String p2=request.getParameter("userpin");
               
               String q="Select *from  loginnew where username='"+p1+"' and userid='"+p2+"'";
               Statement stmt=con.createStatement();
               ResultSet rstmt=stmt.executeQuery(q);
               if(rstmt.next())
               {
                   response.sendRedirect("HomePage.jsp");
               }
               else
                   out.println("No accound found");
               
           }
            else
            {
                out.println("error in prcessing loan application");
            }
            
                   
        }
            
        catch(Exception e)
        {
            out.println("execption is"+e);
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
