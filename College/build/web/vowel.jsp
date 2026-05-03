<%-- 
    Document   : vowel
    Created on : 25 Mar 2026, 8:33:23 pm
    Author     : rajgh
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<html>
    <head>
        <title>Vowel Result</title>
    </head>

    <body>

        <%
            String str = request.getParameter("str");
            int count = 0;

            for (int i = 0; i < str.length(); i++) {
                char ch = str.charAt(i);

                if (ch == 'a' || ch == 'e' || ch == 'i' || ch == 'o' || ch == 'u'
                        || ch == 'A' || ch == 'E' || ch == 'I' || ch == 'O' || ch == 'U') {
                    count++;
                }
            }

            out.println("<h2>Number of Vowels = " + count + "</h2>");
        %>

    </body>
</html>