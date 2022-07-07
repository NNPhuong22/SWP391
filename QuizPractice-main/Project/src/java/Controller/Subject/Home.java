/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Subject;

import DAO.BlogDAO;
import DAO.SubjectDAO;
import DAO.UserDAO;
import Enitity.Blog;
import Enitity.Subject;
import Enitity.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author VietThang
 */
public class Home extends HttpServlet {

    // get random entity
    public void getRandomEntity(List totalList, List displayList, int n) {
        Random rdNum = new Random();
        int index;
        boolean checkExpertExist;
        while (true) {
            checkExpertExist = false;
            index = rdNum.nextInt(totalList.size());
            displayList.add(totalList.get(index));
            totalList.remove(totalList.get(index));
            if (displayList.size() == n) {
                break;
            }
        }
    }

//     get expert in homepage
    public ArrayList<User> getExpert() {
        UserDAO udao = new UserDAO();
        List<User> expertTotal = udao.GetUsers(" where role='expert' and status='1'");
        ArrayList<User> expertDisplayList = new ArrayList<>();
        getRandomEntity(expertTotal, expertDisplayList, 7);
//        request.setAttribute("expertDisplayList", expertDisplayList);
        return expertDisplayList;
    }

    // get blog tags in homepage
    public ArrayList<Blog> getBlogTags() {
        BlogDAO bdao = new BlogDAO();
        ArrayList<Blog> blogTotal = bdao.GetBlogs(1);
        ArrayList<Blog> blogDisplayList = new ArrayList<>();
        getRandomEntity(blogTotal, blogDisplayList, 3);
//        request.setAttribute("blogDisplayList", blogDisplayList);
        return blogDisplayList;
    }

    public ArrayList<Subject> getRecommenedSubjectTags() {
        /* Display random subject for recommened in homepage*/
        SubjectDAO dao = new SubjectDAO();
        List<Subject> sjtTotal = dao.getCompleteSubjects(""); // subject source for random
        ArrayList<Subject> sjtDisplayList = new ArrayList<>(); // subject list will be display
        // Loop for choose random subject (add from sjtTotal into sjtDisplayList)
        getRandomEntity(sjtTotal, sjtDisplayList, 10);
        return sjtDisplayList;
    }
    
    public ArrayList<Subject> getLatestSubjectTags() {
        /* Display random subject for recommened in homepage*/
        SubjectDAO dao = new SubjectDAO();
        List<Subject> sjtTotal = dao.getCompleteSubjects(" order by s_id desc"); // subject source for random
        ArrayList<Subject> sjtDisplayList = new ArrayList<>();
        for (int i = 0; i < 10; i++) {
            sjtDisplayList.add(sjtTotal.get(i));
        }
        return sjtDisplayList;
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            ArrayList<Subject> sjtRecommenedDisplayList = getRecommenedSubjectTags();
            ArrayList<Subject> sjtLatestDisplayList = getLatestSubjectTags();
            ArrayList<User> expertDisplayList = getExpert();
            ArrayList<Blog> blogDisplayList = getBlogTags();
            request.setAttribute("sjtRecommenedDisplayList", sjtRecommenedDisplayList);
            request.setAttribute("sjtLatestDisplayList", sjtLatestDisplayList);
            request.setAttribute("expertDisplayList", expertDisplayList);
            request.setAttribute("blogDisplayList", blogDisplayList);
            request.getRequestDispatcher("/views/common/home.jsp").forward(request, response);
        } catch (NumberFormatException e) {

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
