<%-- 
    Document   : armstrong
    Created on : 20 Mar 2026, 8:55:51 am
    Author     : rajgh
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<html>
    <head>
        <title>Armstrong Result</title>
    </head>

    <body>

        <%
            int num = Integer.parseInt(request.getParameter("num"));
            int original = num;
            int sum = 0;
            int digits = 0;

        // Count number of digits
            int temp = num;
            while (temp > 0) {
                digits++;
                temp = temp / 10;
            }

        // Calculate Armstrong sum
            temp = num;
            while (temp > 0) {
                int digit = temp % 10;
                int power = 1;

                for (int i = 1; i <= digits; i++) {
                    power = power * digit;
                }

                sum = sum + power;
                temp = temp / 10;
            }

        // Check condition
            if (sum == original) {
                out.println("<h2>" + original + " is an Armstrong Number</h2>");
            } else {
                out.println("<h2>" + original + " is NOT an Armstrong Number</h2>");
            }
        %>

    </body>
</html>
