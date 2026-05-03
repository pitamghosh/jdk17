

<%@ page language="java" contentType="text/html" %>
<%@ include file="header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<body>

<h2>Multiplication Table</h2>

<%
int num = 0;

try {
    num = Integer.parseInt(request.getParameter("num"));
    request.setAttribute("number", num);
} catch(Exception e) {
    out.println("<b>Invalid Input!</b>");
}
%>

<br>
Table of <b><%= num %></b> <br><br>

<!-- Correct JSTL Loop -->
<c:forEach var="i" begin="1" end="10">
    ${number} x ${i} = ${number * i} <br>
</c:forEach>

</body>
</html>

<%@ include file="footer.jsp" %>