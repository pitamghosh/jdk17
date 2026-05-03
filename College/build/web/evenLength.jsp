<%-- 
    Document   : evenLength
    Created on : 3 Apr 2026, 10:29:48 am
    Author     : rajgh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <title>Result</title>
    </head>
    <body>
        <%
            String str = request.getParameter("str");
            String word[] = str.split(" ");
            out.println("<h2>Even Length Word</h2>");
            for (int i = 0; i < word.length; i++) {
                if (word[i].length() % 2 == 0) {
                    out.println(word[i] + "<br>");
                }
            }
        %>
    </body>
</html>
