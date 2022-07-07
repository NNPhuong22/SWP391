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
import javax.servlet.http.HttpSession;


/**
 *
 * @author NNPhuong
 */
public class ChangePassController extends HttpServlet {

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
        NotificationDAO nd = new NotificationDAO();
        UserDAO dao = new UserDAO();
        String oldpass = request.getParameter("oldpassword");
        String newpass = request.getParameter("password");
        String username = request.getParameter("username");
        int id = Integer.parseInt(request.getParameter("id"));
        User u = dao.getUser(new User(username, oldpass));
        if (u != null) {
            request.setAttribute("mess", "Password changed!");
            dao.changePass(newpass, id);
             
            nd.createNotification(new Notification("" + u.getFirstname() + u.getLastname() + " tried to change password", "Success"));
            request.getRequestDispatcher("/views/profile/profile.jsp").forward(request, response);
        } else {
            nd.createNotification(new Notification("" + u.getFirstname() + u.getLastname() + "tried to change password", "Fail"));
            request.setAttribute("mess", "Current password not correct!");
            request.getRequestDispatcher("/views/common/changepass.jsp").forward(request, response);
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
