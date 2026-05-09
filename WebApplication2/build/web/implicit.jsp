<%-- 
    Document   : implicit
    Created on : 22 Mar 2026, 5:28:09 pm
    Author     : rajgh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<body>

<h2>Result Page (Using JSP Implicit Objects)</h2>

<%
    // request ? get input
    String n1 = request.getParameter("num1");
    String n2 = request.getParameter("num2");
    String name = request.getParameter("username");

    int a = Integer.parseInt(n1);
    int b = Integer.parseInt(n2);

    int sum = a + b;

    // response ? set content type
    response.setContentType("text/html");

    // out ? display output
    out.println("<b>Hello " + name + "</b><br>");
    out.println("Sum = " + sum + "<br><br>");

    // session ? store user data
    session.setAttribute("user", name);
    out.println("Session User: " + session.getAttribute("user") + "<br><br>");

    // application ? global data
    application.setAttribute("appName", "JSP Demo App");
    out.println("Application Name: " + application.getAttribute("appName") + "<br><br>");

    // config ? servlet info
    out.println("Servlet Name: " + config.getServletName() + "<br><br>");

    // pageContext ? store/retrieve data
    pageContext.setAttribute("msg", "Using PageContext Object");
    out.println(pageContext.getAttribute("msg") + "<br><br>");

    // page ? current object
    out.println("Page Object: " + page.toString() + "<br><br>");
%>

<%
    // exception ? error handling
    if(exception != null) {
        out.println("Exception: " + exception.getMessage());
    } else {
        out.println("No Exception Occurred");
    }
%>

</body>
</html>