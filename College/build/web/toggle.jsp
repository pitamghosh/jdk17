<%-- 
    Document   : toggle
    Created on : 3 Apr 2026, 10:03:56 am
    Author     : rajgh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Toggle Case</title>
    </head>
    <body>
        <%
            String str = request.getParameter("str");
            String result = "";
            
            for (int i = 0; i < str.length(); i++) {
                char ch = str.charAt(i);
                
                if (ch >= 'A' && ch <= 'Z') {
                    result = result + (char) (ch + 32);
                } else if (ch >= 'a' && ch <= 'z') {
                    result = result + (char) (ch - 32);
                } else {
                    result = result + ch;
                }
            }
            out.print("<h2>After Toggle: " + result + "</h2>");
        %>

    </body>
</html>
