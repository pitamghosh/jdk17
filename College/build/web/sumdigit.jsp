<%-- 
    Document   : sumdigit
    Created on : 25 Mar 2026, 8:27:09 pm
    Author     : rajgh
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<html>
    <head>
        <title>Result</title>
    </head>

    <body>

        <%
            int num = Integer.parseInt(request.getParameter("num"));
            int sum = 0;

            while (num > 0) {
                int digit = num % 10;
                sum = sum + digit;
                num = num / 10;
            }

            out.println("<h2>Sum of Digits = " + sum + "</h2>");
        %>

    </body>
</html>
