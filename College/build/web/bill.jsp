<%-- 
    Document   : bill
    Created on : 25 Mar 2026, 8:17:21 pm
    Author     : rajgh
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<html>
    <head>
        <title>Bill Result</title>
    </head>

    <body>

        <%
            double units = Double.parseDouble(request.getParameter("units"));
            double bill = 0;

            if (units <= 50) {
                bill = units * 0.50;
            } else if (units <= 150) {
                bill = (50 * 0.50) + ((units - 50) * 0.75);
            } else if (units <= 250) {
                bill = (50 * 0.50) + (100 * 0.75) + ((units - 150) * 1.20);
            } else {
                bill = (50 * 0.50) + (100 * 0.75) + (100 * 1.20) + ((units - 250) * 1.50);
            }

            double surcharge = bill * 0.20;
            double total = bill + surcharge;

            out.println("<h2>Total Electricity Bill = " + total + "</h2>");
        %>

    </body>
</html>