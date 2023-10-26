<%-- 
    Document   : sortingarrayindescusingJS
    Created on : 25 Oct, 2023, 1:31:33 PM
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
            var a=prompt("Enter the list of integers separated by spaces");
            var a=a.split(" ").map(Number);
            
            var i,j,t;
            for(i=0;i<a.length-1;i++)
            {
                for(j=i+1;j<a.length;j++)
                {
                    if(a[i]<a[j])
                    {
                        t=a[i];
                        a[i]=a[j];
                        a[j]=t;
                        
                        
                    }
                    
                }
            }
            document.writeln("the array in descending order is");
            for(i=0;i<a.length;i++)
            {
                document.write(a[i]+" ");
            }
        </script>
    
    </body>
</html>
