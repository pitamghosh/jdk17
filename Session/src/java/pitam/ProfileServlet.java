package pitam;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class ProfileServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        HttpSession session = request.getSession(false);

        if (session != null) {
            String user = (String) session.getAttribute("user");
            out.println("<h2>Hello " + user + ", this is your profile page.</h2>");
            out.println("<a href='Logoutservlet'>Logout</a>");
        } else {
            out.println("<h2>Please login first!</h2>");
        }
    }
}