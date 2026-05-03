<%-- 
    Document   : home
    Created on : 5 Apr 2026, 5:50:48?pm
    Author     : rajgh
--%>


<html>
    <head>
       
    </head>
    <body>
        <jsp:include page="header.jsp" />
        <form action ="process.jsp" method ="post">
            Name:<input type="text" name="name"><br><br>
            Age:<input type="text" name="age"><br><br> 
            Course: <input type="text" name="course"><br><br>
            
            <input type="Submit" value="Submit">
        </form>
        <jsp:include page="footer.jsp" />
    </body>
</html>
