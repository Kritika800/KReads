<%-- 
    Document   : Your_Profile
    Created on : 8 Jun, 2024, 9:52:58 PM
    Author     : DELL-PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Profile</title>
    </head>
    <body>
        
        <% 
session =request.getSession(false);
String referredto=(String)session.getAttribute("referredto");
String referredby=(String)session.getAttribute("referredby");
String username=(String)session.getAttribute("username");
String emailid=(String)session.getAttribute("emailid");
String bookname=(String)session.getAttribute("bookname");
String rating=(String)session.getAttribute("rating");
String today=(String)session.getAttribute("today");
        
        %>
        <button name="changetheme" style="background-color: black;color: white;border-radius: 8px">switch to other theme</button>
        <center>
        <form action="servletforhomepage" >
            
            
            <table>
                <tr>
                    <td><a href="http://localhost:16903/KReads/home1.jsp" style="border-color: white;text-decoration: none;background-color: white;height: 20px;width: 100px;background-size: 40px;"><img src="https://tse4.mm.bing.net/th?id=OIP.LldZkEAB9r-1FRTP4l2frgHaHa&pid=Api&P=0&h=180" alt="homelogo" width="50"</a></td>
                    <td style="width: 500px;"></td>
                    <td style="width: 500px;"></td>
                    <td style="width: 500px;"></td>
                    <td style="width: 500px;"></td>
                    <td><input type="submit" name="action" value="W"  style="border-color: white;text-align: end;font-size: xx-small;text-align: end;text-decoration: none;border-color: none;width: 50px;color: white;background-color: white;text-align: right;background-position: center;background-repeat: no-repeat;background-size: 30px;height: 50px;background-image: url('https://tse3.mm.bing.net/th?id=OIP.a6C5dSmai42a4GJKDJJhhgHaG3&pid=Api&P=0&h=180')"></td>
                    <td style="width: 200px;"></td>
                    <td style="width: 500px;"></td>
                    <td style="width: 500px;"></td>
                    <td style="width: 500px;"></td>
                    <td style="width: 500px;"></td>
                    
                    <td><input type="submit" name="action" value="history"  style="border-color: white;text-align: end;font-size: xx-small;text-align: end;text-decoration: none;border-color: none;width: 50px;color: black;background-color: white;text-align: right;background-position: center;background-repeat: no-repeat;background-size: 30px;height: 50px;"></td>
                    <td style="width: 200px;"></td>
                    <td style="width: 500px;"></td>
                    <td style="width: 500px;"></td>
                    <td style="width: 500px;"></td>
                    <td style="width: 500px;"></td>
                    
                    <td><input type="submit" name="action" value="logout"  style="text-align: end;color: white;background-color: white;height: 50px;width: 90px;border-color: white;background-repeat: no-repeat;background-image: url('https://tse3.mm.bing.net/th?id=OIP.Qn1NKSqSD6I8evymPTDXMQHaHa&pid=Api&P=0&h=180');background-size: 50px"></td>
                    <td style="width: 200px;"></td>
                    <td style="width: 500px;"></td>
                    <td style="width: 500px;"></td>
                    <td style="width: 500px;"></td>
                    <td style="width: 500px;"></td>
                    <td>
                             <div class="dropdown">
                                 <button class="dropbtn" onclick="alert()">***</button>
                                 <div class="dropdown-content">
                                     <a href="http://localhost:16903/KReads/contact.html" style="height: 20px;width: 150px;" >Help?</a>
                                     <a href="http://localhost:16903/KReads/feedback.jsp" style="height: 20px;width: 150px;">send feedback</a>
                                     <input type="submit" name="action" value="credits" style=" background-color: aliceblue;width: 180px;height: 30px;border-width: 2px;border-color: aliceblue;hover: grey">
                                 </div>
                             </div>
                         </td>
                    
                </tr>
               
                 
            </table>
            <script>
                function alert()
                {
                    alert("please hover mouse over the button");
                }
               
            </script>
            
 
            
                
                
                
                <br>
            <p style="font-family: monospace;font-size: large">Your Profile</p>
            <table>
                <tr>
                    
                    <td style="font-size: 30px">
                        
                    </td>
                    
                    <td style="font-size: 30px">
                        
                    </td>
                    
                </tr>
            </table>
            <br>
                <table>
                    <tr>
                        <td style="border-color: white;border-radius: 4px;font-size: small;width: 800px;height: 30px;">
                            <p>Username: <%=username%></p>
                        </td>
                        <td style="border-radius: 2px;font-size: small;width: 00px;height: 30px;">
                            
                        </td>
                        
                        <td style="border-color: white;border-radius: 4px;font-size: small;width: 800px;height: 30px;">
                            <a href="editusername.jsp" name="change"  id="changeusername">Edit</a><br>
                        </td>
                        
                    </tr>
                    <tr>
                        <td style="border-color: white;border-radius: 4px;font-size: small;width: 800px;height: 30px;">
                            <p >Email address: <a href="<%= emailid%>"><%= emailid%></a></p>
                        </td>
                        <td style="border-color: white;border-radius: 4px;font-size: large;width: 400px;height: 30px;">
                            
                        </td>
                        <td style="border-color: white;border-radius: 4px;font-size: small;width: 400px;height: 30px;">
                            <a href="editemailid.jsp" name="change" id="changeemailid">edit</a><br>
                        </td>
                    
                    </tr>
                    <tr>
                        <td><p style="font-family: monospace;font-size: small;">Default language: </p></td>
                        <td style="font-family: monospace;font-size: small;"></td>
                        
                        <td style="font-family: monospace;font-size: small;border-radius: 12px">
                            <select style="font-family: monospace;font-size: x-small;border-radius: 12px" >
                                <option >English</option>
                                <option>Hindi</option>
                                <option>Spanish</option>
                            </select></td>
                    </tr>
                    
                    <tr>
                        <td style="font-size:small;">
                            You are referred by
                        </td>
                        <td style="width: 100px;"></td>
                        <td style="font-size:small;">
                            <a href="<%=referredby%>"><%=referredby%></a>
                        </td>
                        
                    </tr>
                    <tr>
                        <td style="font-size:small;">
                            You Referred:
                        </td>
                        <td style="width: 100px;"></td>
                        <td style="font-size:small;">
                            <a href="<%=referredto%>"><%=referredto%></a>
                        </td>
                        
                    </tr>
                    <tr>
                        
                        <td>
                            <h6 style="font-family: monospace;font-size:small;">Your Ratings:</h6>
                        </td>
                        
                        <td style="width: 100px;"></td>
                        
                        <td>
                            <p style="font-family: monospace;font-size:small;"><%=rating%></p>
                        </td>
                        
                        <td style="width: 50px;">
                           for
                        </td>
                        
                        <td style="font-size:small"></td>
                         <td style="width: 100px;">
                           
                        </td>
                        <td>
                            <a href="<%=bookname%>"style="font-family: monospace;font-size: small"><%=bookname%></a> 
                        </td>
                    </tr>
                </table>
                
                
               
                <br>
                
                <p style="font-family: monospace;font-size: small;"><span style="color: red;font-size: large">&#42;</span>NOTE:- Your will be able to signin only when you have to add book to wishlist, so please be carefully when you log out from your account. </p> 
                
                <br><br><br><br>
                
                    <br><br><br><br>
                    <br><br>
                    <center>
                    
                     <footer>
                                              <table>
                                                  <tr>
                                                      <td  style="font-family: inherit;font-size: x-small"><%=today%></td>
                                                      <td> &copy;</td>
                                                      <td> <img src="https://vignette.wikia.nocookie.net/alphabet/images/3/3f/Stickers-feu-alphabet-lettre-k.jpg.jpg/revision/latest?cb=20190518050721" alt="logo" width="15"></td>
                                                      
                                                  </tr>
                                              </table>
                                          </footer>
                    </center>
                
        </form>
        
       
                        
                       
    </center>
        
       
    </body>
</html>
<style>
    body{
       
        background-size: 90%;
        padding-left: 200px;
       
       padding-top: 20px;
        padding-right: 100px;
        background-color: aliceblue;
        
        padding-bottom: 30px;
        
        
        
    }
    form{
        padding-left: 150px;
      padding-top:100px;
        padding-bottom: 20px;
        padding-right: 100px;
        
        padding-left: 100px;
        background-color: white;
        width: min-content;
        background-repeat: repeat;
        border-radius: 16px; 
    }
    div.scrollmenu {
        background-color: navy;
  overflow: auto;
  white-space: nowrap;
  width: 900px;
  border-radius: 8px;
}

div.scrollmenu a {
  display: inline-block;
  color: white;
  text-align: center;
  padding: 14px;
  text-decoration: none;
  width: 30px;
  font-size: medium;
  height: 10px;
}

div.scrollmenu a:hover {
  background-color: #777;
  
}



.dark-mode {
  background-color: black;
  color: white;
}
.td button:hover{
    background-color: blanchedalmond;
    
}

.dropbtn
    {
       
        color: white;
       padding: 14px;
        font-size: 12px;
        border: none;
        border-radius: 2px;
        background-color: navy;
    }

    .dropdown
    {
        position: relative ;
        display: inline-block;
    }


    .dropdown-content 
    {
        display: none;
        position: absolute;
        background-color: white;
        min-width: 100px;
        
        text-align: center;
        color: black;
    }


    .dropdown-content a 
    {
        color: black;
        padding: 12px 16px;
        text-decoration: none;
        display: block;
        text-align: center;
        background-color: aliceblue;
    }



    .dropdown-content a:hover 
    {
        background-color: dimgrey;
        color: white;
        text-align: center;
        background-size: 30px;
    }

    .dropdown-content button:hover 
    {
        background-color: navy;
        color: white;
        text-align: center;
        background-size: 30px;
    }


    .dropdown:hover .dropdown-content 
    {
        display: block;
    }
    .changetheme:hover
    {
      background-color : black;
      color: white;
    }
        
    


</style>
    