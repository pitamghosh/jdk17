<%-- 
    Document   : fibo
    Created on : 15 Mar 2026, 11:15:37 pm
    Author     : rajgh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fibonacci Series</title>
    </head>
    <body>
        <h2>Fibonacci Series</h2>

<%
int n = Integer.parseInt(request.getParameter("num"));

int a = 0;
int b = 1;

out.println(a + " " + b + " ");

for(int i = 3; i <= n; i++)
{
    int c = a + b;
    out.println(c + " ");

    a = b;
    b = c;
}
%>
    </body>
</html>
