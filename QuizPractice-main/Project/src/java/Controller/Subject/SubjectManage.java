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
import Enitity.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
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
@WebServlet(name = "subjectManage", urlPatterns = {"/subjectManage"})
public class SubjectManage extends HttpServlet {

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
            ArrayList<Subject> subjects = new ArrayList<>();
            String action = request.getParameter("action");
            HttpSession session = request.getSession();
            User u = (User) session.getAttribute("user");
            SubjectDAO sd = new SubjectDAO();
            if (action != null) {
                if (action.equals("edit")) {
                    Subject updateSubject = new Subject();
                    updateSubject.setName(request.getParameter("subjectName"));
                    updateSubject.setType_id(Integer.parseInt(request.getParameter("subjectType")));
                    updateSubject.setStatus(1);
                    updateSubject.setDescription(request.getParameter("subjectDes"));
                    updateSubject.setImage(request.getParameter("subjectImage"));
                    updateSubject.setOrganization(request.getParameter("subjectOrg"));
                    updateSubject.setLogo(request.getParameter("subjectLogo"));
                    updateSubject.setS_id(Integer.parseInt(request.getParameter("subjectID")));
                    Price newPrice = new Price();
                    newPrice.setPrice_id(Integer.parseInt(request.getParameter("priceID")));
                    newPrice.setPrice(Integer.parseInt(request.getParameter("subjectPrice")));
                    RegisterDAO rgd = new RegisterDAO();
                    int check1 = rgd.updatePrice(newPrice);
                    int check = sd.updateSubject(updateSubject);
                    response.sendRedirect("SubjectController");

                    return;
                } else if (action.equals("delete")) {
                    Subject updateSubject = new Subject();
                    updateSubject.setStatus(0);
                    updateSubject.setS_id(Integer.parseInt(request.getParameter("subID")));
                    int check = sd.updateSubject(updateSubject);
                    response.sendRedirect("SubjectController");
                } else if (action.equals("add")) {
                    Subject newSubject = new Subject();
                    newSubject.setName(request.getParameter("addSubjectName"));
                    newSubject.setType_id(Integer.parseInt(request.getParameter("addSubjectType")));
                    newSubject.setInstructor_id(u.getId());
                    newSubject.setStatus(1);
                    newSubject.setDescription(request.getParameter("addSubjectDes"));
                    newSubject.setImage(request.getParameter("addSubjectImage"));
                    newSubject.setOrganization(request.getParameter("addSubjectOrg"));
                    newSubject.setLogo(request.getParameter("addSubjectLogo"));
                    int check = sd.addSubject(newSubject);
                    if (check != 0) {
                        Price newPrice = new Price();
                        newPrice.setS_id(check);
                        newPrice.setPrice(Integer.parseInt(request.getParameter("addSubjectPrice")));
                        RegisterDAO rgd = new RegisterDAO();
                        rgd.addPrice(newPrice);
                    }
                    response.sendRedirect("LessonController?subID=" + check);
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
