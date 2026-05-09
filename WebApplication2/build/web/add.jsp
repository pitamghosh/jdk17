<%-- 
    Document   : add
    Created on : 15 Mar 2026, 5:43:27 pm
    Author     : rajgh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Addition of two Numbers</title>
    </head>
    <body>
        <h2>Addition of two numbers</h2>
        <form method="post">
            Enter first number:
            <input type="text" name="num1"><br><br>
            Enter second number:
            <input type="text" name="num2"><br><br>

            <input type="submit" value="add">
        </form>
        <%
            if (request.getParameter("num1") != null && request.getParameter("num2") != null) {
                int a = Integer.parseInt(request.getParameter("num1"));
                int b = Integer.parseInt(request.getParameter("num2"));
                int sum = a + b;
                out.println("<h3>sum = " + sum + "</h3>");
            }
        %>
    </body>
</html>
