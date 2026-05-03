<%@ page language="java" contentType="text/html" %>
<%@ include file="header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
    <body>

        <h2>Fibonacci series</h2>
        <%
            int num = 0;

            try {
                num = Integer.parseInt(request.getParameter("num"));
                request.setAttribute("count", num);
            } catch (Exception e) {
                out.println("<b>Invalid Input!</b>");
            }
        %>
        <br>
        Fibonacci up to <b><%= num%></b> terms: <br><br>

        <%
            int a = 0, b = 1, c;
            request.setAttribute("a", a);
            request.setAttribute("b", b);
        %>

        <c:if test="${count >= 1}">
            ${a}
        </c:if>

        <c:if test="${count >= 2}">
            ${b}
        </c:if>

        <c:forEach var="i" begin="3" end="${count}">
            <%
                c = a + b;
                out.println(" " + c);
                a = b;
                b = c;
            %>
        </c:forEach>
    </body>
</html>
<%@include file="footer.jsp" %>