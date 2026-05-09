<%@ page contentType="text/html;charset=UTF-8" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Marksheet</title>
</head>
<body>

<h2>Student Marksheet</h2>

<!-- If data exists -->
<c:if test="${not empty name}">
    <table border="1" cellpadding="5">
        <tr><th>Name</th><td><c:out value="${name}"/></td></tr>
        <tr><th>Roll No</th><td><c:out value="${roll}"/></td></tr>
        <tr><th>Advanced Java</th><td><c:out value="${adv}"/></td></tr>
        <tr><th>Computer Networking</th><td><c:out value="${cn}"/></td></tr>
        <tr><th>Unix</th><td><c:out value="${unix}"/></td></tr>
        <tr><th>Total</th><td><c:out value="${total}"/></td></tr>
        <tr><th>Average</th><td><c:out value="${avg}"/></td></tr>
    </table>
</c:if>

<!-- If no record found -->
<c:if test="${empty name}">
    <h3 style="color:red;">No Record Found!</h3>
</c:if>

<br>
<a href="index.html">Go Back</a>

</body>
</html>