/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package pitam;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;

@WebServlet("/SalaryServlet")

public class SalaryServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        double basic = Double.parseDouble(request.getParameter("basic"));

        double hra = 0;
        double da = 0;

        if (basic <= 10000) {
            hra = basic * 0.20;
            da = basic * 0.80;
        } else if (basic <= 20000) {
            hra = basic * 0.25;
            da = basic * 0.90;
        } else {
            hra = basic * 0.30;
            da = basic * 0.95;
        }

        double gross = basic + hra + da;

        out.println("<html><body>");
        out.println("<h2>Salary Details</h2>");
        out.println("Basic Salary: " + basic + "<br>");
        out.println("HRA: " + hra + "<br>");
        out.println("DA: " + da + "<br>");
        out.println("<h3>Gross Salary: " + gross + "</h3>");
        out.println("</body></html>");
    }
}