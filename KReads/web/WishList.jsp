<%-- 
    Document   : WishList
    Created on : 27 May, 2024, 9:28:32 AM
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
         
        
        <form action="validateservlet">
            <div class="scrollmenu">
  <a href="http://localhost:16903/KMargretlibrary/home1.jsp">Home</a>
  <a href="http://localhost:16903/KMargretlibrary/Your_Profile.jsp" style="width: 100px">Your Profile</a>
                    
  <a href="http://localhost:16903/KMargretlibrary/Recommendations.html">Recommendations</a>
  
</div>
            <center>
        <p style="font-family: cursive;font-size: large">Your WishList<img src="https://animatedimagepic.com/image/emoji/Heart-Love-Emoticon.gif" alt="emoji" width="70" <img src="https://pngimg.com/uploads/shopping_cart/shopping_cart_PNG29.png"  width="80"></p>
    </center>
    <center>
        <img src="https://tse1.mm.bing.net/th?id=OIP.WTQQpHmIyG2vPl5KUr5sfAHaHa&pid=Api&rs=1&c=1&qlt=95&w=114&h=114" alt="" width="100px">
        
    </center>
        
    
        <%
            session=request.getSession(false);
            
            String bookname=(String)session.getAttribute("bookname");
            
           
          
       %>
       <br><br>
    <center>
        
        <p style="font-family: cursive;font-size: x-small;">Kindly proceed to checkout for your favourite book.<img src="https://i.pinimg.com/originals/e0/5e/61/e05e6141da33580ee2677ff7cbff7139.gif" alt="gif" width="30"></p>
        
        <table>
            
            <tr>
                <td>
                    <span style="color: red;font-size: large">&#42;</span>
                </td>
                <td>
                    <p style="font-family: cursive;font-size: x-small;">Note: Books, once added in wishlist cannot be removed, so please be careful while wishlisting the book!</p>
                </td>
            </tr>
        </table>
       
        
        <% 
session.setAttribute("bookname",bookname);

        %>
        
    </center>
       <center>
            
           <p style="font-style: monospace;font-size: medium;color: navy"><a href="<%=bookname%>"><%=bookname%></a></p>   <br><br><br>
       
       
           
           
           <table>
            
            <tr>
                <td>
                    <span style="color: red;font-size: large">&#42;</span>
                </td>
                <td style="width: 10px;">
                    
                </td>
                <td>
                    <p style="font-family: cursive;font-size: x-small;">It is recommended to wishlist book before reading so as to create a record <br>in your profile else history for your account wont be created which result in violation to <a href="https://drive.google.com/file/d/1ER-p2ZeVq05YSqsshZFhOhkObfMtquhn/view">privacy policy</a>of KMargret. <br>So don't forget to wishlist the book before reading.You may read the <a href="https://drive.google.com/file/d/1Zr9YatEOH9Y7j6AilPnBoivLHmPamKrG/view">Terms and conditions</a> here.</p>
                </td>
            </tr>
        </table>
       
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
       
        width: max-content;
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