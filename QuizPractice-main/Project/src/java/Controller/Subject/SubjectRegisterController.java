/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Subject;

import DAO.NotificationDAO;
import DAO.SubjectDAO;
import Enitity.Notification;
import Enitity.SubjectType;
import Enitity.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author NNPhuong
 */
public class SubjectRegisterController extends HttpServlet {

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
            HttpSession s =request.getSession();
            User u =(User) s.getAttribute("user");
            if (request.getAttribute("type") == null) {
                SubjectDAO sd = new SubjectDAO();
                            NotificationDAO nd = new NotificationDAO();

                List cats = sd.getSubjectCat("");
                request.setAttribute("cats", cats);
                List types = sd.getSubjectType("");
                request.setAttribute("types", types);
                List subjects = sd.getSubjectsRegisterByUser("",u.getId());
                if(request.getParameter("subjectType")!=null){
                    subjects = sd.getSubjectsRegisterByUser(" and subject.typeID=" +request.getParameter("subjectType"),u.getId());
                }
 
                request.setAttribute("subjects", subjects);
                RequestDispatcher rd = getServletContext().getRequestDispatcher("/views/subject/MyRegistration.jsp");
                rd.include(request, response);
            }
        }
    }
public List<SubjectType> findType(List<SubjectType> types,int cat_id){
        List<SubjectType> tp = new ArrayList();
        for(SubjectType s: types){
            if(s.getCat_id()==cat_id){
                tp.add(s);
            }
        }
        return tp;
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
