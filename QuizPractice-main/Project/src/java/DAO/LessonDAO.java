/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DBConnection.DBConnection;
import Enitity.Lesson;
import Enitity.Subject;
import Enitity.Topic;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author hieu phan
 */
public class LessonDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Topic> getTopic(String condition) {
        List<Topic> topics = new ArrayList<>();
        try {
            conn = DBConnection.open();
            if (condition.isEmpty()) {
                ps = conn.prepareStatement("select * from [QuizPractice].[dbo].[LessonTopic]");
            } else {
                ps = conn.prepareStatement("select * from [LessonTopic] " + condition);
            }
            rs = ps.executeQuery();
            while (rs.next()) {
                Topic sc = new Topic();
                sc.setS_id(rs.getInt("s_id"));
                sc.setName(rs.getString("name"));
                sc.setStatus(rs.getInt("status"));
                sc.setTopic_id(rs.getInt("topic_id"));
                topics.add(sc);
            }
        } catch (SQLException ex) {
            Logger.getLogger(SubjectDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            DBConnection.close(conn, ps, rs);
        }
        return topics;
    }

    public List<Lesson> getLesson(String condition) {
        List<Lesson> lessons = new ArrayList<>();
        try {
            conn = DBConnection.open();
            if (condition.isEmpty()) {
                String query = "select *, Lesson.l_id as lesson_id, Lesson.name as lesson_name,"
                        + "Lesson.image as lesson_image, "
                        + "Lesson.description as lesson_description, "
                        + "Lesson.status as lesson_status, "
                        + "Lesson.topic_id as lesson_topic, "
                        + "Lesson.createdTime as lesson_created,"
                        + "LessonTopic.name as topic_name from"
                        + "[QuizPractice].[dbo].[Lesson] "
                        + "join LessonTopic on Lesson.topic_id = LessonTopic.topic_id "
                        + "join Subject on Subject.s_id = LessonTopic.s_id WHERE Lesson.status=1";
                ps = conn.prepareStatement(query);
            } else {
                String query = "select *, Lesson.l_id as lesson_id, Lesson.name as lesson_name,"
                        + "Lesson.image as lesson_image, "
                        + "Lesson.description as lesson_description, "
                        + "Lesson.status as lesson_status, "
                        + "Lesson.topic_id as lesson_topic, "
                        + "Lesson.createdTime as lesson_created, "
                        + "LessonTopic.name as topic_name from "
                        + "[QuizPractice].[dbo].[Lesson] "
                        + "join LessonTopic on Lesson.topic_id = LessonTopic.topic_id "
                        + "join Subject on Subject.s_id = LessonTopic.s_id WHERE Lesson.status=1 " + condition + "";
                ps = conn.prepareStatement(query);
            }
            rs = ps.executeQuery();
            while (rs.next()) {
                Lesson sc = new Lesson();
                sc.setL_id(rs.getInt("lesson_id"));
                sc.setName(rs.getString("lesson_name"));
                sc.setNo(rs.getInt("no"));
                sc.setVideo(rs.getString("video"));
                sc.setImage(rs.getString("lesson_image"));
                sc.setContent(rs.getString("content"));
                sc.setDescription(rs.getString("lesson_description"));

                sc.setStatus(rs.getInt("lesson_status"));
                sc.setReferences(rs.getString("references"));
                sc.setDocuments(rs.getString("documents"));
                sc.setTopic_id(rs.getInt("lesson_topic"));
                sc.setCreatedTime(rs.getString("lesson_created"));
                sc.setTopicName(rs.getString("topic_name"));
                lessons.add(sc);
            }
        } catch (SQLException ex) {
            Logger.getLogger(SubjectDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            DBConnection.close(conn, ps, rs);
        }
        return lessons;
    }

    public Lesson getOnlyLesson(String l_id) {
        for (Lesson l : getLesson("")) {
            if (l.getL_id() == Integer.parseInt(l_id)) {
                return l;
            }
        }
        return null;
    }

    public int updateLesson(Lesson s) {
        Date date = new Date();
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd");
        String strDate = formatter.format(date);
        try {
            conn = DBConnection.open();
            String query = "";
            if (s.getName() != null) {
                query = "Update Lesson "
                        + " SET [name] = '" + s.getName() + "', topic_id = " + s.getTopic_id() + ", description ='" + s.getDescription() + "', image = '" + s.getImage() + "', video='" + s.getVideo() + "', content='" + s.getContent() + "', [references]='" + s.getReferences() + "', documents='" + s.getDocuments() + "'"
                        + " WHERE l_id=" + s.getL_id();
            } else {
                query = "Update Lesson SET status = 0 " + " WHERE l_id=" + s.getL_id();

            }
            ps = conn.prepareStatement(query);
            ps.executeUpdate();
            return 1;
        } catch (SQLException ex) {
            Logger.getLogger(RegisterDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            DBConnection.close(conn, ps, rs);
        }
        return 0;
    }

    public int addTopic(Topic t) {
        Date date = new Date();
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd");
        String strDate = formatter.format(date);
        try {
            conn = DBConnection.open();
            String query = "";

            query = "INSERT INTO LessonTopic([name], s_id, status, createdTime) VALUES('" + t.getName() + "'," + t.getS_id() + ", 1, '" + strDate + "')";

            ps = conn.prepareStatement(query);
            ps.executeUpdate();
            return 1;
        } catch (SQLException ex) {
            Logger.getLogger(RegisterDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            DBConnection.close(conn, ps, rs);
        }
        return 0;
    }

    public int addLesson(Lesson ls) {
        Date date = new Date();
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd");
        String strDate = formatter.format(date);
        try {
            conn = DBConnection.open();
            String query = "";

            query = "INSERT INTO Lesson([name], [no], video, [image], content, [description], [status], [references], [documents], topic_id, createdTime) VALUES('"+ ls.getName() +"'," + ls.getNo() +", '" +ls.getVideo() +"','" + ls.getImage() +"','" + ls.getContent() +"','" + ls.getDescription() +"',1, '" + ls.getReferences() +"','" +ls.getDocuments()+"',"+ ls.getTopic_id() + ", '" + strDate + "')";

            ps = conn.prepareStatement(query);
            ps.executeUpdate();
            return 1;
        } catch (SQLException ex) {
            Logger.getLogger(RegisterDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            DBConnection.close(conn, ps, rs);
        }
        return 0;
    }
}
