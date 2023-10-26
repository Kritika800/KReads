<%-- 
    Document   : Custormersurvery
    Created on : 25 Oct, 2023, 2:54:54 PM
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
    <center>
        <div class="entire_page">
       <h1>Customer Survey Form</h1>
       <form action="surveyservlet">
           <div class="main-block">
               <table>
               <tr>
                   <td>Name</td> 
                   <td>Email</td>
               </tr>
               <tr>
                    <td><input type="text" name="name" placeholder= "Name" required></td>
                    <td><input type="email" name="mail"placeholder= "Eg: xyz@gmail.com" required></td>
               </tr>
               <tr>
                   <td><h5>Is this the first time you are using our products and services?</h5></td>
               </tr>
               <tr>
                   <td><input type="radio" name="option1" value="yes" required>yes</td>
                   <td><input type="radio" name="option1" value="no"  required>no</td>
               </tr>
               <tr>
                   <td><h5>Would you suggest to your friends and colleague?</h5></td>
               </tr>
               <tr>
                   <td><input type="radio" name="option2" value="yes" required >yes</td>
                   <td><input type="radio" name="option2" value="no" required>no</td>
               </tr>
               <tr>
                   <td><h5>How satisfied are you with your company overall?</h5></td><br>
               </tr>
               <tr>
                   <td><input type="radio" name="option3" value="Satisfied" required>Satisfied</td>
                   <td><input type="radio" name="option3" value="Undecided" required>Undecided</td>
                   <td><input type="radio" name="option3" value="Unsatisfied" required>Unsatisfied</td>
               </tr>
               <tr>
                   <td><h5>Do you have suggestion to improve our service?</h5></td>
               </tr>
               <tr>
               <td><input type="text" name="suggestion" size="30"required ></td>
               </tr>
               <tr>
                   <td><input type="submit" name="action" value="SUBMIT" style="color:white;background-color: deepskyblue"></td>
                   <td><input type="submit" name="action" value="RESET" style="color:white;background-color: deepskyblue"></td>
               </tr>
               <br><br><br><br><br><br><br>
                    </table>                                                                                              
            <footer>
                &COPY;Customer Survey Form .All Rights Reserved | Design by W3Layouts<br>
            </footer>
               
              </div>

            </form>
        
        <style>
            h1{
                color:white;
                size:10;
                text-height: 5px;
                background-color:deepskyblue;
            }
            .main-block 
            {
      max-width: 800px; /*
*/      
      padding: 10px 0;
/*      margin: auto;*/
/*      border-radius: 5px; */
      border-color: black;
/*      box-shadow: 1px 2px 5px rgba(0,0,0,.31); */
      background-color:whitesmoke; 
      }
      .entire_page
      {
          border-color: deepskyblue;
          background-color:deepskyblue;
          max-width: 1000px;
          height: 700px;
          
/*          bottom: 200px;*/
          
      }
      
        </style>
        </div>
    </center>
    </body> 
</html>
