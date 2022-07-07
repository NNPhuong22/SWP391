/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Quiz;

import DAO.NotificationDAO;
import DAO.QuizzDAO;
import Enitity.Notification;
import Enitity.Question;
import Enitity.Quizz;
import Enitity.QuizzTaken;
import Enitity.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author TrungHuy
 */
public class GradeController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    QuizzDAO qd = new QuizzDAO();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            NotificationDAO nd = new NotificationDAO();
            // khoi tao 1 ban tra ve cho quiz
            HttpSession session = request.getSession();
            User u = (User) session.getAttribute("user");

            if (u != null) {

                HashMap<Question, String> result = new HashMap<>();
                HashMap<String, Question> quizz = QuizzController.QuestionList;
                int right = 0;

                for (Map.Entry me : quizz.entrySet()) {
                    String key = me.getKey().toString();
                    String ans = request.getParameter(key);
                    Question item = (Question) me.getValue();
                    if (ans != null && ans.equals(item.getAnswer())) {
                        //tinh so cau dung
                        right++;
                    }
                    // danh sách câu hỏi kèm câu trả lời của user
                    result.put(item, ans);
                }

                //khoi tao quizz de luu ve database
                float score = right > 0 ? 10 / quizz.size() * right : 0;
                int condition = score > 4 ? 1 : 0;
                String requiredTime = "" + quizz.size() * 108 / 60;
                String doTime = request.getParameter("doTime");
                int uid = u.getId();
                int tid = Integer.parseInt(request.getParameter("topicId"));
                //luu quizz ve database
                qd.saveQuizz(new Quizz(uid, tid, condition, requiredTime, doTime, score));
                //luu quizz detail
                // lấy id gần nhất trong danh sách quizz để lưu chi tiết
                int currentQuizzId = qd.getTakenQuizzes("").get(qd.getTakenQuizzes("").size() - 1).getQ_id();
                for (Map.Entry me : result.entrySet()) {
                    Question key = (Question) me.getKey();
                    String ans = (String) me.getValue();
                    QuizzTaken qt = new QuizzTaken(Integer.parseInt(key.getId()), currentQuizzId, ans, 0);
                     if(key.getAnswer().equals(ans)){
                         qt.setStatus(1);
                     }
                    // lưu về từng chi tiết của mỗi câu trả lời
                    qd.saveQuizzDetail(qt);
                }
                nd.createNotification(new Notification("" + u.getFirstname() + u.getLastname() + " has finished a quizz", "Score: " + score));

                response.sendRedirect("/QuizPractice/practicelist");
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
