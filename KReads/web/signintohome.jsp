<%-- 
    Document   : signintohome
    Created on : 10 Jun, 2024, 11:05:21 AM
    Author     : DELL-PC
--%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign In to KMargret</title>
</head>
<body>
    <% 
session=request.getSession(false);
String referedby=(String)session.getAttribute("referedby");
session.setAttribute("referedby",referedby);
    %>
    <form action="servletforhomepage">
        <br>
        <img src="https://tse3.mm.bing.net/th?id=OIP.Ai2J_Xom9QYJ-vWe3DFWrQAAAA&pid=Api&P=0&h=180" width="50" >
        <centre>
            <H3 style="font-size: medium">Sign In to KReads </H3>
        <table>
            <tr>
              <input type="text" name="username" placeholder="Username" style="font-family: monospace;background-color: white;width: 400px;height: 40px;border-radius: 4px;border-color: white;text-align: start" ><br>
            </tr>
            <tr>
                <input type="email" name="emailid" placeholder="Email Address" style="font-family: monospace;background-color: white;width: 400px;height: 40px;border-radius: 4px;border-color: white;text-align: start" ><br>
           
            </tr>
            <tr>
            <input type="password" name="userpassword" placeholder="Password" style="font-family: monospace;background-color:white;width: 400px;height: 40px;border-radius:4px;border-color:white" ><br><br>
            </tr>
            
                     
                   <tr style="font-family: monospace;">
                   <p style="font-family: monospace;">Remember Login Details?  <input type="checkbox" name="remembercredentials" style="font-family: monospace;" ></p>
            </tr>
            
                
                <br><br>
           
            <tr>
                <input type="submit" value="Sign in" name="action" style="color: white;background-color: navy ;border-radius:8px;border-color: white;font-size: x-small;padding: 5px;width:200px;"><br>
            </tr>
            <br>
            <tr>
                <a href="http://localhost:16903/KReads/forgotpassword.html" style="font-family: inherit;text-decoration: none;color:blueviolet">Forgot password?</a><br>
            </tr>
            
            <tr>
            <p>       By creating an account you agree to KReads <a href="https://drive.google.com/file/d/1Zr9YatEOH9Y7j6AilPnBoivLHmPamKrG/view?usp=drive_link" style="color:purple;font-size:small;text-decoration: none;">terms and conditions</a></p><p>, <a href="https://drive.google.com/file/d/1Zr9YatEOH9Y7j6AilPnBoivLHmPamKrG/view" style="font-size: small;text-decoration: none;color: purple">Cookie Policy</a>, and <a href="https://drive.google.com/file/d/1ER-p2ZeVq05YSqsshZFhOhkObfMtquhn/view?usp=drive_link" style="font-size:small;color: purple;text-decoration: none">Privacy policy.</a></p><br>
            </tr>
            <center>
            <tr>
                <td>
                     <p style="align-content: center;font-size: small">or</p>
            
                </td>
            </tr>
                  
                    <tr>
                    <td>
               <a href="" name="action" id="g_id_onload" style="background-color: white;color: navy;font-size: medium;border-radius: 4px;width: 100px;text-decoration: none">Continue with Google</a>
                </td>
                <td>
                    <img src="https://tse2.mm.bing.net/th?id=OIP.HG6XtzIxf4Nbo_vZt8T3EAHaHa&pid=Api&P=0&h=180" width="15px" >
                </td>
                    </tr>
                
                   
                    
                    <tr>
                        <td>
                   <a href="https://appleid.apple.com/auth/authorize?client_id=com.linkedin.LinkedIn.service&redirect_uri=https%3A%2F%2Fwww.linkedin.com%2Fredirect&response_type=code%20id_token&scope=name%20email&response_mode=web_message&frame_id=f8f65f31-f8e8-4e3f-9063-5022da264336&m=11&v=1.5.3" name="action" id="applesignin" style="color: navy;font-size: medium; background-color: white;border-radius: 4px;width: 200px;text-decoration: none;">Continue with Apple</a>
                        </td>
                        <td>
                            <img src="https://tse4.mm.bing.net/th?id=OIP._gmdrZwZCMJSC-nHx1L37gHaHa&pid=Api&P=0&h=180" width="20px">
                        </td>
                    </tr>
                </center>
            <tr>
                 New User?
            </tr>
            <br>
   
            <tr>
            <a href="http://localhost:16903/KReads/signup.jsp" style="border-radius:2px;color: blue;width:200px;border-color:white;text-decoration: none;font-size: small">Sign Up</a><br>
            </tr>
            <br>
                   </center>
               <footer>
         <table>
             <br><br><br><br>
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
        </table>
             
        
        </centre>
    </form>
        
   
    <script>
        function contacts()
        {
            document.write("You may contact us through the below links")
            
        }
    </script>
</body>
</html>
<style>
    body{
        
        background-position: right;
        background-repeat: no-repeat;
        background-position: right;
        
        
        background-image:url('https://tse1.mm.bing.net/th?id=OIP.uI7Ww8JBzbpS-9LKEwhjtAAAAA&pid=Api&P=0&h=180');
        background-size: 40%;
        border-width: 30px;
        border-top-color: navy;
        
        
        
    }
    form{
       
        padding-top: 50px;
        width: 500px;
        padding-left: 450px;
        
        border: 15px solid white;
        border-top-color: midnightblue;
        border-bottom-color: midnightblue;
        background-repeat: no-repeat;
        background-image: url('https://cdn.pixabay.com/animation/2022/12/05/10/47/10-47-58-930_512.gif');
        background-size: 400px;
        padding-bottom: 80px;
        
        
        
        
    }
    p{
        font-size: small;
        
    }
    
</style>
