<%-- 
    Document   : reverseWord
    Created on : 5 Apr 2026, 7:17:04 pm
    Author     : rajgh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Result</title>
    </head>
    <body>
        <%
            String str = request.getParameter("str");
            String words[] = str.split(" ");
            String result = "";

            for (int i = 0; i < words.length; i++) {
                String word = words[i];
                String rev = "";

                for (int j = word.length() - 1; j >= 0; j--) {  
                    rev = rev + word.charAt(j);
                }

                result = result + rev + " "; 
            }

            out.println("<h2>After Reverse: " + result + "</h2>");
        %>
    </body>
</html>
