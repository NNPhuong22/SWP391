 /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Quiz;

import DAO.QuizzDAO;
import DAO.SubjectDAO;
import Enitity.Quizz;
import Enitity.SubjectRegister;
import Enitity.Topic;
import Enitity.User;
import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author PV
 */
public class PracticeListController extends HttpServlet {

    protected void newPracticeSelection(HttpServletRequest request, HttpServletResponse response, int u_id) throws IOException {
        try (PrintWriter out = response.getWriter()) {
            SubjectDAO sd = new SubjectDAO();
            String op = request.getParameter("operation");
            Gson json = new Gson();
            if (op != null) {
                if (op.equals("subject")) {
                    List<SubjectRegister> slist = sd.getSubjectsRegisterByUser("", u_id);
                    String subjectList = json.toJson(slist);
                    response.setContentType("text/html");
                    response.getWriter().write(subjectList);
                }
                if (op.equals("topic")) {
                    int s_id = Integer.parseInt(request.getParameter("s_id"));
                    System.out.println(s_id);
                    List<Topic> slist = sd.getTopicBySubejectId(s_id);
                    String countryList = json.toJson(slist);
                    response.setContentType("text/html");
                    response.getWriter().write(countryList);
                }
            }
        }
    }

//    protected void getQuizzList(HttpServletRequest request, HttpServletResponse response, int u_id) throws IOException {
//        Gson json = new Gson();
//        QuizzDAO qdao = new QuizzDAO();
//        List<Quizz> quizzTotal = qdao.getQuizzByUserId(u_id);
//        String subjectList = json.toJson(quizzTotal);
//        response.setContentType("text/html");
//        response.getWriter().write(subjectList);
//    }
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            // Variable
            HttpSession session = request.getSession();
            User user = (User) session.getAttribute("user");
            if (user != null) {// Check user logined
                int u_id = user.getId();
                QuizzDAO qdao = new QuizzDAO();
                List<Quizz> quizzTotal = qdao.getQuizzByUserId(u_id);
                
                request.setAttribute("quizzTotal", quizzTotal);
                
                request.getRequestDispatcher("/views/practice/practicesList.jsp").forward(request, response);

//                int u_id = user.getId(); // Check user logined
//                SubjectDAO sd = new SubjectDAO();
//                String op = request.getParameter("operation");
//                Gson json = new Gson();
//                if (op.equals("subject")) {
//                    List<SubjectRegister> slist = sd.getSubjectsRegister("", u_id);
//                    System.out.println(slist.get(2).getPrice());
//                    String subjectList = json.toJson(slist);
//                    response.setContentType("text/html");
//                    response.getWriter().write(subjectList);
//                }
//
//                if (op.equals("topic")) {
//                    int s_id = Integer.parseInt(request.getParameter("s_id"));
//                    System.out.println(s_id);
//                    List<Topic> slist = sd.getTopicBySubejectId(s_id);
//                    String countryList = json.toJson(slist);
//                    response.setContentType("text/html");
//                    response.getWriter().write(countryList);
//                }
            } else {
                response.sendRedirect("/QuizPractice/views/common/Login.jsp");
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
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        if (user != null) {
            int u_id = user.getId();
            newPracticeSelection(request, response, u_id);
        } else {
            response.sendRedirect("/QuizPractice/views/common/Login.jsp");
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
