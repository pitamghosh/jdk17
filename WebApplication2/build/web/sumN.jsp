<%-- 
    Document   : sumN
    Created on : 15 Mar 2026, 8:33:17 pm
    Author     : rajgh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Sum of N Natural Number</title>
    </head>
    <body>
        <h2>Sum of N Natural Number</h2>
        <form method="post">
            Enter a number:
            <input type="text" name="num"><br><br>

            <input type="submit" value="Check">
        </form>
        <%
            if (request.getParameter("num") != null) {
                int a = Integer.parseInt(request.getParameter("num"));
                int sum = 0;
                for (int i = 1; i <= a ; i++) {
                    sum = sum + i;
                }
                out.println("<h3>Sum = " + sum + "</h3>");

            }
        %>
    </body>
</html>
