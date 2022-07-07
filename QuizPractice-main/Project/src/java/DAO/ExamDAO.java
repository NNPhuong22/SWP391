/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DBConnection.DBConnection;
import Enitity.Exam;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author PV
 */
public class ExamDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

//    get exam by lesson id
    public List<Exam> getExamsByLessonId(int s_id, String condition) {
        List<Exam> examList = new ArrayList<>();
        String query = "select [Exam].*,[Subject].name as s_name,[User].first_name,[User].last_name from [Exam] "
                + "join [Subject] on [Exam].s_id=[Subject].s_id "
                + "join [User] on [Exam].u_id=[User].u_id "
                + "where [Exam].s_id = " + s_id;
        if (!condition.isEmpty()) {
            query += condition;
        }
        try {
            conn = DBConnection.open();
            ps = conn.prepareCall(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                // Lấy toàn bộ những lựa chọn theo id của câu hỏi
                Exam e = new Exam();
                e.setExam_id(rs.getInt("exam_id"));
                e.setU_id(rs.getInt("u_id"));
                e.setS_id(rs.getInt("s_id"));
                e.setNumber_of_question(rs.getInt("number_of_question"));
                e.setLevel(rs.getString("level"));
                e.setCreated_date(rs.getString("created_date"));
                e.setStatus(rs.getInt("status"));
                e.setPass_rate(rs.getInt("pass_rate"));
                e.setDuration(rs.getInt("duration"));
                e.setS_name(rs.getString("s_name"));
                e.setFirst_name(rs.getString("first_name"));
                e.setLast_name(rs.getString("last_name"));

                examList.add(e);
            }
        } catch (SQLException ex) {
            Logger.getLogger(QuizzDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            DBConnection.close(conn, ps, rs);
        }
        return examList;
    }

    public ArrayList<Exam> getAllExam() {
        ArrayList<Exam> eList = new ArrayList<>();
        String query = "select [Exam].*,[Subject].name as s_name,[User].first_name,[User].last_name from [Exam] "
                + "join [Subject] on [Exam].s_id=[Subject].s_id "
                + "join [User] on [Exam].u_id=[User].u_id "
                + "order by [Exam].exam_id "
                + "desc";
        try {
            conn = DBConnection.open();
            ps = conn.prepareCall(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                // Get all quizz by user Id 
                Exam e = new Exam();
                e.setExam_id(rs.getInt("exam_id"));
                e.setU_id(rs.getInt("u_id"));
                e.setS_id(rs.getInt("s_id"));
                e.setNumber_of_question(rs.getInt("number_of_question"));
                e.setLevel(rs.getString("level"));
                e.setCreated_date(rs.getString("created_date"));
                e.setStatus(rs.getInt("status"));
                e.setPass_rate(rs.getInt("pass_rate"));
                e.setDuration(rs.getInt("duration"));
                e.setS_name(rs.getString("s_name"));
                e.setFirst_name(rs.getString("first_name"));
                e.setLast_name(rs.getString("last_name"));
                eList.add(e);
            }
        } catch (SQLException ex) {
            Logger.getLogger(QuizzDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            DBConnection.close(conn, ps, rs);
        }
        return eList;
    }

    //add exam
    public void addExam(Exam e) {
        try {
            conn = DBConnection.open();
            String query = "INSERT into [Exam] ([exam_id],[u_id],[s_id],[level],[created_date],[number_of_question],[status],[pass_rate],[duration]) VALUES "
                    + "(?,?,?,?,?,?,?,?,?)";
            ps = conn.prepareCall(query);
            ps.setInt(1, e.getExam_id());
            ps.setInt(2, e.getU_id());
            ps.setInt(3, e.getS_id());
            ps.setString(4, e.getLevel());
            ps.setString(5, e.getCreated_date());
            ps.setInt(6, e.getNumber_of_question());
            ps.setInt(7, e.getStatus());
            ps.setInt(8, e.getPass_rate());
            ps.setInt(9, e.getDuration());

            ps.executeUpdate();

        } catch (SQLException ex) {
            Logger.getLogger(BlogDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            DBConnection.close(conn, ps, rs);
        }
    }

    //edit exam
    public void editExam(Exam e) {
        try {
            conn = DBConnection.open();
            String query = "update [Exam] "
                    + "set [s_id]=?, [u_id]=?, [number_of_question]=?, [duration]=?, [level]=?, [pass_rate]=?, [status]=?, [created_date]=? "
                    + "where [exam_id]=?";
            ps = conn.prepareCall(query);
            ps.setInt(1, e.getS_id());
            ps.setInt(2, e.getU_id());
            ps.setInt(3, e.getNumber_of_question());
            ps.setInt(4, e.getDuration());
            ps.setString(5, e.getLevel());
            ps.setInt(6, e.getPass_rate());
            ps.setInt(7, e.getStatus());
            ps.setString(8, e.getCreated_date());
            ps.setInt(9, e.getExam_id());
            ps.executeUpdate();

        } catch (SQLException ex) {
            Logger.getLogger(BlogDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            DBConnection.close(conn, ps, rs);
        }
    }

    //change exam status
    public void changeExamStatus(int examId, String type) {
        try {
            conn = DBConnection.open();
            String query = "update [Exam] "
                    + "set [status]=? "
                    + "where [exam_id]=?";
            ps = conn.prepareCall(query);
            if (type.equals("deactive")) {
                ps.setInt(1, 0);
            } else {
                ps.setInt(1, 1);
            }
            ps.setInt(2, examId);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(BlogDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            DBConnection.close(conn, ps, rs);
        }
    }

    //delete exam
    public void deleteExam(int examId) {
        try {
            conn = DBConnection.open();
            String query = "delete from [Exam] where [exam_id]=" + examId;
            ps = conn.prepareCall(query);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(BlogDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            DBConnection.close(conn, ps, rs);
        }
    }
}
