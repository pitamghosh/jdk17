<%-- 
    Document   : spy
    Created on : 20 Mar 2026, 9:41:18 am
    Author     : rajgh
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<html>
    <head>
        <title>Spy Result</title>
    </head>

    <body>

        <%
            int num = Integer.parseInt(request.getParameter("num"));
            int sum = 0;
            int product = 1;

            int temp = num;

            while (temp > 0) {
                int digit = temp % 10;

                sum = sum + digit;
                product = product * digit;

                temp = temp / 10;
            }

            if (sum == product) {
                out.println("<h2>" + num + " is a Spy Number</h2>");
            } else {
                out.println("<h2>" + num + " is NOT a Spy Number</h2>");
            }
        %>

    </body>
</html>