<%-- 
    Document   : calculator_main
    Created on : 25 Oct, 2023, 1:59:39 PM
    Author     : DELL-PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Create a simple Program to build the Calculator in JavaScript using with HTML and CSS web languages. -->
<!DOCTYPE html>
<html lang = "en">
<head>
<title> Java Script Calculator </title>

<style>
h1 {
	text-align: center;
       
	background-color: skyblue;
	color: grey;
	}
        .button
        {
            background: none;
            padding-right:0;
            padding-left: 0;
            padding-top: 0;
            margin: 0;
            
            width:10;
        }
        
       

</style>

</head>
<body>
<h1> Calculator Program in Java Script </h1>
<center>
<form name = "form1">
	
	<!-- This input box shows the button pressed by the user in calculator. -->
        
        
            <input id = "calc" type ="text" name = "answer" size="5" style="border-color:black">
            <input type = "button" value = "AC" onclick = "form1.answer.value = ' ' " id= "clear" style="color:white;background-color: green;button-size:100px"><br>
         <table>
      <tr>
      <td><input type = "button" value = "9" onclick = "form1.answer.value += '9' "style="color:white;background-color: black"></td><td><input type = "button" value = "8" onclick = "form1.answer.value += '8' "style="color:white;background-color: black"></td>
      <td><input type = "button" value = "7" onclick = "form1.answer.value += '7' "style="color:white;background-color: black"></td>
      <td><input type = "button" value = " + "onclick = "form1.answer.value += '+' "style="color:white;background-color: grey"></td> </tr> 
      
      <tr>
      <td><input type = "button" value = "4" onclick = "form1.answer.value += '4' "style="color:white;background-color: black"></td>
      <td><input type = "button" value = "5" onclick = "form1.answer.value += '5' "style="color:white;background-color: black"></td>
      <td><input type = "button" value = "6" onclick = "form1.answer.value += '6' "style="color:white;background-color: black"></td>
      <td><input type = "button" value = "  - " onclick = "form1.answer.value += '-' "style="color:white;background-color: grey"></td></tr>
      
      <tr>
      <td><input type = "button" value = "1" onclick = "form1.answer.value += '1' " style="color:white;background-color: black"></td>
      <td><input type = "button" value = "2" onclick = "form1.answer.value += '2' " style="color:white;background-color: black"></td>
      <td><input type = "button" value = "3" onclick = "form1.answer.value += '3' " style="color:white;background-color: black"></td>
      <td><input type = "button" value = "  / " onclick = "form1.answer.value += '/' "style="color:white;background-color: grey"></td></tr>
      
      <tr>
      <td><input type = "button" value = ". " onclick = "form1.answer.value += '.' "style="color:white;background-color: black"></td>
      <td><input type = "button" value = "0" onclick = "form1.answer.value += '0' "style="color:white;background-color: black"></td>
      <td><input type = "button" value = "=" onclick = "form1.answer.value = eval(form1.answer.value) " style="color:white;background-color: black"></td>
      <td><input type = "button" value = " x " onclick = "form1.answer.value += '*' "style="color:white;background-color: grey"></td>
    </tr>
	<!-- When we click on the '=' button, the onclick() shows the sum results on the calculator screen. -->
       
        </table>
</form>
</center>
</body>
</html>

