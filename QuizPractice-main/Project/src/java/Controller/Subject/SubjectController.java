/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Subject;

import DAO.RegisterDAO;
import DAO.SubjectDAO;
import Enitity.Price;
import Enitity.Subject;
import Enitity.SubjectRegister;
import Enitity.SubjectType;
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
@WebServlet(name = "SubjectController", urlPatterns = {"/SubjectController"})
public class SubjectController extends HttpServlet {

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
            HttpSession session = request.getSession();
            String subID = (String) request.getAttribute("subID");
            User ur = (User) session.getAttribute("user");

            if (subID != null) {
                if (session.getAttribute("user") == null) {
                    RequestDispatcher rd = getServletContext().getRequestDispatcher("/views/subject/Login.jsp");
                    rd.include(request, response);
                }

            }
            if (request.getAttribute("type") == null) {
                SubjectDAO sd = new SubjectDAO();
                List cats = sd.getSubjectCat("");
                request.setAttribute("cats", cats);
                List types = sd.getSubjectType("");
                request.setAttribute("types", types);
                List<Subject> subjects = sd.getSubjects("");
                if (ur != null) {
                    if (!ur.getRole().equals("customer")) {
                        if (ur.getRole().equals("admin")) {

                            subjects = sd.getSubjects("");
                            session.setAttribute("subOfIns", subjects);

                        } else {
                            subjects = sd.getSubjects(" WHERE instructor_id=" + ur.getId());
                            session.setAttribute("subOfIns", subjects);

                        }
                        int totalEarning = 0;
                        RegisterDAO rgd = new RegisterDAO();
                        List<SubjectRegister> srs = new ArrayList();

                        for (Subject sut : subjects) {
                            Price p = rgd.getPrice(Integer.toString(sut.getS_id()));
                             
                            srs = sd.getSubjectsRegisterOfExpert(" and SubjectRegister.[price_id]=" + p.getPrice_id());
                            if(srs == null){
                                break;
                            }
                            for (SubjectRegister sgt : srs) {
                                totalEarning = totalEarning + sgt.getPrice();
                            }
                        }
                        session.setAttribute("totalPrice", totalEarning);
                        RequestDispatcher rd = getServletContext().getRequestDispatcher("/views/subject/manageSubject.jsp");
                        rd.include(request, response);

                        return;
                    }
                }
                if (request.getParameter("subjectType") != null) {

                    subjects = sd.getSubjects("WHERE typeID=" + request.getParameter("subjectType"));
                }
                request.setAttribute("subjects", subjects);
                RequestDispatcher rd = getServletContext().getRequestDispatcher("/views/subject/subject.jsp");
                rd.include(request, response);
            }
        }
    }

    public List<SubjectType> findType(List<SubjectType> types, int cat_id) {
        List<SubjectType> tp = new ArrayList();
        for (SubjectType s : types) {
            if (s.getCat_id() == cat_id) {
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
