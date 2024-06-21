<%-- 
    Document   : home1.jsp
    Created on : 8 Jun, 2024, 7:02:24 PM
    Author     : DELL-PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
    </head>
    <body>
        
        
          <centre>
                <h1>KReads</h1>
            </centre>
        
        
       

         <form action="servletforhomepage">

             
             
         
             
             <%
                 session=request.getSession(false);
                 String user=(String)session.getAttribute("username");
                 %>
            
          
                        <div class="scroll-menu">
                <table>
                    <tr>
                        
                  
 
 
                    
                    <td>
                    <input type="button" name="action" value="Margret Portfolio" onclick="description()" style="font-size:16px;min-width: 160px;column-gap: 0px;padding: 16px;background-color: navy;color: white;border-radius: 4px;display: inline-block;border-color: white"><br>
                    </td>
                    <td>
                        <div class="dropdown">
                        <button class="dropbtn" style="background-color: navy" >Careers</button>
                        <div class="dropdown-content">
                            <a href="http://localhost:16903/KReads/currentopenings.html">Current Openings</a>
                            <a href="http://localhost:16903/KReads/oldadvertisements.html"> Old Advertisements</a>
                            <a href="http://localhost:16903/KReads/upcomingopenings.html">Upcoming Openings</a>

                        </div>
                    </div>
                    </td>
                    
                    <td>
                        <div class="dropdown">
                        <button class="dropbtn" >Browse</button>
                        <div class="dropdown-content">
                            <a href="http://localhost:16903/KReads/Recommendations.html">Recommendations</a>
                            <a href="http://localhost:16903/KReads/NewCollections.html"> New Collections</a>
                            <a href="http://localhost:16903/KReads/oldcollections.html">Old Collections </a>
                           
                        </div>
                    </div>
                    </td>
                    <td>
                        <div class="dropdown">
                        <button class="dropbtn" >Theme</button>
                        <div class="dropdown-content">
                            <a href="http://localhost:16903/KReads/comedy.html">Comedy</a>
                            <a href="http://localhost:16903/KReads/thriller.html"> Thriller</a>
                            <a href="http://localhost:16903/KReads/sciencefiction.html">Science fiction</a>
                            <a href="http://localhost:16903/KReads/romantic.html">Romantic</a>
                            <a href="http://localhost:16903/KReads/mystry.html">Mystry</a>
                            <a href="http://localhost:16903/KReads/horror.html">Horror</a>

                        </div>
                    </div>
                    </td>
                    
                    
                    <td>

                        <input type="search" placeholder="Search..." id="myinput" name="searchbook" onkeyup="searchbook()" style="background-color: #f5f4ef;background-repeat: no-repeat;font-size:16px;background-size: 50px;background-image:url('https://tse4.mm.bing.net/th?id=OIP.HGPyIwRcPq40hf1XYRKbcwHaHa&pid=Api&P=0&h=180');background-position: right;z-index: 1;border-color: white;color:grey;border-radius:4px;padding: 16px;width: 320px" >
                    </td>
                    <td><a href="http://localhost:16903/KReads/Your_Profile.jsp" style="text-decoration: none;padding: 16px;height: 40px;background-repeat: no-repeat;text-align: right;color: white;background-image:url('https://tse2.mm.bing.net/th?id=OIP.7tlP1ph61ompULJdycVJlQHaHa&pid=Api&P=0&h=180');background-size: 50px;width: 600px;padding-top:20px;padding-right: 20px;padding-left: 20px;background-position: center" ></a></td>

                   <td><input type="submit" name="action" value="logout" style="text-decoration: none;padding: 16px;background-color: navy;color: white" ></td>
               <td><a href="http://localhost:16903/KReads/contact.html" style="text-decoration: none;padding: 16px;background-color: navy;color: white" >Help</a></td>
               
                </tr>   
                
                </table>
  
                            <br>

            <script>
                function check()
                {
                    alert("1)Wishlist the book  first, else you disagree to terms and conditions of KMargret!!"<br>"2)For wishlisting you need to validate by re-signing in! by clicking the wishlist link below."<br>."3)Please refer the website to your friends if you like."<br>"Byclicking ok you agree to terms ad conditions of KMargret.");
                    
                   // myInterval = setInterval(check(), milliseconds);
                    clearInterval(myInterval);
                    document.getElementById("linkofbook").disabled=true;
                    
                }
                function description()
                {
                    document.write("<centre><h3>MARGRETA PORTFOLIO</h3><p>We are product based startups and deliver our products on our own!</p><p>We believe reading is a passport to countless adventures!!</p><p>A room without book is a body without soul!</p></centre><style>body{background-image:url();}</style>")
                }
                function signup()
                {
                    document.write("For Reading this book you need to create an account ")
                    document.write("Get started for free!!")

                }
                function careers()
                {
                    document.write("<body><h3>Find your Career with Margreta</h3></body><style>body{background-color:grey}</style>")
                }
                function contactus()
                {
                    document.write("<body><h5>Connect with us!</h5><p>for queries,support or any kind of help needed</p>Margreta@linkedin.com<p>connectmargreta@gmail.com</p></body>")

                }
                
               
                function searchbook()
                {
                    var input, filter, table, tr, td, i, txtValue;
                    input = document.getElementById("myInput");
                    filter = input.value.toUpperCase();
                    table = document.getElementById("myTable");
                    tr = table.getElementsByTagName("tr");

  // Loop through all table rows, and hide those who don't match the search query
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[0];
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }
  }
                }
                
                
      document.addEventListener('contextmenu', event=> event.preventDefault()); 
      document.onkeydown = function(e)
      { 
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

            <center>
            Welcome <%=user%><img src="https://i.pinimg.com/originals/e0/5e/61/e05e6141da33580ee2677ff7cbff7139.gif" alt="love" width="30px">, We have exciting series of books, wish u might really love them.
            
            </center>   
            
            <br><br><br>
            <table id="myTable">
                <tr class="header">
                    <td id="book1">
                        <img src="https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1388212715i/6185.jpg"  name="bookimage1" alt="WutheringHeights" width="80" height="120"  ><br>

                        <a href="http://localhost:16903/KReads/wutheringheights.jsp" id="linkofbook" style="color:purple;text-decoration: none;" onclick="check()">WutheringHeights</a><br>
                        Author: <a href="https://www.goodreads.com/author/show/4191.Emily_Bront_" name="author" style="color:purple;text-decoration: none;">Emily Bront</a><br>
                        Rating:<input type="text" name="orgrating" value="3.89/5" style="background-color: #ccffff; border-color: #ccffff ;width: 40px"  readonly><br>
                        Score:<input type="text" name="score" value="389" style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly ><br>
                        Wishlist?<a href="http://localhost:16903/KReads/validatesignin.jsp"  style="background-color: white;border-radius: 2px;text-decoration: none;color: black;border-color: black;"><img src="https://tse1.mm.bing.net/th?id=OIP.snyQQJM813QfQMSzRF1p3QHaHa&pid=Api&P=0&h=180"alt="wishlistsymbol" width="30"></a><br>
                        <a href="http://localhost:16903/KReads/referto.jsp">Refer</a><br>
                    </td>
               
                    <td style="width: 50px;"></td>
                    
                    

                    <td>
                        <img src="https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1320399351i/1885.jpg" alt="Pride_and_Predjudice" name="Pride_and_Predjudice" width="80" height="120"><br>
                        <a  href="http://localhost:16903/KMargretlibrary/PrideandPredjudice.jsp" style="text-decoration: none;color:purple;" onclick="check()">Pride&Prejudice</a><br>
                        Author:<a href="https://www.goodreads.com/author/show/1265.Jane_Austen" style="text-decoration: none;color: purple;">JaneAusten</a><br>
                        Rating:<input type="text" name="orgrating" value="3.89/5" style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br>
                        Score:<input type="text" name="score" value="389" style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br>
                        Wishlist?<a href="http://localhost:16903/KReads/validatesignin.jsp"  style="background-color: white;border-radius: 2px;text-decoration: none;color: black;border-color: black;"><img src="https://tse1.mm.bing.net/th?id=OIP.snyQQJM813QfQMSzRF1p3QHaHa&pid=Api&P=0&h=180"alt="wishlistsymbol" width="30"></a><br>
                        <a href="http://localhost:16903/KReads/referto.jsp">Refer</a>
                        <br>
                    
                    </td>
                    <td style="width: 50px;"></td>


                    <td>
                        <img src="https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1557343311i/10210.jpg" name="Jane_Eyre" alt="Jane_Eyre" width="80" height="120" style="lighting-color: white;"><br>
                        <a href="http://localhost:16903/KReads/janeyre.jsp" style="text-decoration: none;color:purple" onclick="check()">Jane Eyre</a><br>
                        Author:<a href="https://www.goodreads.com/author/show/1036615.Charlotte_Bron" style="text-decoration: none;color:purple">Charlotte_Bron</a><br>
                        Rating:<input type="text" name="orgrating" value="4.15/5" style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br>
                        Score:<input type="text" name="score" value="494" style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br>
                        Wishlist?<a href="http://localhost:16903/KReads/validatesignin.jsp"  style="background-color: white;border-radius: 2px;text-decoration: none;color: black;border-color: black;"><img src="https://tse1.mm.bing.net/th?id=OIP.snyQQJM813QfQMSzRF1p3QHaHa&pid=Api&P=0&h=180"alt="wishlistsymbol" width="30"></a><br>
                       <a href="http://localhost:16903/KReads/referto.jsp">Refer</a>
                       <br>
                      
                    </td>
                    <td style="width: 50px;"></td>

                    <td>
                        <img src="https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1474154022i/3.jpg" name="Harry_Potter_and_the_Sorcerer_s_Stone" alt="Harry_Potter" width="80" height="120"><br>
                        <a href="http://localhost:16903/KReads/harrypotter.jsp" style="text-decoration: none;color:purple" onclick="check()">Harry Potter</a><br>
                        Author:<a href="https://en.wikipedia.org/wiki/J._K._Rowling" style="text-decoration: none;color:purple">J.K.Rowling</a><br>
                        Rating:<input type="text" name="orgrating" value="4.47/5" style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br>
                        Score:<input type="text" name="score" value="485" style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br>
                        Wishlist?<a href="http://localhost:16903/KReads/validatesignin.jsp"  style="background-color: white;border-radius: 2px;text-decoration: none;color: black;border-color: black;"><img src="https://tse1.mm.bing.net/th?id=OIP.snyQQJM813QfQMSzRF1p3QHaHa&pid=Api&P=0&h=180"alt="wishlistsymbol" width="30"></a><br>
                        <a href="http://localhost:16903/KReads/referto.jsp">Refer</a>
                        <br>
                    </td>
                    <td style="width: 50px;"></td>


                    <td>
                        <img src="https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1630642716i/5659.jpg" alt="" width="80" height="120"><br>
                        <a  href="http://localhost:16903/KReads/windinthewillows.jsp" style="text-decoration: none;color:purple" onclick="check()" >The_Wind_in_the_Willows</a><br>
                        Author: <a href="https://en.wikipedia.org/wiki/Kenneth_Grahame" style="text-decoration: none;color:purple">Kenneth_Grahame</a><br>
                        Rating:<input type="text" name="orgrating" value="4.01/5" style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br>
                        Score:<input type="text" name="score" value="398" style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br>
                        Wishlist?<a href="http://localhost:16903/KReads/validatesignin.jsp"  style="background-color: white;border-radius: 2px;text-decoration: none;color: black;border-color: black;"><img src="https://tse1.mm.bing.net/th?id=OIP.snyQQJM813QfQMSzRF1p3QHaHa&pid=Api&P=0&h=180"alt="wishlistsymbol" width="30"></a><br>
                        <a href="http://localhost:16903/KReads/referto.jsp">Refer</a>
                        <br>
                       
                    </td>
                    <td style="width: 50px;"></td>



                    <td>
                        <img src="https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1576956100i/5043.jpg" alt="" width="80" height="120"><br>
                        <a  href="http://localhost:16903/KReads/pillarsoftheearth.jsp" style="text-decoration: none;color:purple" onclick="check()">The_Pillars_of_the_Earth</a><br>
                        Author: <a href="https://en.wikipedia.org/wiki/Ken_Follett" style="text-decoration: none;color:purple">Ken_Follett</a><br>
                        Rating:<input type="text" name="orgrating" value="4.34/5" style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br>
                        Score:<input type="text" name="score" value="385" style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br>
                        Wishlist?<a href="http://localhost:16903/KReads/validatesignin.jsp"  style="background-color: white;border-radius: 2px;text-decoration: none;color: black;border-color: black;"><img src="https://tse1.mm.bing.net/th?id=OIP.snyQQJM813QfQMSzRF1p3QHaHa&pid=Api&P=0&h=180"alt="wishlistsymbol" width="30"></a><br>
                        <a href="http://localhost:16903/KReads/referto.jsp">Refer</a>
                        <br>
                       
                    </td>
                    <td style="width: 50px;"></td>



                    <td>
                        <img src="https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1386605169i/17899948.jpg" alt="" width="80" height="120"><br>
                        <a  href="http://localhost:16903/KReads/rebecca.jsp" style="text-decoration: none;color:purple" onclick="check()">Rebecca</a><br>
                        Author: <a href="https://en.wikipedia.org/wiki/Richard_Adams" style="text-decoration: none;color:purple" >Richard_Adams</a><br>
                        Rating:<input type="text" name="orgrating" value="4.24/5" style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br>
                        Score:<input type="text" name="score" value="476" style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br>
                        Wishlist?<a href="http://localhost:16903/KReads/validatesignin.jsp"  style="background-color: white;border-radius: 2px;text-decoration: none;color: black;border-color: black;"><img src="https://tse1.mm.bing.net/th?id=OIP.snyQQJM813QfQMSzRF1p3QHaHa&pid=Api&P=0&h=180"alt="wishlistsymbol" width="30"></a><br>
                        <a href="http://localhost:16903/KReads/referto.jsp">Refer</a>
                        <br>
                       
                    </td>
                    <td style="width: 50px;"></td>
                </tr>
                <br>



                <tr>
                    


                    <td>
                        <img src="https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1405136931i/76620.jpg" alt="" width="80" height="120"><br>
                        <a  href="http://localhost:16903/KReads/watershipdown.jsp" style="text-decoration: none;color:purple" onclick="check()">Watership_Down</a><br>
                        Author: <a href="https://en.wikipedia.org/wiki/Richard_Adams" style="text-decoration: none;color:purple">Richard_Adams</a><br>
                        Rating:<input type="text" name="orgrating" value="4.08/5" style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br>
                        Score:<input type="text" name="score" value="369" style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br>
                        Wishlist?<a href="http://localhost:16903/KReads/validatesignin.jsp"  style="background-color: white;border-radius: 2px;text-decoration: none;color: black;border-color: black;"><img src="https://tse1.mm.bing.net/th?id=OIP.snyQQJM813QfQMSzRF1p3QHaHa&pid=Api&P=0&h=180"alt="wishlistsymbol" width="30"></a><br>
                        <a href="http://localhost:16903/KReads/referto.jsp">Refer</a>
                        <br>
                       
                    </td>
                    <td style="width: 50px;"></td>

                    



                    <td>

                        <img src="https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1324901106i/13315732.jpg" alt="" width="80" height="120" ><br>
                        <a  href="http://localhost:16903/KReads/houndofthebaskervilles.jsp" style="text-decoration: none;color:purple">The-hound-of-the-baskervilles</a><br>
                        Author: <a href="https://en.wikipedia.org/wiki/Arthur_Conan_Doyle" style="text-decoration: none;color:purple">Arthur Conan Doyle</a><br>
                        Rating: <input type="text" name="orgrating" value="4.13/5" style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br><br>
                        Score : 296 <input type="text" name="orgrating" value="296" style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br><br>
                        Wishlist?<a href="http://localhost:16903/KReads/validatesignin.jsp"  style="background-color: white;border-radius: 2px;text-decoration: none;color: black;border-color: black;"><img src="https://tse1.mm.bing.net/th?id=OIP.snyQQJM813QfQMSzRF1p3QHaHa&pid=Api&P=0&h=180"alt="wishlistsymbol" width="30"></a><br>
                        <a href="http://localhost:16903/KReads/referto.jsp">Refer</a>
                        <br>
                    </td>
                    <td style="width: 50px;"></td>



                    <td>

                        <img src="https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1325861570i/170448.jpg" alt="" width="80" height="120" ><br>
                        <a  href="http://localhost:16903/KReads/animalfarm.jsp" style="text-decoration: none;color:purple">Animal Farm</a><br>
                        Author: <a href="https://en.wikipedia.org/wiki/George_Orwell" style="text-decoration: none;color:purple">George Orwell</a><br>
                        Rating: <input type="text" name="orgrating" value="3.99" style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br><br>
                        Score :  <input type="text" name="orgrating" value="274" style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br><br>
                        Wishlist?<a href="http://localhost:16903/KReads/validatesignin.jsp"  style="background-color: white;border-radius: 2px;text-decoration: none;color: black;border-color: black;"><img src="https://tse1.mm.bing.net/th?id=OIP.snyQQJM813QfQMSzRF1p3QHaHa&pid=Api&P=0&h=180"alt="wishlistsymbol" width="30"></a><br>
                        <a href="http://localhost:16903/KReads/referto.jsp">Refer</a>
                        <br>
                      </td>  
                    <td style="width: 50px;"></td>
                    
                    
                    
                    
                     <td>
                        <img src="https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1575509280i/5129.jpg" alt="" width="80" height="120" ><br>
                        <a  href="http://localhost:16903/KReads/bravenewworld.jsp" style="text-decoration: none;color:purple">Brave New World</a><br>
                        Author: <a href="https://en.wikipedia.org/wiki/Aldous_Huxley" style="text-decoration: none;color:purple">Aldous Huxley </a><br>
                        Rating: <input type="text" name="orgrating" value="3.99" style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br><br>
                        Score :  <input type="text" name="orgrating" value="256" style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br><br>
                        Wishlist?<a href="http://localhost:16903/KReads/validatesignin.jsp"  style="background-color: white;border-radius: 2px;text-decoration: none;color: black;border-color: black;"><img src="https://tse1.mm.bing.net/th?id=OIP.snyQQJM813QfQMSzRF1p3QHaHa&pid=Api&P=0&h=180"alt="wishlistsymbol" width="30"></a><br>
                        <a href="http://localhost:16903/KReads/referto.jsp">Refer</a>
                        <br>
                       
                    </td>
                    <td style="width: 50px;"></td>
                    
                    
                    
                     <td>
                        <img src="https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1309376675i/178565.jpg" alt="" width="80" height="120" ><br>
                        <a  href="http://localhost:16903/KReads/excellentwomen.jsp" style="text-decoration: none;color:purple">Excellent Women</a><br>
                        Author: <a href="https://en.wikipedia.org/wiki/Barbara_Pym" style="text-decoration: none;color:purple">Barbata Pym</a><br>
                        Rating: 3.92<input type="text" name="orgrating" value="3.92" style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br><br>
                        Score : 196 <input type="text" name="orgrating" value="196" style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br><br>
                        Wishlist?<a href="http://localhost:16903/KReads/validatesignin.jsp"  style="background-color: white;border-radius: 2px;text-decoration: none;color: black;border-color: black;"><img src="https://tse1.mm.bing.net/th?id=OIP.snyQQJM813QfQMSzRF1p3QHaHa&pid=Api&P=0&h=180"alt="wishlistsymbol" width="30"></a><br>
                        <a href="http://localhost:16903/KReads/referto.jsp">Refer</a>
                        <br>
                       
                    </td>
                    <td style="width: 50px;"></td>
                    
                    
                    
                    
                    <td>
                        <img src="https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1310984018i/25350.jpg" alt="" width="80" height="120" ><br>
                        <a  href="http://localhost:16903/KReads/outofthesilentplanet.jsp" style="text-decoration: none;color:purple">Out_of_the_Silent_Planet </a><br>
                        Author: <a href="https://en.wikipedia.org/wiki/C._S._Lewis" style="text-decoration: none;color:purple">C S Lewis </a><br>
                        Rating: <input type="text" name="orgrating" value="3.93" style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br><br>
                        Score : <input type="text" name="orgrating" value="193" style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br> <br>
                        Wishlist?<a href="http://localhost:16903/KReads/validatesignin.jsp"  style="background-color: white;border-radius: 2px;text-decoration: none;color: black;border-color: black;"><img src="https://tse1.mm.bing.net/th?id=OIP.snyQQJM813QfQMSzRF1p3QHaHa&pid=Api&P=0&h=180"alt="wishlistsymbol" width="30"></a><br>
                        <a href="http://localhost:16903/KReads/referto.jsp">Refer</a>
                        <br>
                    </td>
                    <td style="width: 50px;"></td>
                    
                    
                    
                     <td>
                        <img src="https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1338741283i/43545.jpg" alt="" width="80" height="120" ><br>
                        <a  href="http://localhost:16903/KReads/onceandthefutureking.jsp" style="text-decoration: none;color:purple">The Once and Future King </a><br>
                        Author: <a href="https://en.wikipedia.org/wiki/T._H._White" style="text-decoration: none;color:purple"> T H White</a><br>
                        Rating: <input type="text" name="orgrating" value="4.07" style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br><br>
                        Score :  <input type="text" name="orgrating" value="122" style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br><br>
                        Wishlist?<a href="http://localhost:16903/KReads/validatesignin.jsp"  style="background-color: white;border-radius: 2px;text-decoration: none;color: black;border-color: black;"><img src="https://tse1.mm.bing.net/th?id=OIP.snyQQJM813QfQMSzRF1p3QHaHa&pid=Api&P=0&h=180"alt="wishlistsymbol" width="30"></a><br>
                        <a href="http://localhost:16903/KReads/referto.jsp">Refer</a>
                        <br>
                     </td>
                     <td style="width: 50px;"></td>
                      
                </tr><br>

                
                
                
                <tr>
                  
                    <td>
                        <img src="https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1374129635i/27693.jpg" alt="" width="80" height="120" ><br>
                        <a  href="http://localhost:16903/KReads/themoonspinners.jsp" style="text-decoration: none;color:purple">The Moon Spinners </a><br>
                        Author: <a href="https://en.wikipedia.org/wiki/Mary_Stewart_(novelist)" style="text-decoration: none;color:purple">Mary Stewart </a><br>
                        Rating: <input type="text" name="orgrating" value="4.06" style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br><br>
                        Score :  <input type="text" name="orgrating" value="122" style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br><br>
                        Wishlist?<a href="http://localhost:16903/KReads/validatesignin.jsp"  style="background-color: white;border-radius: 2px;text-decoration: none;color: black;border-color: black;"><img src="https://tse1.mm.bing.net/th?id=OIP.snyQQJM813QfQMSzRF1p3QHaHa&pid=Api&P=0&h=180"alt="wishlistsymbol" width="30"></a><br>
                        <a href="http://localhost:16903/KReads/referto.jsp">Refer</a>
                        <br>
                       </td>
                       <td style="width: 50px;"></td>
                       
                       
                    
                    <td>
                        <img src="https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1327874178i/6043848.jpg" alt="" width="80" height="120" ><br>
                        <a  href="http://localhost:16903/KReads/knifeofneverlettinggo.jsp" style="text-decoration: none;color:purple">The knife of never letting go </a><br>
                        Author: <a href="https://en.wikipedia.org/wiki/Patrick_Ness" style="text-decoration: none;color:purple">Patrick Ness </a><br>
                        Rating: <input type="text" name="orgrating" value="3.97" style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br><br>
                        Score :  <input type="text" name="orgrating" value="99" style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br><br>
                        Wishlist?<a href="http://localhost:16903/KReads/validatesignin.jsp"  style="background-color: white;border-radius: 2px;text-decoration: none;color: black;border-color: black;"><img src="https://tse1.mm.bing.net/th?id=OIP.snyQQJM813QfQMSzRF1p3QHaHa&pid=Api&P=0&h=180"alt="wishlistsymbol" width="30"></a><br>
                        <a href="http://localhost:16903/KReads/referto.jsp">Refer</a>
                        <br>
                       
                    </td>
                    <td style="width: 50px;"></td>
                    
                    
                    <td>
                        <img src="https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1602094778i/52741293.jpg" alt="" width="80" height="120" ><br>
                        <a  href="http://localhost:16903/KReads/theshuggiebrain.jsp" style="text-decoration: none;color:purple">The shuggie brain </a><br>
                        Author: <a href="https://en.wikipedia.org/wiki/Douglas_Stuart_(writer)" style="text-decoration: none;color:purple">Douglas Stuart </a><br>
                        Rating: <input type="text" name="orgrating" value="4.31" style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br><br>
                        Score : <input type="text" name="orgrating" value="99" style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br><br>
                        Wishlist?<a href="http://localhost:16903/KReads/validatesignin.jsp"  style="background-color: white;border-radius: 2px;text-decoration: none;color: black;border-color: black;"><img src="https://tse1.mm.bing.net/th?id=OIP.snyQQJM813QfQMSzRF1p3QHaHa&pid=Api&P=0&h=180"alt="wishlistsymbol" width="30"></a><br>
                        <a href="http://localhost:16903/KReads/referto.jsp">Refer</a>
                        <br>
                       </td>
                       <td style="width: 50px;"></td>
                       
                      
                    
                    <td>
                        <img src="https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1615476505i/311165.jpg" alt="" width="80" height="120" ><br>
                        <a  href="http://localhost:16903/KReads/cotillion.jsp" style="text-decoration: none;color:purple">Cotillion </a><br>
                        Author: <a href="https://en.wikipedia.org/wiki/Georgette_Heyer" style="text-decoration: none;color:purple">Georgette Heyer </a><br>
                        Rating: <input type="text" name="orgrating" value="4.09" style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br><br>
                        Score : <input type="text" name="orgrating" value="97" style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br><br>
                        Wishlist?<a href="http://localhost:16903/KReads/validatesignin.jsp"  style="background-color: white;border-radius: 2px;text-decoration: none;color: black;border-color: black;"><img src="https://tse1.mm.bing.net/th?id=OIP.snyQQJM813QfQMSzRF1p3QHaHa&pid=Api&P=0&h=180"alt="wishlistsymbol" width="30"></a><br>
                        <a href="http://localhost:16903/KReads/referto.jsp">Refer</a>
                        <br>
                        
                    </td>
                    <td style="width: 50px;"></td>
                    <td>
                        <img src="https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1577773635i/43322388.jpg" alt="" width="80" height="120" ><br>
                        <a  href="http://localhost:16903/KReads/thejourneyofman.jsp" style="text-decoration: none;color:purple">The journey of man </a><br>
                        Author: <a href="https://en.wikipedia.org/wiki/Spencer_Wells" style="text-decoration: none;color:purple">Spencer wells </a><br>
                        Rating: <input type="text" name="orgrating" value="4.06" style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br><br>
                        Score : <input type="text" name="orgrating" value="96" style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br> <br>
                        Wishlist?<a href="http://localhost:16903/KReads/validatesignin.jsp"  style="background-color: white;border-radius: 2px;text-decoration: none;color: black;border-color: black;"><img src="https://tse1.mm.bing.net/th?id=OIP.snyQQJM813QfQMSzRF1p3QHaHa&pid=Api&P=0&h=180"alt="wishlistsymbol" width="30"></a><br>
                        <a href="http://localhost:16903/KReads/referto.jsp">Refer</a>
                        <br>
                      </td>
                      <td style="width: 50px;"></td>




                    <td>
                        <img src="https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1531460508i/32102.jpg" alt="" width="80" height="120" ><br>
                        <a  href="http://localhost:16903/KReads/venetia.jsp" style="text-decoration: none;color:purple">Venetia </a><br>
                        Author: <a href="https://en.wikipedia.org/wiki/Georgette_Heyer" style="text-decoration: none;color:purple">Georgette Heyer </a><br>
                        Rating: <input type="text" name="orgrating" value="4.11" style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br><br>
                        Score : <input type="text" name="orgrating" value="96" style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br> <br>
                        Wishlist?<a href="http://localhost:16903/KReads/validatesignin.jsp"  style="background-color: white;border-radius: 2px;text-decoration: none;color: black;border-color: black;"><img src="https://tse1.mm.bing.net/th?id=OIP.snyQQJM813QfQMSzRF1p3QHaHa&pid=Api&P=0&h=180"alt="wishlistsymbol" width="30"></a><br>
                        <a href="http://localhost:16903/KReads/referto.jsp">Refer</a>
                        <br>
                      </td>
                      <td style="width: 50px;"></td>
                      
                      
                      
                    <td>
                        <img src="https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1271095852i/826845.jpg" alt="" width="80" height="120" ><br>
                        <a  href="http://localhost:16903/KReads/thecrystallids.jsp" style="text-decoration: none;color:purple">The Chrysalids </a><br>
                        Author: <a href="https://en.wikipedia.org/wiki/John_Wyndham" style="text-decoration: none;color:purple">John Wyndham </a><br>
                        Rating: <input type="text" name="orgrating" value="3.93" style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br><br>
                        Score :  <input type="text" name="orgrating" value="95" style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br><br>
                        Wishlist?<a href="http://localhost:16903/KReads/validatesignin.jsp"  style="background-color: white;border-radius: 2px;text-decoration: none;color: black;border-color: black;"><img src="https://tse1.mm.bing.net/th?id=OIP.snyQQJM813QfQMSzRF1p3QHaHa&pid=Api&P=0&h=180"alt="wishlistsymbol" width="30"></a><br>
                        <a href="http://localhost:16903/KReads/referto.jsp">Refer</a>
                        <br>
                        
                    </td>
                    <td style="width: 50px;"></td>
                </tr><br>


                <tr>
                 <td>
                        <img src="https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1699622850i/1030225.jpg" alt="" width="80" height="120" ><br>
                        <a  href="http://localhost:16903/KReads/northandsouth.jsp" style="text-decoration: none;color:purple">North and South </a><br>
                        Author: <a href="https://en.wikipedia.org/wiki/Elizabeth_Gaskell" style="text-decoration: none;color:purple">Elizabeth Gaskell </a><br>
                        Rating: <input type="text" name="orgrating" value="4.15" style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br><br>
                        Score :  <input type="text" name="orgrating" value="94" style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br><br>
                        Wishlist?<a href="http://localhost:16903/KReads/validatesignin.jsp"  style="background-color: white;border-radius: 2px;text-decoration: none;color: black;border-color: black;"><img src="https://tse1.mm.bing.net/th?id=OIP.snyQQJM813QfQMSzRF1p3QHaHa&pid=Api&P=0&h=180"alt="wishlistsymbol" width="30"></a><br>
                        <a href="http://localhost:16903/KReads/referto.jsp">Refer</a>
                        <br>
                        
                    </td>
                    <td style="width: 50px;"></td>




                    <td>
                        <img src="https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1338519188i/56674.jpg" alt="" width="80" height="120" ><br>
                        <a  href="http://localhost:16903/KReads/empireofthesun.jsp" style="text-decoration: none;color:purple">Empire of the Sun </a><br>
                        Author: <a href="https://en.wikipedia.org/wiki/J._G._Ballard" style="text-decoration: none;color:purple">J G Ballard </a><br>
                        Rating: <input type="text" name="orgrating" value="3.98" style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br><br>
                        Score :  <input type="text" name="orgrating" value="94" style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br><br>
                        Wishlist?<a href="http://localhost:16903/KReads/validatesignin.jsp"  style="background-color: white;border-radius: 2px;text-decoration: none;color: black;border-color: black;"><img src="https://tse1.mm.bing.net/th?id=OIP.snyQQJM813QfQMSzRF1p3QHaHa&pid=Api&P=0&h=180"alt="wishlistsymbol" width="30"></a><br>
                        <a href="http://localhost:16903/KReads/referto.jsp">Refer</a>
                        <br>
                       </td>
                       <td style="width: 50px;"></td>



                    

                    <td>
                        <img src="https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1355131659i/84644.jpg" alt="" width="80" height="120" ><br>
                        <a  href="http://localhost:16903/KReads/thelittlegreyman.jsp" style="text-decoration: none;color:purple">The little grey Men </a><br>
                        Author: <a href="https://en.wikipedia.org/wiki/Denys_Watkins-Pitchford" style="text-decoration: none;color:purple">B.B </a><br>
                        Rating: <input type="text" name="orgrating" value="4.12" style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br><br>
                        Score : <input type="text" name="orgrating" value="93" style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br><br>
                        Wishlist?<a href="http://localhost:16903/KReads/validatesignin.jsp"  style="background-color: white;border-radius: 2px;text-decoration: none;color: black;border-color: black;"><img src="https://tse1.mm.bing.net/th?id=OIP.snyQQJM813QfQMSzRF1p3QHaHa&pid=Api&P=0&h=180"alt="wishlistsymbol" width="30"></a><br>
                        <a href="http://localhost:16903/KReads/referto.jsp">Refer</a>
                        <br>
                        
                    </td>
                    <td style="width: 50px;"></td>

                    
                    
                    

                    <td>
                        <img src="https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1309211401i/6310.jpg" alt="" width="80" height="120" ><br>
                        <a  href="http://localhost:16903/KReads/charlieandchocolatefactory.jsp" style="text-decoration: none;color:purple">Charlie and the chocolate factory </a><br>
                        Author: <a href="https://en.wikipedia.org/wiki/Roald_Dahl" style="text-decoration: none;color:purple">Roald Dahl </a><br>
                        Rating: <input type="text" name="orgrating" value="4.16" style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br><br>
                        Score : <input type="text" name="orgrating" value="92" style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br><br>
                        Wishlist?<a href="http://localhost:16903/KReads/validatesignin.jsp"  style="background-color: white;border-radius: 2px;text-decoration: none;color: black;border-color: black;"><img src="https://tse1.mm.bing.net/th?id=OIP.snyQQJM813QfQMSzRF1p3QHaHa&pid=Api&P=0&h=180"alt="wishlistsymbol" width="30"></a><br>
                        <a href="http://localhost:16903/KReads/referto.jsp">Refer</a>
                        <br>
                        
                    </td>
                    <td style="width: 50px;"></td>
                    
                    
                    
                    
                    
                    <td>
                        <img src="https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1476435403i/76664.jpg" alt="" width="80" height="120" ><br>
                        <a  href="http://localhost:16903/KReads/thespellofthechameleon.jsp" style="text-decoration: none;color:purple">A Spell for the chameleon </a><br>
                        Author: <a href="https://en.wikipedia.org/wiki/Piers_Anthony" style="text-decoration: none;color:purple">Piers Anthony </a><br>
                        Rating: 3.92<input type="text" name="orgrating" value="3.92" style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br><br>
                        Score : 91 <input type="text" name="orgrating" value="91" style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br><br>
                        Wishlist?<a href="http://localhost:16903/KReads/validatesignin.jsp"  style="background-color: white;border-radius: 2px;text-decoration: none;color: black;border-color: black;"><img src="https://tse1.mm.bing.net/th?id=OIP.snyQQJM813QfQMSzRF1p3QHaHa&pid=Api&P=0&h=180"alt="wishlistsymbol" width="30"></a><br>
                        <a href="http://localhost:16903/KReads/referto.jsp">Refer</a>
                        <br>
                        
                    </td>
                    <td style="width: 50px;"></td>
                    
                    
                    
                    
                    <td>
                        <img src="https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1630575238i/6346975.jpg" alt="" width="80" height="120" ><br>
                        <a  href="http://localhost:16903/KReads/moonwalkingwitheinstein.jsp" style="text-decoration: none;color:purple">Moon walking with Einstein </a><br>
                        Author: <a href="https://en.wikipedia.org/wiki/Joshua_Foer" style="text-decoration: none;color:purple">Joshua Foer </a><br>
                        Rating: <input type="text" name="orgrating" value="3.88" style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br><br>
                        Score : <input type="text" name="orgrating" value="N.A." style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br> <br>
                        Wishlist?<a href="http://localhost:16903/KReads/validatesignin.jsp"  style="background-color: white;border-radius: 2px;text-decoration: none;color: black;border-color: black;"><img src="https://tse1.mm.bing.net/th?id=OIP.snyQQJM813QfQMSzRF1p3QHaHa&pid=Api&P=0&h=180"alt="wishlistsymbol" width="30"></a><br>
                        <a href="http://localhost:16903/KReads/referto.jsp">Refer</a>
                        <br>
                        
                    </td>
                    <td style="width: 50px;"></td>
                    
                    
                    
                    
                    <td>
                        <img src="https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1553691804i/17349.jpg" alt="" width="80" height="120" ><br>
                        <a  href="http://localhost:16903/KReads/thedemonhauntedworld.jsp" style="text-decoration: none;color:purple">The demon haunted world </a><br>
                        Author: <a href="https://en.wikipedia.org/wiki/Carl_Sagan" style="text-decoration: none;color:purple">Carl Sagan </a><br>
                        Rating: 4.29<input type="text" name="orgrating" value="4.29" style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br><br>
                        Score : N.A.<input type="text" name="orgrating" value="N.A." style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br> <br>
                        Wishlist?<a href="http://localhost:16903/KReads/validatesignin.jsp"  style="background-color: white;border-radius: 2px;text-decoration: none;color: black;border-color: black;"><img src="https://tse1.mm.bing.net/th?id=OIP.snyQQJM813QfQMSzRF1p3QHaHa&pid=Api&P=0&h=180"alt="wishlistsymbol" width="30"></a><br>
                        <a href="http://localhost:16903/KReads/referto.jsp">Refer</a>
                        <br>
                        

                    </td>
                    <td style="width: 50px;"></td>
               
                </tr><br>



                <tr id="triller">
                 
                 
                    
                    <td>
                        <img src="https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1348687775i/19164.jpg" alt="" width="80" height="120" ><br>
                        <a  href="http://localhost:16903/KReads/thedivinecomedy.jsp" style="text-decoration: none;color:purple">The divine comedy of Dante Alighieri </a><br>
                        Author: <a href="https://en.wikipedia.org/wiki/Dante_Alighieri" style="text-decoration: none;color:purple">Dante Alighieri </a><br>
                        Rating: <input type="text" name="orgrating" value="4.05" style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br><br>
                        Score : <input type="text" name="orgrating" value="N.A." style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br> <br>
                        Wishlist?<a href="http://localhost:16903/KReads/validatesignin.jsp"  style="background-color: white;border-radius: 2px;text-decoration: none;color: black;border-color: black;"><img src="https://tse1.mm.bing.net/th?id=OIP.snyQQJM813QfQMSzRF1p3QHaHa&pid=Api&P=0&h=180"alt="wishlistsymbol" width="30"></a><br>
                        <a href="http://localhost:16903/KReads/referto.jsp">Refer</a>
                        <br>
                        </td>
                        <td style="width: 50px;"></td>
                    


                    <td>
                        <img src="https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1551739783i/425029.jpg" alt="" width="80" height="120" ><br>
                        <a  href="http://localhost:16903/KReads/presumedinnocent.jsp" style="text-decoration: none;color:purple">Presumed innocent</a><br>
                        Author: <a href="https://en.wikipedia.org/wiki/Scott_Turow" style="text-decoration: none;color:purple">Scott Turow </a><br>
                        Rating: 4.10<input type="text" name="orgrating" value="4.10" style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br><br>
                        Score : N.A.<input type="text" name="orgrating" value="N.A." style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br> <br>
                        Wishlist?<a href="http://localhost:16903/KMargretlibrary/validatesignin.jsp"  style="background-color: white;border-radius: 2px;text-decoration: none;color: black;border-color: black;"><img src="https://tse1.mm.bing.net/th?id=OIP.snyQQJM813QfQMSzRF1p3QHaHa&pid=Api&P=0&h=180"alt="wishlistsymbol" width="30"></a><br>
                        <a href="http://localhost:16903/KReads/referto.jsp">Refer</a>
                        <br>
                        </td>
                        <td style="width: 50px;"></td>
                        
                        
                    
                     <td>
                        <img src="https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1474820373i/31125554.jpg" alt="" width="80" height="120" ><br>
                        <a  href="http://localhost:16903/KReads/fourthmonkey.jsp" style="text-decoration: none;color:purple">The fourth monkey</a><br>
                        Author: <a href="https://en.wikipedia.org/wiki/Scott_Turow" style="text-decoration: none;color:purple">Scott Turow </a><br>
                        Rating: <input type="text" name="orgrating" value="4.26" style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br><br>
                        Score : <input type="text" name="orgrating" value="N.A." style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br>. <br>
                        Wishlist?<a href="http://localhost:16903/KReads/validatesignin.jsp"  style="background-color: white;border-radius: 2px;text-decoration: none;color: black;border-color: black;"><img src="https://tse1.mm.bing.net/th?id=OIP.snyQQJM813QfQMSzRF1p3QHaHa&pid=Api&P=0&h=180"alt="wishlistsymbol" width="30"></a><br>
                        <a href="http://localhost:16903/KReads/referto.jsp">Refer</a>
                        <br>
                        
                        
                        
                    </td>
                    <td style="width: 50px;"></td>
                    
                    <td>
                        <img src="https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1306079371i/293101.jpg" alt="" width="80" height="120" ><br>
                        <a  href="http://localhost:16903/KReads/amityvillehorror.jsp" style="text-decoration: none;color:purple">The Amityville Horror</a><br>
                        Author: <a href="" style="text-decoration: none;color:purple">Jay Anson</a><br>
                        Rating: <input type="text" name="orgrating" value="3.83" style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br> <br>
                        Score : <input type="text" name="orgrating" value="N.A." style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br> <br>
                        Wishlist?<a href="http://localhost:16903/KReads/validatesignin.jsp"  style="background-color: white;border-radius: 2px;text-decoration: none;color: black;border-color: black;"><img src="https://tse1.mm.bing.net/th?id=OIP.snyQQJM813QfQMSzRF1p3QHaHa&pid=Api&P=0&h=180"alt="wishlistsymbol" width="30"></a><br>
                        <a href="http://localhost:16903/KReads/referto.jsp">Refer</a>
                        <br>
                        
                        
                       
                    </td>
                    <td style="width: 50px;"></td>
                    
                    
                    
                    
                    
                    <td>
                        <img src="https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1400270646i/11279.jpg" alt="" width="80" height="120" ><br>
                        <a  href="http://localhost:16903/KReads/summerofnight.jsp" style="text-decoration: none;color:purple">Summer of Night</a><br>
                        Author: <a href="https://en.wikipedia.org/wiki/Dan_Simmons" style="text-decoration: none;color:purple"> Dan Sammons</a><br>
                        Rating:  <input type="text" name="orgrating" value="4.04" style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br><br>
                        Score : <input type="text" name="orgrating" value="N.A." style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br> <br>
                        Wishlist?<a href="http://localhost:16903/KReads/validatesignin.jsp"  style="background-color: white;border-radius: 2px;text-decoration: none;color: black;border-color: black;"><img src="https://tse1.mm.bing.net/th?id=OIP.snyQQJM813QfQMSzRF1p3QHaHa&pid=Api&P=0&h=180"alt="wishlistsymbol" width="30"></a><br>
                        <a href="http://localhost:16903/KReads/referto.jsp">Refer</a>
                        <br>
                        
                        
                        
                    </td>
                    <td style="width: 50px;"></td>
                    
                    
                    
                    
                    <td>
                        <img src="https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1646654150i/59808540.jpg" alt="" width="80" height="120" ><br>
                        <a  href="http://localhost:16903/KReads/gatheringdark.jsp" style="text-decoration: none;color:purple">The Gathering dark</a><br>
                        Author: <a href="https://toribovalino.com/about" style="text-decoration: none;color:purple">Tori Bovalino</a><br>
                        Rating: <input type="text" name="orgrating" value="3.58" style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br><br>
                        Score : <input type="text" name="orgrating" value="N.A." style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br> <br>
                        Wishlist?<a href="http://localhost:16903/KReads/validatesignin.jsp"  style="background-color: white;border-radius: 2px;text-decoration: none;color: black;border-color: black;"><img src="https://tse1.mm.bing.net/th?id=OIP.snyQQJM813QfQMSzRF1p3QHaHa&pid=Api&P=0&h=180"alt="wishlistsymbol" width="30"></a><br>
                        <a href="http://localhost:16903/KReads/referto.jsp">Refer</a>
                        <br>
                       

                    </td>
                    <td style="width: 50px;"></td>
                    
                   
                    <td>

                        <img src="https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1684638853i/2429135.jpg" alt="" width="80" height="120" ><br>
                        <a  href="http://localhost:16903/KReads/thegirlwithdragontatoo.jsp" style="text-decoration: none;color:purple">The girl with dragon tattoo</a><br>
                        Author: <a href="https://en.wikipedia.org/wiki/Stieg_Larsson" style="text-decoration: none;color:purple">Steig Larson</a><br>
                        Rating: <input type="text" name="orgrating" value="4.17" style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br><br>
                        Score : <input type="text" name="orgrating" value="N.A" style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br> <br>
                        Wishlist?<a href="http://localhost:16903/KReads/validatesignin.jsp"  style="background-color: white;border-radius: 2px;text-decoration: none;color: black;border-color: black;"><img src="https://tse1.mm.bing.net/th?id=OIP.snyQQJM813QfQMSzRF1p3QHaHa&pid=Api&P=0&h=180"alt="wishlistsymbol" width="30"></a><br>
                        <a href="http://localhost:16903/KReads/referto.jsp">Refer</a>
                        <br>
                        

                    </td>
                    <td style="width: 50px;"></td>
                </tr><br>


                <tr>
                 
                    <td>

                        <img src="https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1579621267i/968.jpg" alt="" width="80" height="120" ><br>
                        <a  href="http://localhost:16903/KReads/ThdDaVinciCode.jsp" style="text-decoration: none;color:purple">The Da Vinci code</a><br>
                        Author: <a href="https://en.wikipedia.org/wiki/Dan_Brown" style="text-decoration: none;color:purple">Dan Brown</a><br>
                        Rating: <input type="text" name="orgrating" value="3.92" style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br><br>
                        Score : <input type="text" name="orgrating" value="N.A" style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br> <br>
                        Wishlist?<a href="http://localhost:16903/KReads/validatesignin.jsp"  style="background-color: white;border-radius: 2px;text-decoration: none;color: black;border-color: black;"><img src="https://tse1.mm.bing.net/th?id=OIP.snyQQJM813QfQMSzRF1p3QHaHa&pid=Api&P=0&h=180"alt="wishlistsymbol" width="30"></a><br>
                        <a href="http://localhost:16903/KReads/referto.jsp">Refer</a>
                        <br>
                        
                       
                    </td>
                    <td style="width: 50px;"></td>
                    <td>

                        <img src="https://cdn.blackstonepublishing.com/cdn-cgi/image/width=400,quality=75/5/4/5453/5453-square.jpg" alt="" width="80" height="120" ><br>
                        <a  href="http://localhost:16903/KReads/strangeofdrjakell.jsp" style="text-decoration: none;color:purple">Strange of Dr Jakell</a><br>
                        Author: <a href="https://en.wikipedia.org/wiki/Robert_Louis_Stevenson" style="text-decoration: none;color:purple">Robert Louis Stevenson</a><br>
                        Rating: <input type="text" name="orgrating" value="3.92" style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br><br>
                        Score : <input type="text" name="orgrating" value="N.A" style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br> <br>
                        Wishlist?<a href="http://localhost:16903/KReads/validatesignin.jsp"  style="background-color: white;border-radius: 2px;text-decoration: none;color: black;border-color: black;"><img src="https://tse1.mm.bing.net/th?id=OIP.snyQQJM813QfQMSzRF1p3QHaHa&pid=Api&P=0&h=180"alt="wishlistsymbol" width="30"></a><br>
                        <a href="http://localhost:16903/KReads/referto.jsp">Refer</a>
                        <br>
                        
                       
                    </td>
                    <td style="width: 50px;"></td>

                    
                    
                    
                   <td>

                        <img src="https://cdn.blackstonepublishing.com/cdn-cgi/image/width=400,quality=75/5/4/5453/5453-square.jpg" alt="" width="80" height="120" ><br>
                        <a  href="http://localhost:16903/KReads/strangeofdrjakell.jsp" style="text-decoration: none;color:purple">Strange of Dr Jakell</a><br>
                        Author: <a href="https://en.wikipedia.org/wiki/Robert_Louis_Stevenson" style="text-decoration: none;color:purple">Robert Louis Stevenson</a><br>
                        Rating: <input type="text" name="orgrating" value="3.92" style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br><br>
                        Score : <input type="text" name="orgrating" value="N.A" style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br> <br>
                        Wishlist?<a href="http://localhost:16903/KReads/validatesignin.jsp"  style="background-color: white;border-radius: 2px;text-decoration: none;color: black;border-color: black;"><img src="https://tse1.mm.bing.net/th?id=OIP.snyQQJM813QfQMSzRF1p3QHaHa&pid=Api&P=0&h=180"alt="wishlistsymbol" width="30"></a><br>
                        <a href="http://localhost:16903/KReads/referto.jsp">Refer</a>
                        <br>
                        
                       
                    </td>
                    <td style="width: 50px;"></td>
                    
                    
                    
                    <td>

                        <img src="https://cdn.blackstonepublishing.com/cdn-cgi/image/width=400,quality=75/5/4/5453/5453-square.jpg" alt="" width="80" height="120" ><br>
                        <a  href="http://localhost:16903/KReads/strangeofdrjakell.jsp" style="text-decoration: none;color:purple">Strange of Dr Jakell</a><br>
                        Author: <a href="https://en.wikipedia.org/wiki/Robert_Louis_Stevenson" style="text-decoration: none;color:purple">Robert Louis Stevenson</a><br>
                        Rating: <input type="text" name="orgrating" value="3.92" style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br><br>
                        Score : <input type="text" name="orgrating" value="N.A" style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br> <br>
                        Wishlist?<a href="http://localhost:16903/KReads/validatesignin.jsp"  style="background-color: white;border-radius: 2px;text-decoration: none;color: black;border-color: black;"><img src="https://tse1.mm.bing.net/th?id=OIP.snyQQJM813QfQMSzRF1p3QHaHa&pid=Api&P=0&h=180"alt="wishlistsymbol" width="30"></a><br>
                       <a href="http://localhost:16903/KReads/referto.jsp">Refer</a>
                        <br>
                        
                       
                    </td>
                    <td style="width: 50px;"></td>
                    
                    
                    
                    
                    <td>

                        <img src="https://cdn.blackstonepublishing.com/cdn-cgi/image/width=400,quality=75/5/4/5453/5453-square.jpg" alt="" width="80" height="120" ><br>
                        <a  href="http://localhost:16903/KReads/strangeofdrjakell.jsp" style="text-decoration: none;color:purple">Strange of Dr Jakell</a><br>
                        Author: <a href="https://en.wikipedia.org/wiki/Robert_Louis_Stevenson" style="text-decoration: none;color:purple">Robert Louis Stevenson</a><br>
                        Rating: <input type="text" name="orgrating" value="3.92" style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br><br>
                        Score : <input type="text" name="orgrating" value="N.A" style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br> <br>
                        Wishlist?<a href="http://localhost:16903/KReads/validatesignin.jsp"  style="background-color: white;border-radius: 2px;text-decoration: none;color: black;border-color: black;"><img src="https://tse1.mm.bing.net/th?id=OIP.snyQQJM813QfQMSzRF1p3QHaHa&pid=Api&P=0&h=180"alt="wishlistsymbol" width="30"></a><br>
                       <a href="http://localhost:16903/KReads/referto.jsp">Refer</a>
                        <br>
                        
                       
                    </td>
                    <td style="width: 50px;"></td>
                    
                    
                    
                    <td>

                        <img src="https://cdn.blackstonepublishing.com/cdn-cgi/image/width=400,quality=75/5/4/5453/5453-square.jpg" alt="" width="80" height="120" ><br>
                        <a  href="http://localhost:16903/KReads/strangeofdrjakell.jsp" style="text-decoration: none;color:purple">Strange of Dr Jakell</a><br>
                        Author: <a href="https://en.wikipedia.org/wiki/Robert_Louis_Stevenson" style="text-decoration: none;color:purple">Robert Louis Stevenson</a><br>
                        Rating: <input type="text" name="orgrating" value="3.92" style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br><br>
                        Score : <input type="text" name="orgrating" value="N.A" style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br> <br>
                        Wishlist?<a href="http://localhost:16903/KReads/validatesignin.jsp"  style="background-color: white;border-radius: 2px;text-decoration: none;color: black;border-color: black;"><img src="https://tse1.mm.bing.net/th?id=OIP.snyQQJM813QfQMSzRF1p3QHaHa&pid=Api&P=0&h=180"alt="wishlistsymbol" width="30"></a><br>
                        <a href="http://localhost:16903/KReads/referto.jsp">Refer</a>
                        <br>
                        
                       
                    </td>
                    <td style="width: 50px;"></td>
                    
                    
                    
                    
                    <td>

                        <img src="https://cdn.blackstonepublishing.com/cdn-cgi/image/width=400,quality=75/5/4/5453/5453-square.jpg" alt="" width="80" height="120" ><br>
                        <a  href="http://localhost:16903/KReads/strangeofdrjakell.jsp" style="text-decoration: none;color:purple">Strange of Dr Jakell</a><br>
                        Author: <a href="https://en.wikipedia.org/wiki/Robert_Louis_Stevenson" style="text-decoration: none;color:purple">Robert Louis Stevenson</a><br>
                        Rating: <input type="text" name="orgrating" value="3.92" style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br><br>
                        Score : <input type="text" name="orgrating" value="N.A" style="background-color: #ccffff; border-color: #ccffff ;width: 40px" readonly><br> <br>
                        Wishlist?<a href="http://localhost:16903/KReads/validatesignin.jsp"  style="background-color: white;border-radius: 2px;text-decoration: none;color: black;border-color: black;"><img src="https://tse1.mm.bing.net/th?id=OIP.snyQQJM813QfQMSzRF1p3QHaHa&pid=Api&P=0&h=180"alt="wishlistsymbol" width="30"></a><br>
                       <a href="http://localhost:16903/KReads/referto.jsp">Refer</a>
                        <br>
                        
                       
                    </td>
                    <td style="width: 50px;"></td>
                </tr><br>
                
                
            </table>
            
            
         </form>
          <br><br><br>
               <footer>
                   <center> 
                       <table>
                           <tr>
                               <td style="font-family: inherit;font-size: x-small;text-align: center">2024</td>
                               <td style="font-size: x-small"> &copy;All Rights Reserved</td>
                               <td> <img src="https://vignette.wikia.nocookie.net/alphabet/images/3/3f/Stickers-feu-alphabet-lettre-k.jpg.jpg/revision/latest?cb=20190518050721" alt="logo" width="15"></td>
                           </tr>
                       </table>
                   </center>
               </body>
             </html>


<style>
    body
    {
       
        background-image: url('https://tse4.mm.bing.net/th?id=OIP.oeOLZ-xH2DwZmFgkvEg_jAHaE7&pid=Api&P=0&h=180s');

        

        background-repeat: repeat-y;
        background-size: 30%;
        padding-top: 10px;
        padding-left: 600px;
        padding-bottom: 10px;
       
        background-position: left;
        width: fit-content;
        padding-right: 100px;
        
    }
    form
    {
        
        
        
       
        padding-right: 150px;
        padding-bottom: 50px;
        
        width: 950px;
        border-radius: 8px;
        
        
        border-padding: 4px left;
        border-top-width: 10px;
        border-top-color: aliceblue;
        
    }
    title
    {
        background-color: aqua;

    }
    button
    {
        
        column-gap: 0cap;
        padding-right: 0cqb;

    }
    h4
    {
        text-align: center;
       
    }
    h1
    {
        text-align:center
    }


    .dropbtn
    {
       
        color: white;
       padding: 14px;
        font-size: 16px;
        border: none;
        border-radius: 2px;
        background-color: navy;
    }

    .dropdown
    {
        position: relative;
        display: inline-block;
    }


    .dropdown-content 
    {
        display: none;
        position: relative;
        background-color: #f1f1f1;
        min-width: 160px;
        bottom: 50px;
        z-index: 1;
        color: black;
    }


    .dropdown-content a 
    {
        color: black;
        padding: 12px 16px;
        text-decoration: none;
        display: block;
    }



    .dropdown-content a:hover 
    {
        background-color: #ccc;
        color: black;
    }


    .dropdown:hover .dropdown-content 
    {
        display: block;
    }


    .dropdown:hover .dropbtn 
    {
        background-image: url('https://tse2.mm.bing.net/th?id=OIP.nOgWmtp3sYRQt14BJVisvAHaFj&pid=Api&P=0&h=180');
    }

div.scrollmenu {
  background-image: url('https://tse2.mm.bing.net/th?id=OIP.nOgWmtp3sYRQt14BJVisvAHaFj&pid=Api&P=0&h=180');
  overflow: auto;
  white-space: nowrap;
  width: 50px;
}

div.scrollmenu a {
  display: inline-block;
  color: white;
  text-align: center;
  padding: 14px;
  text-decoration: none;
}

div.scrollmenu a:hover {
  background-color: #777;
}
</style>

 