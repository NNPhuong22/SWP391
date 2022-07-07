/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Lesson;

import DAO.LessonDAO;
import Enitity.Lesson;
import Enitity.Subject;
import Enitity.Topic;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author hieu phan
 */
@WebServlet(name = "manageLesson", urlPatterns = {"/manageLesson"})
public class manageLesson extends HttpServlet {

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
        HttpSession session = request.getSession();
        Subject s = (Subject) session.getAttribute("subject");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            Lesson ls = new Lesson();
            LessonDAO ld = new LessonDAO();
            String action = request.getParameter("action");
            if (action != null) {
                if (action.equals("edit")) {
                    ls.setL_id(Integer.parseInt(request.getParameter("lessonID")));
                    ls.setName(request.getParameter("lessonName"));
                    ls.setTopic_id(Integer.parseInt(request.getParameter("lessonTopic")));
                    ls.setDescription(request.getParameter("lessonDes"));
                    ls.setContent(request.getParameter("lessonContent"));
                    ls.setVideo(request.getParameter("lessonVideo"));
                    ls.setImage(request.getParameter("lessonImage"));
                    ls.setReferences(request.getParameter("lessonRef"));
                    ls.setDocuments(request.getParameter("lessonDocuments"));
                    int check = ld.updateLesson(ls);
                    response.sendRedirect("LessonController?subID=" + s.getS_id());
                } else if (action.equals("delete")) {
                    ls.setL_id(Integer.parseInt(request.getParameter("lessonID")));
                    int check = ld.updateLesson(ls);
                    response.sendRedirect("LessonController?subID=" + s.getS_id());
                } else if (action.equals("addTopic")) {
                    Topic t = new Topic();
                    t.setName(request.getParameter("topicName"));
                    t.setS_id(s.getS_id());
                    int check = ld.addTopic(t);
                    response.sendRedirect("LessonController?subID=" + s.getS_id());
                } else if (action.equals("addLesson")) {
                    ls.setName(request.getParameter("addLessonName"));
                    ls.setTopic_id(Integer.parseInt(request.getParameter("addLessonTopic")));
                    ls.setDescription(request.getParameter("addLessonDes"));
                    ls.setContent(request.getParameter("addLessonContent"));
                    ls.setVideo(request.getParameter("addLessonVideo"));
                    ls.setImage(request.getParameter("addLessonImage"));
                    ls.setReferences(request.getParameter("addLessonRef"));
                    ls.setDocuments(request.getParameter("addLessonDocuments"));
                    ls.setNo(Integer.parseInt(request.getParameter("addNo")));
                    int check = ld.addLesson(ls);
                    response.sendRedirect("LessonController?subID=" + s.getS_id());
                }
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
