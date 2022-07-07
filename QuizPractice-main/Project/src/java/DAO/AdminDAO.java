/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DBConnection.DBConnection;
import Enitity.LoginHistory;
import Enitity.StatisticData;
import Enitity.Subject;
import Enitity.SubjectRegister;
import Enitity.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author TrungHuy
 */
public class AdminDAO {

    Connection conn;
    PreparedStatement ps;
    ResultSet rs;
    UserDAO ud = new UserDAO();
    SubjectDAO sd = new SubjectDAO();
    QuizzDAO qd = new QuizzDAO();

    // Lưu lịch sử đăng nhập của người dùng
    public void saveLoginHistory(LoginHistory input) {
        try {
            conn = new DBConnection().open();
            ps = conn.prepareStatement("insert into [QuizPractice].[dbo].[LoginHistory](u_id,time,OS,browser) values(?,GETDATE(),?,?)");
            ps.setInt(1, input.getUid());
            ps.setString(2, input.getOS());
            ps.setString(3, input.getBrower());
            ps.executeUpdate();
            System.out.println("Login History has been saved");
        } catch (SQLException ex) {
            Logger.getLogger(SubjectDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            DBConnection.close(conn, ps, rs);
        }
    }

    // Lấy lịch sử đăng nhập của người dùng
    public ArrayList<LoginHistory> getLoginHistories() {
        ArrayList<LoginHistory> list = new ArrayList<>();
        try {
            conn = new DBConnection().open();
            ps = conn.prepareStatement("SELECT [h_id]\n"
                    + "      ,[u_id]\n"
                    + "      ,[time]\n"
                    + "      ,[OS]\n"
                    + "      ,[browser]\n"
                    + "  FROM [QuizPractice].[dbo].[LoginHistory] order by [time] desc");

            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new LoginHistory(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getString(5)));
            }
            System.out.println("Login History has been saved");
        } catch (SQLException ex) {
            Logger.getLogger(SubjectDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            DBConnection.close(conn, ps, rs);
        }
        return list;
    }

    // Lưu dữ liệu theo từng mốc thời gian
    public void saveStatisticData(int year, int month, int week, int day) {
        try {
            saveDataForYear(year);
            saveDataForYearAndMonth(year, month);
            saveDataForYearAndMonthAndWeek(year, month, week);
            saveDataForYearAndMonthAndWeekAndDay(year, month, week, day);
        } catch (Exception ex) {
            System.out.println("Locate: AdminDAO");
        }
    }

     

    // lấy số lượng tiền đã kiếm được
    public int getTotalEarning() {

        try {
            conn = new DBConnection().open();
            ps = conn.prepareStatement("SELECT sum(p.price) as 'total' FROM [QuizPractice].[dbo].[SubjectRegister]  as sr \n"
                    + "join [QuizPractice].[dbo].[PricePackage]  as p\n"
                    + "on sr.price_id = p.price_id");

            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }

        } catch (SQLException ex) {
            Logger.getLogger(SubjectDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            DBConnection.close(conn, ps, rs);
        }
        return 0;
         
    }

    // lấy độ dài của danh sách tất cả user
    public int getTotalUsers() {
         return ud.GetUsers("").size();
         
    }

    //lấy độ dài của danh sách tất cả subject
    public int getTotalSubjects() {
         return sd.getSubjects("").size();
         
    }

    //lấy độ dài của danh sách tất cả subject
    public int getTotalQuizz() {
         return qd.getTakenQuizzes("").size();
         
    }

    public int getTotalRegistered() {

        int count = 0;
        for (User User : ud.GetUsers("")) {
            try {
                if (sd.getSubjectsRegisterByUser("", User.getId()).size() > 0) {
                    count++;
                }

            } catch (Exception e) {
                System.out.println("User has not registered!");
            }
        }
        return count;
        
    }

    // lấy dữ liệu theo một năm nhất định hoặc toàn bộ dựa trên số năm diền vào
    public ArrayList<StatisticData> getDataByYear(int year) {
        String condition = "";
        if (year > 0) {
            condition = "and [year] = " + year;
        }
        
        ArrayList<StatisticData> list = new ArrayList<>();
        String query = ""
                + "SELECT\n"
                + "       [year]\n"
                + "      ,[Total_User]\n"
                + "      ,[Total_Subject]\n"
                + "      ,[Total_Earning]\n"
                + "      ,[Total_Quizz]\n"
                + "      ,[Total_Registered]\n"
                + "  FROM [QuizPractice].[dbo].[DataByTime]  where [Scope] = 'Overview' " + condition + " order by [Year] desc";
        try {
            conn = new DBConnection().open();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                StatisticData value = new StatisticData(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getInt(4), rs.getInt(5), rs.getInt(6));
                list.add(value);
            }
        } catch (SQLException ex) {
            Logger.getLogger(AdminDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            DBConnection.close(conn, ps, rs);
        }
        return list;
    }

    // lấy dữ liệu theo một năm nhất định hoặc toàn bộ dựa trên số năm và tháng diền vào
    public ArrayList<StatisticData> getDataByYearAndMonth(int year, int month) {
        ArrayList<StatisticData> list = new ArrayList<>();
        String condition = "";

        if (year != 0 && month != 0) {
            condition = "and [year] = " + year + " and [month] = " + month;
        }
        String query = ""
                + "SELECT\n"
                + "       [year]\n"
                + "      ,[Month]\n"
                + "      ,[Total_User]\n"
                + "      ,[Total_Subject]\n"
                + "      ,[Total_Earning]\n"
                + "      ,[Total_Quizz]\n"
                + "      ,[Total_Registered]\n"
                + "  FROM [QuizPractice].[dbo].[DataByTime]   where [Scope] = 'Monthly'  " + condition + " order by [year] desc,[month] desc ";
        try {
            conn = new DBConnection().open();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                StatisticData value = new StatisticData(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getInt(4), rs.getInt(5), rs.getInt(6), rs.getInt(7));
                list.add(value);
            }
        } catch (SQLException ex) {
            Logger.getLogger(AdminDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            DBConnection.close(conn, ps, rs);
        }

        return list;
    }

    // lấy dữ liệu theo một năm nhất định hoặc toàn bộ dựa trên số năm và tháng và tuần diền vào
    public ArrayList<StatisticData> getDataByYearAndMonthAndWeek(int year, int month, int week) {
        ArrayList<StatisticData> list = new ArrayList<>();
        String condition = "";

        if (year != 0 && month != 0 && week != 0) {
            condition = "and [year] = " + year + " and [month] = " + month + "and [week] = " + week;
        }
        String query = ""
                + "SELECT\n"
                + "       [year]\n"
                + "      ,[Month]\n"
                + "      ,[week]\n"
                + "      ,[Total_User]\n"
                + "      ,[Total_Subject]\n"
                + "      ,[Total_Earning]\n"
                + "      ,[Total_Quizz]\n"
                + "      ,[Total_Registered]\n"
                + "  FROM [QuizPractice].[dbo].[DataByTime] where [Scope] = 'Weekly' " + condition + " order by [year] desc,[month] desc, [Week] desc";
        try {
            conn = new DBConnection().open();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                StatisticData value = new StatisticData(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getInt(4), rs.getInt(5), rs.getInt(6), rs.getInt(7), rs.getInt(8));

                list.add(value);
            }
        } catch (SQLException ex) {
            Logger.getLogger(AdminDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            DBConnection.close(conn, ps, rs);
        }

        return list;
    }

    // lấy dữ liệu theo một năm nhất định hoặc toàn bộ dựa trên số năm và tháng và tuần và ngày diền vào
    public ArrayList<StatisticData> getDataByYearAndMonthAndWeekAndDay(int year, int month, int week, int day) {
        ArrayList<StatisticData> list = new ArrayList<>();
        String condition = "";
        if (year != 0 && month != 0 && week != 0 && day != 0) {
            condition = "and [year] = " + year + " and [month] = " + month + "and [week] = " + week + "and [day] = " + day;
        }
        String query = ""
                + "SELECT  \n"
                + "      [Year]\n"
                + "      ,[Month]\n"
                + "      ,[Week]\n"
                + "      ,[Day]\n"
                + "      ,[Total_User]\n"
                + "      ,[Total_Subject]\n"
                + "      ,[Total_Earning]\n"
                + "      ,[Total_Quizz]\n"
                + "      ,[Total_Registered]\n"
                + "  FROM [QuizPractice].[dbo].[DataByTime]   where [Scope] = 'Daily' " + condition + " order by [year] desc,[month] desc, [Week] desc, [day] desc";
        try {
            conn = new DBConnection().open();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                StatisticData value = new StatisticData(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getInt(4), rs.getInt(5), rs.getInt(6), rs.getInt(7), rs.getInt(8), rs.getInt(9));
                list.add(value);
            }
        } catch (SQLException ex) {
            Logger.getLogger(AdminDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            DBConnection.close(conn, ps, rs);
        }

        return list;
    }

    // lưu dữ liệu theo đơn vị năm và tháng và tuần và ngày
    public void saveDataForYearAndMonthAndWeekAndDay(int year, int month, int week, int day) {
        System.out.print("Daily:");
        if (!dayInWeekInMonthInYearExist(week, month, year, day)) {
            System.out.println("Save data for year: " + year + " month: " + month + " week: " + week + " day: " + day);
            String query = "insert into  [QuizPractice].[dbo].[DataByTime]("
                    + "[Scope], "
                    + "[Year],"
                    + "[Month] ,"
                    + "[Week] ,"
                    + "[day] ,"
                    + "[Total_User],"
                    + "[Total_Subject],"
                    + "[Total_Earning],"
                    + "[Total_Quizz],"
                    + "[Total_Registered]) "
                    + "values ('Daily', " + year + " ,"
                    + " " + month + " ,"
                    + "  " + week + "  ,"
                    + "  " + day + "  ,"
                    + "" + getTotalUsers() + ","
                    + "" + getTotalSubjects() + ","
                    + "" + getTotalEarning() + ","
                    + "" + getTotalQuizz() + ","
                    + "" + getTotalRegistered() + ")";
            try {

                conn = new DBConnection().open();
                ps = conn.prepareStatement(query);
                ps.executeUpdate();

            } catch (SQLException ex) {
                Logger.getLogger(AdminDAO.class.getName()).log(Level.SEVERE, null, ex);
            } finally {
                DBConnection.close(conn, ps, rs);
            }
        } else {
            System.out.println("Update data for  year: " + year + " month: " + month + " week: " + week + " day: " + day);
            String query = "update [QuizPractice].[dbo].[DataByTime] \n"
                    + "	  set \n"
                    + "	  [Total_User] = " + getTotalUsers() + ",\n"
                    + "	  [Total_Subject]=" + getTotalSubjects() + ",\n"
                    + "	  [Total_Earning] =" + getTotalEarning() + ", \n"
                    + "	  [Total_Quizz]= " + getTotalQuizz() + ",\n"
                    + "	  [Total_Registered] = " + getTotalRegistered() + "\n"
                    + "	  where [Scope] = 'Daily' and [Year] = "+year+" and [Month] =  "+month+" and [week] = " + week + "and [day] = " + day;
            try {

                conn = new DBConnection().open();
                ps = conn.prepareStatement(query);
                ps.executeUpdate();

            } catch (SQLException ex) {
                Logger.getLogger(AdminDAO.class.getName()).log(Level.SEVERE, null, ex);
            } finally {
                DBConnection.close(conn, ps, rs);
            }
        }
    }

    // lưu dữ liệu theo đơn vị năm và tháng và tuần
    public void saveDataForYearAndMonthAndWeek(int year, int month, int week) {
        System.out.print("Weekly:");
        if (!weekInMonthInYearExist(week, month, year)) {
            System.out.println("Save data for year: " + year + " month: " + month + " week: " + week);
            String query = "insert into  [QuizPractice].[dbo].[DataByTime]("
                    + "[Scope], "
                    + "[Year],"
                    + "[Month] ,"
                    + "[Week] ,"
                    + "[Total_User],"
                    + "[Total_Subject],"
                    + "[Total_Earning],"
                    + "[Total_Quizz],"
                    + "[Total_Registered]) "
                    + "values ('Weekly', " + year + " ,"
                    + " " + month + ","
                    + "  " + week + "  ,"
                    + "" + getTotalUsers() + ","
                    + "" + getTotalSubjects() + ","
                    + "" + getTotalEarning() + ","
                    + "" + getTotalQuizz() + ","
                    + "" + getTotalRegistered() + ")";
            try {

                conn = new DBConnection().open();
                ps = conn.prepareStatement(query);
                ps.executeUpdate();

            } catch (SQLException ex) {
                Logger.getLogger(AdminDAO.class.getName()).log(Level.SEVERE, null, ex);
            } finally {
                DBConnection.close(conn, ps, rs);
            }
        } else {
            System.out.println("Update data for year: " + year + " month: " + month + " week: " + week);
            String query = "update [QuizPractice].[dbo].[DataByTime] \n"
                    + "	  set \n"
                    + "	  [Total_User] = " + getTotalUsers() + ",\n"
                    + "	  [Total_Subject]=" + getTotalSubjects() + ",\n"
                    + "	  [Total_Earning] =" + getTotalEarning() + ", \n"
                    + "	  [Total_Quizz]= " + getTotalQuizz() + ",\n"
                    + "	  [Total_Registered] = " + getTotalRegistered() + "\n"
                    + "	  where [Scope] = 'Weekly' and [Year] = " + year + " and [Month] =  " + month + " and [week] = " + week;
            try {

                conn = new DBConnection().open();
                ps = conn.prepareStatement(query);
                ps.executeUpdate();

            } catch (SQLException ex) {
                Logger.getLogger(AdminDAO.class.getName()).log(Level.SEVERE, null, ex);
            } finally {
                DBConnection.close(conn, ps, rs);
            }
        }
    }

    // lưu dữ liệu theo đơn vị năm và tháng
    public void saveDataForYearAndMonth(int year, int month) {
        System.out.print("Monthly:");
        if (!monthInYearExist(month, year)) {
            System.out.println("Save data for year: " + year + " month: " + month);
            String query = "insert into  [QuizPractice].[dbo].[DataByTime]("
                    + "[Scope],"
                    + "[Year],"
                    + "[Month] ,"
                    + "[Total_User],"
                    + "[Total_Subject],"
                    + "[Total_Earning],"
                    + "[Total_Quizz],"
                    + "[Total_Registered]) "
                    + "values ("
                    + "'Monthly', "
                    + "" + year + ","
                    + "" + month + ","
                    + "" + getTotalUsers() + ","
                    + "" + getTotalSubjects() + ","
                    + "" + getTotalEarning() + ","
                    + "" + getTotalQuizz() + ","
                    + "" + getTotalRegistered() + ")";
            try {

                conn = new DBConnection().open();
                ps = conn.prepareStatement(query);
                ps.executeUpdate();

            } catch (SQLException ex) {
                Logger.getLogger(AdminDAO.class.getName()).log(Level.SEVERE, null, ex);
            } finally {
                DBConnection.close(conn, ps, rs);
            }
        } else {
            System.out.println("Update data for year: " + year + " month: " + month);
            String query = "update [QuizPractice].[dbo].[DataByTime] \n"
                    + "	  set \n"
                    + "	  [Total_User] = " + getTotalUsers() + ",\n"
                    + "	  [Total_Subject]=" + getTotalSubjects() + ",\n"
                    + "	  [Total_Earning] =" + getTotalEarning() + ", \n"
                    + "	  [Total_Quizz]= " + getTotalQuizz() + ",\n"
                    + "	  [Total_Registered] = " + getTotalRegistered() + "\n"
                    + "	  where [Year] = " + year + " and [Month] =  " + month + " and [Scope] = 'Monthly' ";
            try {

                conn = new DBConnection().open();
                ps = conn.prepareStatement(query);
                ps.executeUpdate();

            } catch (SQLException ex) {
                Logger.getLogger(AdminDAO.class.getName()).log(Level.SEVERE, null, ex);
            } finally {
                DBConnection.close(conn, ps, rs);
            }
        }
    }

    // lưu dữ liệu theo đơn vị năm
    public void saveDataForYear(int year) {
        System.out.print("OverView:");
        if (!yearExist(year)) {
            System.out.println("Save data for year: " + year);
            String query = "insert into  [QuizPractice].[dbo].[DataByTime]("
                    + "[Scope],"
                    + "[Year] ,[Total_User]\n"
                    + "      ,[Total_Subject]\n"
                    + "      ,[Total_Earning]\n"
                    + "      ,[Total_Quizz]\n"
                    + "      ,[Total_Registered]) values ('Overview'," + year + ","
                    + "" + getTotalUsers() + ","
                    + "" + getTotalSubjects() + ","
                    + "" + getTotalEarning() + ","
                    + "" + getTotalQuizz() + ","
                    + "" + getTotalRegistered() + ")";
            try {

                conn = new DBConnection().open();
                ps = conn.prepareStatement(query);
                ps.executeUpdate();

            } catch (SQLException ex) {
                Logger.getLogger(AdminDAO.class.getName()).log(Level.SEVERE, null, ex);
            } finally {
                DBConnection.close(conn, ps, rs);
            }
        } else {
            System.out.println("Update data for year: " + year);
            String query = "update [QuizPractice].[dbo].[DataByTime] \n"
                    + "	  set \n"
                    + "	  [Total_User] = " + getTotalUsers() + ",\n"
                    + "	  [Total_Subject]=" + getTotalSubjects() + ",\n"
                    + "	  [Total_Earning] =" + getTotalEarning() + ", \n"
                    + "	  [Total_Quizz]= " + getTotalQuizz() + ",\n"
                    + "	  [Total_Registered] = " + getTotalRegistered() + "\n"
                    + "	  where [Year] = " + year + " and [Scope] = 'Overview'";
            try {

                conn = new DBConnection().open();
                ps = conn.prepareStatement(query);
                ps.executeUpdate();

            } catch (SQLException ex) {
                Logger.getLogger(AdminDAO.class.getName()).log(Level.SEVERE, null, ex);
            } finally {
                DBConnection.close(conn, ps, rs);
            }
        }
    }

    // nếu như đã tồn tại trong dữ liệu
    private boolean yearExist(int year) {
        return getDataByYear(year).size() > 0;
    }

    private boolean monthInYearExist(int month, int year) {
        return getDataByYearAndMonth(year, month).size() > 0;
    }

    private boolean weekInMonthInYearExist(int week, int month, int year) {
        return getDataByYearAndMonthAndWeek(year, month, week).size() > 0;
    }

    private boolean dayInWeekInMonthInYearExist(int week, int month, int year, int day) {
        return getDataByYearAndMonthAndWeekAndDay(year, month, week, day).size() > 0;
    }

}
