 /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Blog;

import DAO.BlogDAO;
import DAO.NotificationDAO;
import Enitity.Blog;
import Enitity.Notification;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author HP
 */
public class BlogAddController extends HttpServlet {

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
            NotificationDAO nd = new NotificationDAO();
            /* TODO output your page here. You may use following sample code. */
            String title = request.getParameter("title");
            int author = 1; // fix it when applied session
            // int typeId   // fix it when combine with subjectType
            String type = request.getParameter("type");
            String content = request.getParameter("content");
            String description = request.getParameter("type");
            Blog b = new Blog(title, author, type, content, description);
            if (request.getParameter("image") != null) {
                b.setImage(request.getParameter("image"));
            }
            // add them subject type
            BlogDAO bdao = new BlogDAO();
            bdao.AddBlog(b);
            nd.createNotification(new Notification("" + b.getTitle() + " has been addad ", "Added Success"));
            ArrayList<Blog> bl = bdao.GetBlogs(0);
            request.setAttribute("bl", bl);
            ArrayList<String> cl = bdao.GetBlogCategory();
            request.setAttribute("cl", cl);
            request.getRequestDispatcher("/views/blog/blog_manager.jsp").forward(request, response);
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
