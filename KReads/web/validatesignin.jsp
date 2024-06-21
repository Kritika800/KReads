<%-- 
    Document   : validatesignin
    Created on : 10 Jun, 2024, 12:18:22 PM
    Author     : DELL-PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Validate sign in</title>
    </head>
    <body>
        <form action="validateservlet">
        <img src="https://tse3.mm.bing.net/th?id=OIP.Ai2J_Xom9QYJ-vWe3DFWrQAAAA&pid=Api&P=0&h=180" width="50" >
        <centre>
            <H3 style="font-family: monospace;font-size: medium">Validate Sign in </H3>
        <table>
            <tr>
              <input type="text" name="username" placeholder="Username" style="background-color: white;width: 400px;height: 40px;border-radius: 4px;border-color: white;text-align: start"  required><br>
            </tr>
            <tr>
                <input type="email" name="emailid" placeholder="Email Address" style="background-color: white;width: 400px;height: 40px;border-radius: 4px;border-color: white;text-align: start" required ><br>
           
            </tr>
            <tr>
            <input type="password" name="userpassword" placeholder="Password" style="background-color:white;width: 400px;height: 40px;border-radius:4px;border-color:white" required><br><br>
            </tr>
            
                     <tr>
                     <input type="link" name="bookname" placeholder="Book link"style="border-color: white;border-radius: 4px;font-size: small;width: 400px;height: 40px" required ><br> <br>
                   </tr>
                   <tr>
               Remember Login Details?
            </tr>
            <tr>
                
                     <input type="checkbox" name="remembercredentials" >
                     </tr>
                
                <br><br>
           
            <tr>
                <input type="submit" value="validate" name="action" style="height: 40px;color: white;background-color: midnightblue ;border-radius:8px;border-color: white;font-size: medium;width:200px;"><br>
            </tr>
            <br>
            <tr>
                <a href="http://localhost:16903/KReads/forgotpassword.html" style="text-decoration: none;color:blueviolet">Forgot password?</a><br>
            </tr>
            
            <tr>
            <p>       By creating an account you agree to KMargret <a href="https://drive.google.com/file/d/1Zr9YatEOH9Y7j6AilPnBoivLHmPamKrG/view?usp=drive_link" style="color:purple;font-size: small;text-decoration: none;">terms and conditions</a></p><p>, <a href="https://drive.google.com/file/d/1fzXqh4W5t8Ou6OeziUcZvmrKS5-W8NXM/view?usp=drive_link" style="text-decoration: none;color: purple">Cookie Policy</a>, and <a href="https://drive.google.com/file/d/1ER-p2ZeVq05YSqsshZFhOhkObfMtquhn/view?usp=drive_link" style="color: purple;text-decoration: none">Privacy policy.</a></p><br>
            </tr>
            
            <tr>
                New User?
            </tr><br>
           
            <tr>
            <a href="signup.html" style="border-radius:2px;color: blue;width:200px;border-color:white;text-decoration: none;font-size:xx-small;font-family: monospace">Sign Up</a><br>
            </tr>
            
            
            <tr>
            <center>
                 or
                 
                 <tr>
                    <td>
               <a href="" name="action" id="g_id_onload" style="background-color: white;color: navy;font-size: x-large;border-radius: 4px;width: 100px;text-decoration: none">Continue with Google</a>
                </td>
                <td>
                    <img src="https://tse2.mm.bing.net/th?id=OIP.HG6XtzIxf4Nbo_vZt8T3EAHaHa&pid=Api&P=0&h=180" width="20px" >
                </td>
                    </tr>
                    <tr>
                        <td>
                   <a href="https://appleid.apple.com/auth/authorize?client_id=com.linkedin.LinkedIn.service&redirect_uri=https%3A%2F%2Fwww.linkedin.com%2Fredirect&response_type=code%20id_token&scope=name%20email&response_mode=web_message&frame_id=f8f65f31-f8e8-4e3f-9063-5022da264336&m=11&v=1.5.3" name="action" id="applesignin" style="color: navy;font-size: x-large; background-color: white;border-radius: 4px;width: 200px;text-decoration: none;">Continue with Apple</a>
                        </td>
                        <td>
                            <img src="https://tse4.mm.bing.net/th?id=OIP._gmdrZwZCMJSC-nHx1L37gHaHa&pid=Api&P=0&h=180" width="20px">
                        </td>
                    </tr>
            </center>
            </tr>
         
            
            <br><br><br><br>
            
             <footer>
        <center> 
             
                  <table>
                                                  <tr>
                                                      <td style="font-family: inherit;font-size: x-small">2024</td>
                                                      <td> &copy;</td>
                                                      <td> <img src="https://vignette.wikia.nocookie.net/alphabet/images/3/3f/Stickers-feu-alphabet-lettre-k.jpg.jpg/revision/latest?cb=20190518050721" alt="logo" width="15"></td>
                                                      
                                                  </tr>
                                              </table>
             </center>
                                               
    </footer>
            
             </form>
       
    
   
        </table>
             
        
        </centre>
        
   
        <script> 
      document.addEventListener('contextmenu', event=> event.preventDefault()); 
      document.onkeydown = function(e) { 
      if(event.keyCode == 123) { 
      return false; 
      } 
      if(e.ctrlKey && e.shiftKey && e.keyCode == 'I'.charCodeAt(0)){ 
      return false; 
      } 
      if(e.ctrlKey && e.shiftKey && e.keyCode == 'J'.charCodeAt(0)){ 
      return false; 
      } 
      if(e.ctrlKey && e.keyCode == 'U'.charCodeAt(0)){ 
      return false; 
      } 
      } 
      </script> 
    </body>
</html>


<style>
    body{
        
        background-position:right;
        background-repeat: no-repeat;
        background-position: right;
        background-image:url('https://tse1.mm.bing.net/th?id=OIP.uI7Ww8JBzbpS-9LKEwhjtAAAAA&pid=Api&P=0&h=180');
        background-size: 40%;
        
    }
    form{
       
        width: 500px;
        height: 800px;
        padding-left: 500px;
        padding-top: 100px;
        border:15px solid white;
        border-top-color: midnightblue;
        border-bottom-color: midnightblue;
        background-repeat: no-repeat;
        background-image: url('https://cdn.pixabay.com/animation/2022/12/05/10/47/10-47-58-930_512.gif');
        
        
        
    }
    
    
</style>

