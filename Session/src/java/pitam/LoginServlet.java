package pitam;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class LoginServlet extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String user = request.getParameter("username");

        // Create session
        HttpSession session = request.getSession();
        session.setAttribute("user", user);

        out.println("<h2>Welcome " + user + "</h2>");
        out.println("<a href='ProfileServlet'>Go to Profile</a>");
    }
}