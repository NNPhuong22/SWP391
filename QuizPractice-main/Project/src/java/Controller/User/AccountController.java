/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.User;

import DAO.AdminDAO;
import DAO.NotificationDAO;
import DAO.UserDAO;
import Enitity.LoginHistory;
import Enitity.Notification;
import Enitity.User;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author NNPhuong
 */
//@WebServlet(name = "accountcontroller", urlPatterns = {"/accountcontroller"})
public class AccountController extends HttpServlet {

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

            boolean rem = "on".equals(request.getParameter("checked"));

            //getting information from login.jsp
            String user = request.getParameter("username");
            String pass = request.getParameter("password");
            NotificationDAO nd = new NotificationDAO();
            if (user != null && pass != null) {

                UserDAO Dao = new UserDAO();

                //check account
                User u = Dao.getUser(new User(user, pass));
                if (u != null) {
                    request.getSession().setAttribute("user", u);

                    nd.createNotification(new Notification("" + u.getFirstname() + u.getLastname() + " tried to login", "Logined Success"));
                    //Create cookie for account and password
                    Cookie user_cooky, pass_cooky;

                    //if user click "remeber me"
                    if (rem) {
                        //set age for cookies
                        user_cooky = new Cookie("account", user);
                        pass_cooky = new Cookie("password", pass);
                        Cookie checkCookie = new Cookie("check", "check");
                        user_cooky.setMaxAge(120);
                        pass_cooky.setMaxAge(120);
                        response.addCookie(user_cooky);
                        response.addCookie(pass_cooky);
                    }
                    
                    
                    //Huy: Lưu dữ liệu đăng nhập cho người dùng
                    AdminDAO ad = new AdminDAO();
                   
                    ad.saveLoginHistory(new LoginHistory(u.getId(),request.getParameter("brower")));
                    
                    if (u.getRole().equalsIgnoreCase("admin")) {
                        response.sendRedirect("/QuizPractice/Admin"); //admin page
                    } else {
                        response.sendRedirect("/QuizPractice/home");//customer page
                    }

                } else {
                    //if the login false then redirect to login page
                    nd.createNotification(new Notification("" + user + " tried to login", "Logined Fail"));
                    request.setAttribute("mess", "Wrong user or password");
                    request.getRequestDispatcher("/views/common/Login.jsp").forward(request, response);
                }

            } else {
                request.setAttribute("mess", "Wrong user or password");
                request.getRequestDispatcher("/views/common/Login.jsp").forward(request, response);
            }
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
        processRequest(request, response);
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
