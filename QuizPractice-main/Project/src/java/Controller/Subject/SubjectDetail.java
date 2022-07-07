/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 llllllllll
 */
package Controller.Subject;

import DAO.RegisterDAO;
import DAO.SubjectDAO;
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
@WebServlet(name = "SubjectDetail", urlPatterns = {"/SubjectDetail"})
public class SubjectDetail extends HttpServlet {

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
            String subID = (String) request.getParameter("subID");
            String type = (String) request.getParameter("type");
            SubjectDAO sd = new SubjectDAO();
            Subject s = sd.getSubject(subID);
            RegisterDAO gd = new RegisterDAO();
            Price c = gd.getPrice(subID);
            User u = (User) session.getAttribute("user");
            List<SubjectRegister> srList = new ArrayList<>();
            
            if (request.getParameter("type") == null) {
                if (subID == null) {
                    out.print("<script> alert('Not success. Please check your connection') </script>");
                    RequestDispatcher rd = getServletContext().getRequestDispatcher("SubjectController");
                    rd.include(request, response);
                } else {
                    
                    
                    if (u == null) {
                        RequestDispatcher rd = getServletContext().getRequestDispatcher("/views/common/Login.jsp");
                        rd.include(request, response);
                    } else {
                        srList = sd.getSubjectsRegisterByUser("" ,u.getId());
                        if(!srList.isEmpty()){
                            for(SubjectRegister sr: srList){
                                if(sr.getS_id()==s.getS_id()){
                                    request.setAttribute("dublicateSubject", "true");
                                }
                            }
                        }
                        request.setAttribute("subject", s);
                        request.setAttribute("price", c);
                        RequestDispatcher rd = getServletContext().getRequestDispatcher("/views/subject/detail.jsp");
                        rd.include(request, response);

                    }
                }
            } else {
                int checkRegis = gd.registSubject(u, s, c);
                if (checkRegis == 0) {
                    out.print("<script> alert('Not success. Please check your connection') </script>");
                } else {
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
