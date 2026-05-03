<%-- 
    Document   : odd
    Created on : 15 Mar 2026, 9:30:55 pm
    Author     : rajgh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Odd Number</title>
    </head>
    <body>
        <h2>Odd Number</h2>
        <%
            int start = Integer.parseInt(request.getParameter("start"));
            int end = Integer.parseInt(request.getParameter("end"));
            for (int i = start; i <= end; i++) {
                if (i % 2 != 0) {
                    out.println(i + "<br>");
                }
            }
        %>
    </body>
</html>
