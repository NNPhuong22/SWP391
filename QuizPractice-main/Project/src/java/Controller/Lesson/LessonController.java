/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Lesson;

import DAO.LessonDAO;
import DAO.RegisterDAO;
import DAO.SubjectDAO;
import Enitity.Lesson;
import Enitity.Price;
import Enitity.Subject;
import Enitity.SubjectRegister;
import Enitity.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
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
@WebServlet(name = "LessonController", urlPatterns = {"/LessonController"})
public class LessonController extends HttpServlet {

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
            String subID = request.getParameter("subID");
            LessonDAO ld = new LessonDAO();
            HttpSession session = request.getSession();
            User u = (User) session.getAttribute("user");
            SubjectDAO sd = new SubjectDAO();
            RegisterDAO rtd = new RegisterDAO();
            if (subID == null || u == null) {
                response.sendRedirect("SubjectController");
            } else {
                Subject s = sd.getSubject(subID);
                request.setAttribute("subject", s);
                ArrayList topics = (ArrayList) ld.getTopic(" WHERE s_id=" + subID);
                request.setAttribute("topics", topics);
                List<Lesson> lessons = ld.getLesson(" and Subject.s_id=" + subID);
                if (u.getRole().equals("customer")) {
                    List<SubjectRegister> srs = sd.getSubjectsRegisterByUser("", u.getId());
                    if (srs.isEmpty()) {
                        response.sendRedirect("SubjectController");
                    }
                } else  {
                    List<Subject> srs = sd.getSubjects(" WHERE instructor_id=" + u.getId());
                    if (u.getRole().equals("expert")){
                    if (srs.isEmpty()) {
                        response.sendRedirect("SubjectController");
                    }}
                    request.setAttribute("lessons", lessons);
                    RequestDispatcher rd = getServletContext().getRequestDispatcher("/views/lesson/manageLesson.jsp");
                    rd.include(request, response);
                    return;
                }
                
                if (request.getParameter("topic") != null) {
                    lessons = ld.getLesson(" and Subject.s_id=" + subID + " and Lesson.topic_id=" + request.getParameter("topic"));
                }
                request.setAttribute("lessons", lessons);
                
                if (request.getParameter("action") != null) {
                    if (request.getParameter("action").equals("view")) {
                        Lesson ls = ld.getOnlyLesson(request.getParameter("l_id"));
                        request.setAttribute("lesson", ls);
                        RequestDispatcher rd = getServletContext().getRequestDispatcher("/views/lesson/lessonDetail.jsp");
                        rd.include(request, response);
                        return;
                    }
                }
                RequestDispatcher rd = getServletContext().getRequestDispatcher("/views/lesson/lesson.jsp");
                rd.include(request, response);
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
