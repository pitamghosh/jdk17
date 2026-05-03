<%-- 
    Document   : ascii
    Created on : 28 Mar 2026, 7:53:53 pm
    Author     : rajgh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ASCII Result</title>
    </head>
    <body>
        <%
            String str = request.getParameter("str");
            out.println("<h2>ASCII Values:</h2>");
            for (int i = 0; i < str.length(); i++) {
                char ch = str.charAt(i);
                int ascii = (int) ch;
                out.println(ch + " = " + ascii + "<br>");
            }
        %>

    </body>
</html>
