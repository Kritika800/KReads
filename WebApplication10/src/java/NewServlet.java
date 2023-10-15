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
         
            if(ok.equals("Register"))
            {
               
                String str=request.getParameter("confirmtypeofcurrency");
                String str1=request.getParameter("contactnumber");
                String str2=request.getParameter("emailaddress");
                String str3=request.getParameter("validmail");
               String str4=request.getParameter ("mailinghomeaddress");
               String str5=request.getParameter ("state");
                String query="Insert into bankaccountregistration(id,confirmtypeofaccount,confirmtypeofcurrency,firstname,lastname,contactnumber,emailaddress,mailinghomeaddress,city,state,postalcode,country,validmail) values('"+a+"','"+o+"','"+str+"','"+c+"','"+d+"','"+str1+"','"+str2+"','"+str4+"','"+h+"','"+str5+"','"+j+"','"+k+"','"+str3+"')";
            PreparedStatement stmt=con.prepareStatement(query);
            int rstmt= stmt.executeUpdate();
           if(rstmt>0)
            {
                out.println("data inserted");
            }
            /* TODO output your page here. You may use following sample code. */
            else
            {
                out.println("could not process");
            }    
        }
           else if(ok.equals("Send Credit Request"))
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
                String query="Insert into creditrequest(id,parentname,permanentaddress,city,region,postalcode,country,contactnumber,firstparticipantname,dateofbirth,activity,classcode,startdate,amountpaid,reasonforcreditrequest,sign) values('"+a+"','"+str9+"','"+str+"','"+h+"','"+i+"','"+j+"','"+k+"','"+str1+"','"+c+"','"+str2+"','"+str3+"','"+str4+"','"+str5+"','"+str6+"','"+str7+"','"+str8+"')";
                PreparedStatement stmt=con.prepareStatement(query);
                int rstmt=stmt.executeUpdate();
                if(rstmt>0)
                {
                    out.println("credit request submitted succesfully");
                }
                else
                
                    out.println("error in parsing request");
                
            }
           else if(ok.equals("Proceed for direct deposit authorization"))
            {
                String str5 =request.getParameter("address");
                String str6 =request.getParameter("comfirmnameofbank");
                String query="Insert Into direct_deposit_authorization_form(id,companyname,firstname,lastname,address,city,region,postalcode,country,nameofbank,amounttobedeposited,employeesign,confirmbankname) values('"+a+"','"+b+"','"+c+"','"+d+"','"+str5+"','"+h+"','"+i+"','"+j+"','"+k+"','"+l+"','"+m+"','"+n+"','"+str6+"')";
                PreparedStatement stmt= con.prepareStatement(query);
                int rstmt=stmt.executeUpdate();
                if(rstmt>0)
                
                    out.println("direct deposit authorization form submited successfuLLY");
                
                else
                    out.println("could not process bank authorization form");
                        
           
        }
           else if(ok.equals("Request for authorization"))
            {
                String str =request.getParameter("emailid");
                String str1 =request.getParameter("phonenumber");
                String str2 =request.getParameter("bankbranch");
                String str3 =request.getParameter("bankphonenumber");
                String str4 =request.getParameter("bankaccounttype");
                String str5 =request.getParameter("confirmbankaccounttype");
                
                if(str4.equals(str5))
                {
               String query="Insert into bankauthorization(id,city,firstname,emailid,phonenumber,bankname,bankbranch,bankphonenumber,bankaccounttype,confirmbankaccountype,sign) values('"+a+"','"+h+"','"+c+"','"+str+"','"+str1+"','"+l+"','"+str2+"','"+str3+"','"+str4+"','"+str5+"','"+n+"')";
               PreparedStatement stmt=con.prepareStatement(query);
               int rstmt=stmt.executeUpdate();
               if(rstmt>0)
               {
                   out.println("Bank authorization request successfully submitted !");
               }
               else
            {
                out.println("could not process for aauthorization");
            }
            }
                else
                    out.println("the confirm type of account does not match with the bank account type ");
            }
            
            
            
            
           
           else if(ok.equals("save"))
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
               // String str9=request.getParameter("confirmreasonofloan");
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
                                // session.setAttribute("CONFIRMREASONOFLOAN",str9);
                                 // session.setAttribute("EMPLOYEESIGN",n);
                                   
                                   
                 response.sendRedirect("newjsp.jsp");
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
