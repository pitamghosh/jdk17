<%-- 
    Document   : palindrome
    Created on : 28 Mar 2026, 8:07:02 pm
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
            String word = request.getParameter("word");
            String rev = "";

      
            for (int i = word.length() - 1; i >= 0; i--) {
                rev = rev + word.charAt(i);
            }

            if (word.equals(rev)) {
                out.println("<h2>" + word + " is a Palindrome</h2>");
            } else {
                out.println("<h2>" + word + " is NOT a Palindrome</h2>");
            }
        %>

    </body>
</html>