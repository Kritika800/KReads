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
            if(btn.equals("send loan request"))
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
           String abc15=(String)  session.getAttribute("confirmreasonofloan");
           String abc16=(String)  session.getAttribute("DB");
           int newid=Integer.parseInt(abc1);
           String abc17=(String)  session.getAttribute("employeesign");
                String query="Insert into loanapplication(id,desiredloan,annualincome,name,dateofbirth,contactnumber,emailaddress,homeaddress,city,state,postalcode,country,jobtitle,employername,confirmreasonofloan,employeesign) values('"+newid+"','"+abc2+"','"+abc3+"','"+abc4+"','"+abc16+"','"+abc5+"','"+abc6+"','"+abc8+"','"+abc9+"','"+abc7+"','"+abc11+"','"+abc12+"','"+abc13+"','"+abc14+"','"+abc15+"','"+abc17+"')";
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
            else if(btn.equals("Edit"))
            {
                response.sendRedirect("Loan_Application_Form.jsp");
            }
            else if(btn.equals("Submit Credit request"))
            {
                String a1=(String)session.getAttribute("userid");
           String a2=(String)session.getAttribute("parentname");
           String a3=(String)session.getAttribute("permanentaddress");
           String a4=(String)session.getAttribute("city");
           String a5=(String)session.getAttribute("region");
           String a6=(String)session.getAttribute("postalcode");
           String a7=(String)session.getAttribute("country");
           String a8=(String)session.getAttribute("contactnumber");
           String a9=(String)session.getAttribute("firstparticipantname");
           String a10=(String)session.getAttribute("dateofbirth");  
String a11=(String)session.getAttribute("activity");  
 String a12=(String)session.getAttribute("classcode");
           String a13=(String)session.getAttribute("startdate");
           String a14=(String)session.getAttribute("amountpaid");
           String a15=(String)session.getAttribute("reasonofcreditrequesr");
           String a16=(String)session.getAttribute("sign");
           
                
                String query="Insert into creditrequest(id,parentname,permanentaddress,city,region,postalcode,country,contactnumber,firstparticipantname,dateofbirth,activity,classcode,startdate,amountpaid,reasonforcreditrequest,sign) values('"+a1+"','"+a2+"','"+a3+"','"+a4+"','"+a5+"','"+a6+"','"+a7+"','"+a8+"','"+a9+"','"+a10+"','"+a11+"','"+a12+"','"+a13+"','"+a14+"','"+a15+"','"+a16+"')";
                PreparedStatement stmt=con.prepareStatement(query);
                int rstmt=stmt.executeUpdate();
                if(rstmt>0)
                {
                    out.println("credit request submitted succesfully");
                }
                else
                
                    out.println("error in parsing request");
            }
            else if(btn.equals("Submit registration"))
            {
                String a1=(String)session.getAttribute("userid");
                String a2=(String)session.getAttribute("confirmtypeofaccount");
                String a3=(String)session.getAttribute("confirmtypeofcurrency");
                String a4=(String)session.getAttribute("firstname");
                String a5=(String)session.getAttribute("lastname");
                String a6=(String)session.getAttribute("contactnumebr");
                String a7=(String)session.getAttribute("emailaddress");
                String a8=(String)session.getAttribute("mailinghomeaddress");
                String a9=(String)session.getAttribute("city");
                String a10=(String)session.getAttribute("state");
                String a11=(String)session.getAttribute("postalcode");
                String a12=(String)session.getAttribute("country");
                String a13=(String)session.getAttribute("validmail");
                String query="Insert into bankaccountregistration(id,confirmtypeofaccount,confirmtypeofcurrency,firstname,lastname,contactnumber,emailaddress,mailinghomeaddress,city,state,postalcode,country,validmail) values('"+a1+"','"+a2+"','"+a3+"','"+a4+"','"+a5+"','"+a6+"','"+a7+"','"+a8+"','"+a9+"','"+a10+"','"+a11+"','"+a12+"','"+a13+"')";
            PreparedStatement stmt=con.prepareStatement(query);
            int rstmt= stmt.executeUpdate();
           if(rstmt>0)
            {
                out.println("Registration successfully done ,congratulations!");
            }
            
            else
            {
                out.println("could not process");
            }    
            }
            else if(btn.equals("Submit authorization request"))
            {
                
            
                String a1=(String)session.getAttribute("userid");
           String a2=(String)session.getAttribute("city");
           String a3=(String)session.getAttribute("firstname");
           String a4=(String)session.getAttribute("emailid");
           String a5=(String)session.getAttribute("phonenumber");
           String a6=(String)session.getAttribute("bankname");
           String a7=(String)session.getAttribute("bankbranch");
           String a8=(String)session.getAttribute("bankphonenumber");
           String a9=(String)session.getAttribute("bankaccounttype");
           String a10=(String)session.getAttribute("confirmbankaccounttype"); 
           String a11=(String)session.getAttribute("sign");
           //passing values of session into database
          
               String query="Insert into bankauthorization(id,city,firstname,emailid,phonenumber,bankname,bankbranch,bankphonenumber,bankaccounttype,confirmbankaccountype,sign) values('"+a1+"','"+a2+"','"+a3+"','"+a4+"','"+a5+"','"+a6+"','"+a7+"','"+a8+"','"+a9+"','"+a10+"','"+a11+"')";
               PreparedStatement stmt=con.prepareStatement(query);
               int rstmt=stmt.executeUpdate();
               if(rstmt>0)
               
                   out.println("Bank authorization request successfully submitted !");
            else
            
                out.println("could not process for authorization");
            
            }
                
            else if(btn.equals("Submit Deposit authorization request"))
            {
                String a1=(String)session.getAttribute("userid");
                String a2=(String)session.getAttribute("comapnyname");
           String a3=(String)session.getAttribute("firstname");
           String a4=(String)session.getAttribute("lastname");
           String a5=(String)session.getAttribute("address");
           String a6=(String)session.getAttribute("city");
           String a7=(String)session.getAttribute("region");
           String a8=(String)session.getAttribute("postalcode");
           String a9=(String)session.getAttribute("country");
           String a10=(String)session.getAttribute("nameofbank");
           String a11=(String)session.getAttribute("amounttobedeposited"); 
           String a12=(String)session.getAttribute("employeesign");
            String a13=(String)session.getAttribute("confirmbankname");
           
           
            String query="Insert Into direct_deposit_authorization_form(id,companyname,firstname,lastname,address,city,region,postalcode,country,nameofbank,amounttobedeposited,employeesign,confirmbankname) values('"+a1+"','"+a2+"','"+a3+"','"+a4+"','"+a5+"','"+a6+"','"+a7+"','"+a8+"','"+a9+"','"+a10+"','"+a11+"','"+a12+"','"+a13+"')";
                PreparedStatement stmt= con.prepareStatement(query);
                int rstmt=stmt.executeUpdate();
                if(rstmt>0)
                
                    out.println("direct deposit authorization form submited successfuLLY");
                
                else
                    out.println("could not process bank authorization form");
           
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

session.setAttribute("companyname", a1);
                session.setAttribute("firstname", a2);
                session.setAttribute("lastname", a3);
                session.setAttribute("address", a4);
                session.setAttribute("city", a5);
                session.setAttribute("region", a6);
                session.setAttribute("postalcode", a7);
                session.setAttribute("country", a8);
                session.setAttribute("nameofbank", a9);
                session.setAttribute("amounttobedeposited",a10);
                session.setAttribute("employeesign", a11);
                session.setAttribute("confirmbankname", a12);