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

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author NNPhuong
 */
public class EditProfileController extends HttpServlet {

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

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the
    // + sign on the left to edit the code.">
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
        UserDAO dao = new UserDAO();
        String id = request.getParameter("id");
        String Fname = request.getParameter("fname");
        String Lname = request.getParameter("lname");
        String birth = request.getParameter("birth");
        String gender = request.getParameter("gender");
        String avatar = request.getParameter("avatar");
        String descrip = request.getParameter("description");
        String phonenum = request.getParameter("phonenum");
        String address = request.getParameter("address");
        String visa = request.getParameter("visa");
        String paymethod = request.getParameter("paymethod");
        String position = request.getParameter("position");
        String sign = request.getParameter("sign");
        String company = request.getParameter("company");
        String school = request.getParameter("school");
        String pass = "";
        HttpSession s = request.getSession();
        User user = (User) s.getAttribute("user");

        int uid = 0;
         
        if (id != null) {
            uid = Integer.parseInt(id);
            pass = request.getParameter("password");
        }else{
            uid = user.getId();
            pass = user.getPass();
        }
        if (uid > 0) {
            NotificationDAO nd = new NotificationDAO();
            User newUser = new User(uid, pass,Fname, Lname, birth, gender, phonenum, avatar, descrip, address, visa,
                    paymethod, position, sign, company, school);
            dao.updateProfile(newUser);
            System.out.println("URL:" +  request.getHeader("referer"));
            nd.createNotification(new Notification("" + user.getFirstname() + user.getLastname() + " profile is edited", "Edited Success"));
            request.setAttribute("mess", "Update Information successfull!");
        }
         if (user != null) {
            s.setAttribute("user", dao.getUser(user));
        }
        request.getRequestDispatcher("/views/profile/profile.jsp").forward(request, response);
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
