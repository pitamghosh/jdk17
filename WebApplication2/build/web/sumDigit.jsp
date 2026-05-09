<%-- 
    Document   : sumDigit
    Created on : 15 Mar 2026, 8:41:07 pm
    Author     : rajgh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Sum of digit</title>
    </head>
    <body>
        <h2>Sum of digit</h2>
        <form method="post">
            Enter a number:
            <input type="text" name="num"><br><br>

            <input type="submit" value="Check">
        </form>
        <%
            if (request.getParameter("num") != null) {
                int a = Integer.parseInt(request.getParameter("num"));
                int sum = 0;
                while (a > 0) {
                    int d = a % 10;
                    sum = sum + d;
                    a = a / 10;

                }
                out.println("<h3>Sum = " + sum + "</h3>");

            }
        %>
    </body>
</html>
