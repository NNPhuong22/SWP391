/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Admin.Quizlist;

import DAO.ExamDAO;
import DAO.NotificationDAO;
import DAO.SubjectDAO;
import Enitity.Exam;
import Enitity.Notification;
import Enitity.Subject;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author PV
 */
public class ExamManageController extends HttpServlet {

    protected void AddExam(int exam_id, int u_id, int s_id, int number_of_question, int pass_rate, int duration, String level) {
        //get current date
        Date date = new Date();
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
        String crDate = formatter.format(date);
        //add new question into database
        Exam e = new Exam(exam_id, u_id, s_id, number_of_question, 1, pass_rate, duration, crDate, level);
        ExamDAO edao = new ExamDAO();
        edao.addExam(e);
    }

    protected void EditExam(int exam_id, int u_id, int s_id, int number_of_question, int status, int pass_rate, int duration, String level) {
        //get current date
        Date date = new Date();
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
        String crDate = formatter.format(date);
        //add new question into database
        Exam e = new Exam(exam_id, u_id, s_id, number_of_question, status, pass_rate, duration, crDate, level);
        ExamDAO edao = new ExamDAO();
        edao.editExam(e);
    }

    protected void ChangeExamStatus(String type, int examId) {
        ExamDAO edao = new ExamDAO();
        edao.changeExamStatus(examId, type);
    }

    protected void DeleteExam(int examId) {
        ExamDAO edao = new ExamDAO();
        edao.deleteExam(examId);
    }
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String role = request.getParameter("role");
            String type = request.getParameter("type");
                        NotificationDAO nd = new NotificationDAO();

            int examId = Integer.parseInt(request.getParameter("examId"));
            switch (type) {
                case "delete":
                    DeleteExam(examId);
                    break;
                case "deactive":
                case "active":
                    ChangeExamStatus(type, examId);
                    break;
                default:
                    int uId = Integer.parseInt(request.getParameter("uId"));
                    int sId = Integer.parseInt(request.getParameter("sId"));
                    int numberOfQuestion = Integer.parseInt(request.getParameter("numberOfQuestion"));
                    int passrate = Integer.parseInt(request.getParameter("passrate"));
                    int duration = Integer.parseInt(request.getParameter("duration"));
                    String level = request.getParameter("level");
                    if (type.equals("add")) { // Add question
                        AddExam(examId, uId, sId, numberOfQuestion, passrate, duration, level);
                    }   
                    if (type.equals("edit")) { // Edit question
                        int status = Integer.parseInt(request.getParameter("status"));
                        EditExam(examId, uId, sId, numberOfQuestion, status, passrate, duration, level);
                    }   
                    break;
            }
            ExamDAO edao = new ExamDAO();
            SubjectDAO sdao = new SubjectDAO();
            ArrayList<Exam> examTotal = edao.getAllExam();
            ArrayList<Subject> sjtTotal = sdao.getSimpleSubjects("");
            request.setAttribute("examList", examTotal);
            request.setAttribute("sjtList", sjtTotal);
//            if (role.equals("admin")) {
//                
//            } else {
//            }
            request.getRequestDispatcher("Admin").forward(request, response);
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
