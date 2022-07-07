
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Admin.Dashboard;

import Controller.Admin.AdminController;
import DAO.AdminDAO;
import DAO.BlogDAO;
import DAO.CommonDAO;
import DAO.ExamDAO;
import DAO.QuizzDAO;
import DAO.SubjectDAO;
import DAO.UserDAO;
import Enitity.StatisticData;
import Enitity.SubjectRegister;
import Enitity.User;
import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.util.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author TrungHuy
 */
public class ContributionsController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    AdminDAO ad = AdminController.ad;
    int year = Calendar.getInstance().get(Calendar.YEAR);
    int month = Calendar.getInstance().get(Calendar.MONTH) + 1;
    int week = Calendar.getInstance().get(Calendar.WEEK_OF_MONTH);
    int day = Calendar.getInstance().get(Calendar.DATE);

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ParseException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */

            HttpSession session = request.getSession(true);
            String currentPage = request.getParameter("type");
            // khởi tạo biến lấy thời gian thực
            Calendar cal = Calendar.getInstance();
            // khởi tạo điều kiện chống

            if (currentPage != null) {
                ArrayList<StatisticData> data = new ArrayList<>();
                switch (currentPage) {
                    case "Overview":
                        data = ad.getDataByYear(year);
                        break;
                    case "Monthly":
                        data = ad.getDataByYearAndMonth(year, month);
                        break;
                    case "Weekly":
                        data = ad.getDataByYearAndMonthAndWeek(year, month, week);
                        break;
                    case "Daily":
                        data = ad.getDataByYearAndMonthAndWeekAndDay(year, month, week, day);
                        break;
                    default:
                }
                HashMap<String, Integer> dataContribution = new HashMap<>();
                dataContribution.put("Total User", data.get(0).getTotal_user());
                dataContribution.put("Total Earning", data.get(0).getTotal_earning());
                dataContribution.put("Total Subject", data.get(0).getTotal_subject());
                dataContribution.put("Total Quizz", data.get(0).getTotal_quizz());
                dataContribution.put("Total Registered", data.get(0).getTotal_registered());

                request.setAttribute("dataContribution", dataContribution);
                request.getRequestDispatcher("/views/admin/dashboard/contributions.jsp").include(request, response);
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
        try {
            processRequest(request, response);
        } catch (ParseException ex) {
            Logger.getLogger(ContributionsController.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (ParseException ex) {
            Logger.getLogger(ContributionsController.class.getName()).log(Level.SEVERE, null, ex);
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
