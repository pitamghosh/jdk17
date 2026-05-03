package pitam;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class Add extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // 1. Get input from user (Request)
        int n = Integer.parseInt(request.getParameter("num"));

        // 2. Set response type
        response.setContentType("text/html");

        // 3. Send response
        PrintWriter out = response.getWriter();

        out.println("<html><body>");
        out.println("<h2>N number up to " + n + " terms:</h2>");

        int c=0;

        for (int i = 1; i < n; i++) {
             c = c+i ;
           
        }
        out.println(c);
        
        out.println("</body></html>");
    }
}