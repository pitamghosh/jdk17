

<%@ page contentType="text/html;charset=UTF-8" %>

<!-- JSTL Core Tag Library -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- JSTL Functions Tag Library -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<html>
<head>
    <title>JSTL Complete Example</title>
</head>
<body>



<h2>JSTL Core Tags + Functions Example</h2>

<!-- ================= c:if ================= -->
<h3>1. c:if</h3>
<c:if test="${marks % 2 == 0}">
    <p>Result: Even</p>
</c:if>
<c:if test="${marks % 2 == 1}">
    <p>Result: Odd</p>
</c:if>

<hr>



<!-- ================= c:forEach ================= -->
<c:set var="sum" value="0" />

<c:forEach var="i" begin="1" end="${marks}">
    <c:set var="sum" value="${sum + i}" />
    
</c:forEach>
        <p>Sum: ${sum}</p>


<!-- forEach with index -->
<c:forEach var="i" begin="1" end="${marks}">
    <p>Number: ${i}</p>
</c:forEach>

<hr>




</body>
</html>