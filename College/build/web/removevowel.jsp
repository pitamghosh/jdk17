<%-- 
    Document   : removevowel
    Created on : 25 Mar 2026, 8:45:51 pm
    Author     : rajgh
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<html>
    <head>
        <title>Result</title>
    </head>

    <body>

        <%
            String str = request.getParameter("str");
            String result = "";

            for (int i = 0; i < str.length(); i++) {
                char ch = str.charAt(i);

                if (!(ch == 'a' || ch == 'e' || ch == 'i' || ch == 'o' || ch == 'u'
                        || ch == 'A' || ch == 'E' || ch == 'I' || ch == 'O' || ch == 'U')) {
                    result = result + ch;
                }
            }

            out.println("<h2>String after removing vowels: " + result + "</h2>");
        %>

    </body>
</html>
