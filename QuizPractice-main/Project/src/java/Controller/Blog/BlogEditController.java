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
public class BlogEditController extends HttpServlet {

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
            BlogDAO bdao = new BlogDAO();
            NotificationDAO nd = new NotificationDAO();
            String id = request.getParameter("id");
            Blog oldblog = bdao.GetBlogById(Integer.parseInt(id));
            String title = request.getParameter("title");
            int author = oldblog.getAuthor();
            String type = request.getParameter("type");
            String content = request.getParameter("content");
            String description = request.getParameter("type");
            Blog newblog = new Blog(title, author, type, content, description);
            int modifier = 2; // sửa lại khi thêm session
            newblog.setModifier(modifier);
            if (request.getParameter("image") != null) {
                newblog.setImage(request.getParameter("image"));
            }
            bdao.UpdateBlog(oldblog, newblog);
            nd.createNotification(new Notification("" + oldblog.getTitle() + " has been edited ", "Edited Success"));

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
