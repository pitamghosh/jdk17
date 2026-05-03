

package pitam;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/marks")
public class MarksServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int marks = Integer.parseInt(request.getParameter("marks"));

        // Setting attributes
        request.setAttribute("marks", marks);
       

        // Forward to JSP
        request.getRequestDispatcher("result.jsp").forward(request, response);
    }
}