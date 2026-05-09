<%-- 
    Document   : Calculator
    Created on : 15 Mar 2026, 6:21:02 pm
    Author     : rajgh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Simple Calculator</title>
    </head>
    <body>
        <h2>Simple Calculator </h2>
        <form method="post">
            Enter first number:
            <input type="text" name="num1"><br><br>
            Enter second number:
            <input type="text" name="num2"><br><br>
            <select name="op">
                <option value="+">Addition</option>
                <option value="-">Subtraction</option>
                <option value="*">Multiplication</option>
                <option value="/">Division</option>
            </select><br><br>
            <input type="submit" value="Submit">
        </form>
           <%
            if (request.getParameter("num1") != null && request.getParameter("num2") != null) {
                int a = Integer.parseInt(request.getParameter("num1"));
                int b = Integer.parseInt(request.getParameter("num2"));
                String op = request.getParameter("op");
                    int result =0;
                    switch(op)
                    {
                        case "+":
                            result=a+b;
                            break;
                            
                            case "-":
                            result=a-b;
                            break;
                            
                            case "*":
                            result=a*b;
                            break;
                            
                            case "/":
                            result=a/b;
                            break;
                    }
                out.println("Result ="+result);
            }
        %>
    </body>
</html>
