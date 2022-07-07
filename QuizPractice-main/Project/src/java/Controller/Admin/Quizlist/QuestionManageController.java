/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Admin.Quizlist;

import DAO.QuizzDAO;
import DAO.SubjectDAO;
import Enitity.Lesson;
import Enitity.Question;
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
public class QuestionManageController extends HttpServlet {

    protected void AddQuestion(String id, String lessonId, String content, String answer, String level, String des, String img, ArrayList<String> otList) {
        //get current date
        Date date = new Date();
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
        String crDate = formatter.format(date);
        //add new question into database
        Question q = new Question(content, level, answer, lessonId, img, des, id, crDate);
        QuizzDAO qdao = new QuizzDAO();
        qdao.addQuestion(q);
        for (String olist : otList) {
            qdao.addQuestionChoices(id, olist, crDate);
        }
    }

    protected void EditQuestion(String id, String lessonId, String content, String answer, String level, String des, String img, ArrayList<String> otList) {
        //get current date
        Date date = new Date();
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
        String crDate = formatter.format(date);
        //add new question into database
        Question q = new Question(content, level, answer, lessonId, img, des, id, crDate);
        QuizzDAO qdao = new QuizzDAO();
        qdao.editQuestion(q);
        qdao.deleteQuestionChoices(id);
        for (String olist : otList) {
            qdao.addQuestionChoices(id, olist, crDate);
        }
    }

    protected void DeleteQuestion(String id) {
        QuizzDAO qdao = new QuizzDAO();
        //delte question choices
        qdao.deleteQuestionChoices(id);
        //delete question
        qdao.deleteQuestion(id);
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String type = request.getParameter("type");
            String id = request.getParameter("id");
            if (type.equals("delete")) {
                DeleteQuestion(id);
            } else {
                String lessonId = request.getParameter("lessonId");
                String content = request.getParameter("content");
                String answer = request.getParameter("answer");
                String level = request.getParameter("level");
                String des = request.getParameter("description");
                String img = request.getParameter("image");
                ArrayList<String> otList = new ArrayList<>();
                if (type.equals("add")) { // Add question
                    //create question choices
                    otList.add(answer);
                    otList.add(request.getParameter("ot1"));
                    otList.add(request.getParameter("ot2"));
                    otList.add(request.getParameter("ot3"));
                    AddQuestion(id, lessonId, content, answer, level, des, img, otList);
                }
                if (type.equals("edit")) { // Edit question
                    //create question choices
                    ArrayList<String> otDemoList = new ArrayList<>();
                    otDemoList.add(answer);
                    otDemoList.add(request.getParameter("ot0"));
                    otDemoList.add(request.getParameter("ot1"));
                    otDemoList.add(request.getParameter("ot2"));
                    otDemoList.add(request.getParameter("ot3"));
                    for (String opt : otDemoList) {
                        if (opt != null) {
                            otList.add(opt);
                        }
                    }
                    EditQuestion(id, lessonId, content, answer, level, des, img, otList);
                }
            }
            QuizzDAO ques = new QuizzDAO();
            SubjectDAO sjt = new SubjectDAO();
            ArrayList<Question> quesList = ques.getAllQues();
            ArrayList<Lesson> lessonList = sjt.getSimpleLessons("");
            request.setAttribute("quesList", quesList);
            request.setAttribute("lessonList", lessonList);
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
