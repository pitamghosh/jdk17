package pitam;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

  

    public class Salary extends HttpServlet {

        protected void doPost(HttpServletRequest request, HttpServletResponse response)
                throws ServletException, IOException {
                
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();

            int eid = Integer.parseInt(request.getParameter("eid"));
            String ename = request.getParameter("ename");
            double basic = Double.parseDouble(request.getParameter("basic"));

            double ta = basic * 0.45;
            double da = basic * 0.50;
            double hra = basic * 0.30;
            double pf = basic * 0.125;
            double esi = basic * 0.18;

            double gross = basic + ta + da + hra + pf + esi;
            double net = gross - pf - esi;

            out.println("<html><body>");
            out.println("<h2>Salary Sheet</h2>");
            out.println("Employee Name: " + ename + "<br>");
            out.println("Employee ID: " + eid + "<br>");
            out.println("Gross Salary: " + gross + "<br>");
            out.println("Net Salary: " + net + "<br>");
            out.println("</body></html>");
        }
    }

   