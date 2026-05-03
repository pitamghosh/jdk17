<%-- 
    Document   : prime
    Created on : 15 Mar 2026, 10:04:09 pm
    Author     : rajgh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Prime Number</title>
    </head>
    <body>
        <h2>Prime Number</h2>
        <%
            int num = Integer.parseInt(request.getParameter("num"));
            int count = 0;
            for (int i = 1; i <= num; i++) {
                if (num % i == 0) {
                    count++;
                }
            }
            if (count == 2) {
                out.println("<h2>" + num + " is a Prime Number</h2>");
            } else {
                out.println("<h2>" + num + " is Not a Prime Number</h2>");
            }
        %>
    </body>
</html>
