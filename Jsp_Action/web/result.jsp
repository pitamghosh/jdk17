<%-- 
    Document   : result
    Created on : 5 Apr 2026, 6:04:26?pm
    Author     : rajgh
--%>

<%@page import="example.Student"%>



<jsp:include page="header.jsp" />

<%
    Student s = (Student) request.getAttribute("studentData");
%>

<html>
<body>

<h2>Student Details</h2>

Name: <%= s.getName() %><br><br>
Age: <%= s.getAge() %><br><br>
Course: <%= s.getCourse() %><br><br>

</body>
</html>

<jsp:include page="footer.jsp" />
