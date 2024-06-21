<%-- 
    Document   : emptywishlist
    Created on : 13 Jun, 2024, 11:04:42 PM
    Author     : DELL-PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>wishlist</title>
    </head>
    <body>
        <div class="scrollmenu">
  <a href="http://localhost:16903/KReads/home1.jsp">Home</a>
  <a href="http://localhost:16903/KReads/Your_Profile.jsp" style="width: 100px">Your Profile</a>
  
 
  <a href="http://localhost:16903/KReads/Recommendations.html">Recommendations</a>
  
</div>
        <form action="validateservlet">
            <center>
        <p style="font-family: cursive;font-size: large">Your WishList</center>
    <center>
        <br>
        
    </center>
        
    
        
       <br><br>
    <center>
        
        <p style="font-family: cursive;font-size: x-small;">Currently you don't have any book in your wishlist.<img src="https://blog.joypixels.com/content/images/2019/06/loudly_crying_face_1024.gif" alt="gif" width="100"></p>
        
        
        <input type="submit" name="action" value="Choose book to Wishlist" style="font-size: large;border-radius: 8px;background-color: navy;color: white">
       
        
        
        
    </center>
      
              <br><br><br>
       
          <br><br><br>
       
       </center>
   
          
        </form>
     
      
           
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
    h2{
        text-align: center;
    }
    body{
       
        background-color: aliceblue;
        background-size: 90%;
        padding-left: 200px;
       
        padding-top: 100px;
        padding-right: 100px;
        
        
        padding-bottom: 10px;
        
    }
    div{
        color: navy;
        
    }
   form{
       
        width: 570px;
        background-color: white;
        border-radius: 12px;
        
        padding-bottom: 200px;
       padding-left: 20px;
       padding-right: 20px;
      
        
    }
    div.scrollmenu {
        background-color: navy;
  overflow: auto;
  white-space: nowrap;
  width: 615px;
  border-radius: 8px;
}

div.scrollmenu a {
  display: inline-block;
  color: white;
  text-align: center;
  padding: 14px;
  text-decoration: none;
  width: 50px;
}

div.scrollmenu a:hover {
  background-color: #777;
}

</style>
