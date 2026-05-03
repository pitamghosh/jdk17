import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

/**
 *
 * @author rajgh
 */
public class LifeCycle extends HttpServlet {

    static int count = 0;

    @Override
    public void init() throws ServletException {
        System.out.println("Servlet Initialization");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException,IOException {

        count++;
        
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        
        out.println("<html><body>");
        out.println("<h2>Servlet Life Cycle Demo</h2>");
        
        out.println("<p><b>Service Method Called </b>" + count + "time</p>");
        
        out.println("<form action='LifeCycle' method='get'>");
        out.println("<input type='Submit' value='Send request'>");
        out.println("</from>");
    }
    
    @Override
    public void destroy(){
        System.out.println("Servlet Destroy");
    }

}
