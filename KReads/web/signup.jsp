<%-- 
    Document   : signup
    Created on : 18 Jun, 2024, 3:40:16 PM
    Author     : DELL-PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign Up</title>
    </head>
    <body>
        <form action="servletforhomepage">
        <centre>
            <h4>Sign Up With KReads</h4><img src="https://cdn.pixabay.com/animation/2022/12/05/10/47/10-47-58-930_512.gif" style="border-image: fill;" width="50">
            <p>Sign up to see what your friends are reading, get book recommendations,
                and join the world’s largest community of readers.</p><br>
            
            
            
            <center>
                
            
            <table>
                <br>
                <tr>
                <input type="text" name="username" placeholder="Username" style="font-family: monospace;border-radius:4px;background-color: white;vertical-align:text-bottom;border-color: white; width: 400px; height: 40px" required><br>
                 </tr><br>
                <tr>
                       <input type="email" name="emailid" placeholder="Email" style="font-family: monospace;border-radius: 4px;background-color: white;color: black;vertical-align: text-bottom;border-color: white; width: 400px; height: 40px" required><br>
                </tr><br>
                <tr>
                    
                         <input type="password" name="userpassword" placeholder="Password" onmouseover="validate()"style="font-family: monospace;border-radius: 4px;background-color: white;color: black;vertical-align: text-bottom;border-color: white; width: 400px; height: 40px" required>
                </tr>
                <tr>
                    
                    <td >Email Address of person who referred you</td>
                    <td><input type="email" name="referredby" placeholder="Referee Name" ></td>
                    <td style="color: gray;font-size: small;">
                        optional*
                    </td>
                </tr>
                
                <tr>
                    <centre>
                        <td>
                        <input type="submit" name="action" value="Sign up" style="font-family: monospace;font-size:small;border-radius: 8px;background-color: blue;color:lightblue;vertical-align: text-bottom;text-align: center;border-color: white;width: 150px;height: 30px"><br>
                        </td>
                        <td>
                        <input type="reset" value="reset"style="font-family: monospace;border-radius: 8px;color: white;font-size: small;width: 150px;height: 30px;border-color: white;text-decoration: none;background-color: red">
                    </td>
                    </centre>
                <p>By creating an account you agree to the KReads<br><a href="https://drive.google.com/file/d/1Zr9YatEOH9Y7j6AilPnBoivLHmPamKrG/view?usp=drive_link" style="color:purple;font-size: xx-small;text-decoration: none;text-align: center;">terms and conditions</a>, <a href ="https://drive.google.com/file/d/1Zr9YatEOH9Y7j6AilPnBoivLHmPamKrG/view">Cookie policy</a>and <a href="https://drive.google.com/file/d/1ER-p2ZeVq05YSqsshZFhOhkObfMtquhn/view?usp=drive_link" style="font-size: xx-small;text-decoration: none">Privacy policy</a></p>    
           
            </tr>
            <p style="text-align: center; font-size: small">or</p>
            
             <tr>
                        <td>
                  
                            <a href="https://appleid.apple.com/auth/authorize?client_id=com.linkedin.LinkedIn.service&redirect_uri=https%3A%2F%2Fwww.linkedin.com%2Fredirect&response_type=code%20id_token&scope=name%20email&response_mode=web_message&frame_id=f8f65f31-f8e8-4e3f-9063-5022da264336&m=11&v=1.5.3" name="action" id="applesignin" style="color: navy;font-size: medium; background-color: white;border-radius: 4px;width: 200px;text-decoration: none;">Continue with Apple</a>
                        </td>
                        <td>
                            <img src="https://tse4.mm.bing.net/th?id=OIP._gmdrZwZCMJSC-nHx1L37gHaHa&pid=Api&P=0&h=180" width="20px">
                        </td>
                    </tr>
                <div class="enquiry" style="font-size: medium;color: black">
                    <p style="font-family: monospace;font-size: small;">Already a Member?</p>  <a href="http://localhost:16903/KReads/signintohome.jsp" style="font-family: monospace;border-radius: 2px;color:blue;font-size: small;border-color: white;text-decoration: none; width: 100px">Sign In</a>
                </div>
            
            
            
            
            <br>
            <br><br>
            </center>
               <footer>
                                              <table>
                                                  <tr>
                                                      <td style="font-family: inherit;font-size: x-small">2024</td>
                                                      <td> &copy;</td>
                                                      <td> <img src="https://vignette.wikia.nocookie.net/alphabet/images/3/3f/Stickers-feu-alphabet-lettre-k.jpg.jpg/revision/latest?cb=20190518050721" alt="logo" width="15"></td>
                                                      
                                                  </tr>
                                              </table>
                                          </footer>
             
            </table>
            
            
            
        </centre>
        
        
        
        <script>
            function validate()
            {
                var password=document.getElementsByName("userpassword");
                 for(i=0;i<password.length;i++)
                 {
                     var c=0;
                 
                     var ch=password.charAt(i);
                     for(j=0;j<=9;j++)
                     {
                        if(ch===j)
                        c=1;
                     }
                     if(c==1)
                         alert("<p>good to go</p>");
                     else
                         alert("<p>Weak Password!,password must contain atleast one numeric digit</p>")
                     
        }
        
            }
           
      
     
        </script>
    </form>
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
        background-color: white;
        
        background-image:url('https://tse1.mm.bing.net/th?id=OIP.uI7Ww8JBzbpS-9LKEwhjtAAAAA&pid=Api&P=0&h=180');
        background-repeat: no-repeat;
        background-size: 50%;
        padding-right: 300px;
        background-position: right;
    }
    P{
        color: black;
        text-align: center;
        font-size: x-small;
    
    }
    h4{
        color:black
    }
    form{
        
        
        border:15px solid white;
        background-color: white;
        padding: 50px;
       
        margin-top: 20px;
        border-top-color: midnightblue;
        border-bottom-color: midnightblue;
        border-radius: 12px;
        background-repeat: no-repeat;
        background-position: right;
        padding-right: 300px;
        width: max-content;
        padding-bottom: 140px;
        

    }
    div{
        font-size: small;
        
    }
    a{
        text-align: center;
    }
</style>