main.jsp

<%@ page language="java" contentType="text/html" %>             <!-- Page Directive -->
<%@ include file="header.jsp" %>                                <!-- Include Directive -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <!-- Taglib Directive -->

<html>
<body>

<h2>Factorial Result</h2>

<%
int num = Integer.parseInt(request.getParameter("num"));
int fact = 1;

for(int i = 1; i <= num; i++) {
    fact = fact * i;
}
%>

Number: <b><%= num %></b> <br><br>

Factorial: <b><%= fact %></b> <br><br>

<!-- Using Taglib (just for display loop) -->
<c:forEach var="i" begin="1" end="${param.num}">
    Step ${i} <br>
</c:forEach>

</body>
</html>

<%@ include file="footer.jsp" %>   <!-- Include Directive -->