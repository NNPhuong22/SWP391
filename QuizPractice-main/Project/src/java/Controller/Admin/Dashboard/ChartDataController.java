/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Admin.Dashboard;

import Controller.Admin.AdminController;
import DAO.AdminDAO;
import DAO.NotificationDAO;
import DAO.SubjectDAO;
import DAO.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.google.gson.Gson;

import javax.servlet.http.HttpSession;

/**
 *
 * @author TrungHuy
 */
public class ChartDataController extends HttpServlet {

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

            AdminDAO ad = AdminController.ad;

            HttpSession session = request.getSession(true);
            String currentPage = request.getParameter("type");

            if (currentPage != null) {
                String time = request.getParameter("time");
                System.out.println("---------");
                System.out.println("Input time code:" + time);
                if (time != null) {
                    int year = getYear(time);
                    int month = getMonth(time);
                    int week = getWeek(time);
                    int day = getDay(time);
                    Gson gson = new Gson();
                    switch (currentPage) {
                        case "Overview":
                            System.out.println("Render Date For Year: " + year);
                            out.write(gson.toJson(ad.getDataByYear(year)));
                            break;
                        case "Monthly":
                            System.out.println("Render data for year: " + year + " month: " + month);
                            out.write(gson.toJson(ad.getDataByYearAndMonth(year, month)));
                            break;
                        case "Weekly":
                            System.out.println("Render data for year: " + year + " month: " + month + " week: " + week);
                            out.write(gson.toJson(ad.getDataByYearAndMonthAndWeek(year, month, week)));
                            break;
                        case "Daily":
                            System.out.println("Render data for year: " + year + " month: " + month + " week: " + week + " day: " + day);
                            out.write(gson.toJson(ad.getDataByYearAndMonthAndWeekAndDay(year, month, week, day)));
                            break;
                        default:
                    }
                }
            }

        }
    }

    static int getYear(String input) {
        return Integer.parseInt(input.split("_")[0]);
    }

    static int getMonth(String input) {
        return Integer.parseInt(input.split("_")[1]);
    }

    static int getWeek(String input) {
        return Integer.parseInt(input.split("_")[2]);
    }

    static int getDay(String input) {
        return Integer.parseInt(input.split("_")[3]);
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
