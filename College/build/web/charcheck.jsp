<%-- 
    Document   : charcheck
    Created on : 28 Mar 2026, 9:21:58 pm
    Author     : rajgh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String input = request.getParameter("ch");
            char ch = input.charAt(0);
            if ((ch >= 'A' && ch <= 'Z') || (ch >= 'a' && ch <= 'z')) {
                if (ch >= 'A' && ch <= 'Z') {

                    out.println("<h2>" + ch + " is an Uppercase Alphabet</h2>");
                } else {
                    out.println("<h2>" + ch + " is an Lowercase Alphabet</h2>");
                }
            } else if (ch >= '0' && ch <= '9') {
                out.println("<h2>" + ch + " is a Digit</h2>");
            } 
            else {
                out.println("<h2>" + ch + " is a Special Character</h2>");
            }
        %>
    </body>
</html>
