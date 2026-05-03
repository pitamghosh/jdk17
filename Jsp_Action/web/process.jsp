

<jsp:useBean id="student" class="example.Student" />

<jsp:setProperty name="student" property="name" param="name" />
<jsp:setProperty name="student" property="age" param="age" />
<jsp:setProperty name="student" property="course" param="course" />

<%
    // Store bean in request scope
    request.setAttribute("studentData", student);
%>

<jsp:forward page="result.jsp" />