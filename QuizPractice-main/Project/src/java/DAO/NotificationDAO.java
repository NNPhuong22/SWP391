/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DBConnection.DBConnection;
import Enitity.Notification;
import Enitity.SubjectRegister;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author TrungHuy
 */
public class NotificationDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public Notification getLastest() {
        try {
            conn = DBConnection.open();
            String query = " SELECT TOP (1) [ID]\n"
                    + "      ,[Title]\n"
                    + "      ,[Description]\n"
                    + "      ,[Time]\n"
                    + "  FROM [QuizPractice].[dbo].[Notification] order by [ID] desc";
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                
                return new Notification(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4));
            }
        } catch (SQLException ex) {
            Logger.getLogger(SubjectDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            DBConnection.close(conn, ps, rs);
        }
        return null;
    }

    public ArrayList<Notification> getFull() {
        ArrayList<Notification> list = new ArrayList<>();
        try {
            conn = DBConnection.open();
            String query = " SELECT *\n"
                    + "  FROM [QuizPractice].[dbo].[Notification]\n"
                    + "  order by [id] desc;";
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Notification(rs.getInt("ID"), rs.getString("Title"), rs.getString("Description"), rs.getString("Time")));
            }
        } catch (SQLException ex) {  
            Logger.getLogger(SubjectDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            DBConnection.close(conn, ps, rs); 
        }
        return list;
    }

    public int createNotification(Notification n) {
        try {
            conn = DBConnection.open();
            String query = " insert into [QuizPractice].[dbo].[Notification] values (?,?,GETDATE()) ";
            System.out.println(n.getTitle());

            ps = conn.prepareStatement(query);
            ps.setString(1, n.getTitle());
            ps.setString(2, n.getDes());

            return ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(SubjectDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            DBConnection.close(conn, ps, rs);
        }
        return 0;
    }

    public String RenderNotification(Notification no) {
        return " <li><div class=\"card \" \n"
                + "            <div class=\"card-body\">\n"
                + "                <h5 class=\"card-title\" style=\"\" >Notification number: " + no.getId() + " <br> " + no.getTitle() + "</h5>\n"
                + "                <h6 class=\"card-subtitle mb-2 text-muted\"> Time: " + no.getTime() + " </h6>\n"
                + "                <p class=\"card-text\"> " + no.getDes() + "</p>\n"
                + "            </div>\n"
                + "        </div>  </li>";
    }
}
