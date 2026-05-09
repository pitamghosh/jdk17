<%-- 
    Document   : oddEven
    Created on : 15 Mar 2026, 6:09:59 pm
    Author     : rajgh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Check Odd or Even</title>
    </head>
    <body>
        <h2>ODD or EVEN</h2>
        <form method="post">
            Enter a number:
            <input type="text" name="num"><br><br>

            <input type="submit" value="Check">
        </form>
        <%
            if (request.getParameter("num") != null) {
                int a = Integer.parseInt(request.getParameter("num"));

                if (a % 2 == 0) {
                    out.println("Even Number");
                } else {
                    out.println("Odd Number");
                }

            }
        %>
    </body>
</html>
