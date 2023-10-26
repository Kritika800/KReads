<%-- 
    Document   : ReversingstringusingJS
    Created on : 25 Oct, 2023, 1:06:24 PM
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
        
        <script>
            var str=prompt("enter a string");
            var l=str.length,i,x=0,y=0;
            var b="";
            var ch,chr;
            var a=new Array();
            var c=new Array();
            for(i=0;i<l;i++)
            {
                 ch=str.charAt(i);
                if(ch!==' ')
                    b=b+ch;
                else
                {
                    a[x++]=b;
                    b="";
                }
            }
            for( i=0;i<x;i++)
            {
                var b1="";
                for(j=a[i].length-1;j>=0;j--)
                {
                     chr=a[i].charAt(j);
                    b1=b1+chr;
                    
                }
                c[y++]=b1;
            }
            for(var i=0;i<y;i++)
            {
                document.write(c[i]+" ");
            }
            
//           
        </script>
        
    </body>
</html>
