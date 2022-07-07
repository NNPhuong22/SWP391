/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.User;

import DAO.NotificationDAO;
import DAO.UserDAO;
import Enitity.Notification;
import Enitity.User;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author NNPhuong
 */
public class RegisterController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet registercontroller</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet registercontroller at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String repassword = request.getParameter("repassword");
        String status = request.getParameter("status");
        String date = request.getParameter("date");
        String email = request.getParameter("email");
        String avatar = request.getParameter("avatar");
        String phonenum = request.getParameter("phonenum");
        String gender = request.getParameter("gender");
        if (gender==null) {
            gender="female";
        }
        String script = request.getParameter("script");
        String address = request.getParameter("address");
        String visa = request.getParameter("visa");
        String paymethod = request.getParameter("paymethod");
        String position = request.getParameter("position");
        String sign = request.getParameter("sign");
        String company = request.getParameter("company");
        String school = request.getParameter("school");
        
        User u = new User(0, "1", username, password, status, firstname, lastname, date, gender, phonenum, avatar, email,
                script, address, visa, paymethod, position, sign, company, school);
        UserDAO dao = new UserDAO();
        NotificationDAO nd = new NotificationDAO();
        if(!dao.isExisted(u)){
            dao.register(u);
            nd.createNotification(new Notification("New user arrived", "Hello"));
           request.setAttribute("mess", "Create account successful!");
           request.getRequestDispatcher("/views/common/Login.jsp").forward(request, response); 
        }else{
            request.setAttribute("mess", "Username or email exist. Enter another username!");
           request.getRequestDispatcher("/views/common/register.jsp").forward(request, response); 
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
