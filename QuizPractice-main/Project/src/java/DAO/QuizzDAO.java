/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DBConnection.DBConnection;
import Enitity.Question;
import Enitity.Quizz;
import Enitity.QuizzTaken;
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
public class QuizzDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public static void main(String[] args) {
        QuizzDAO dao = new QuizzDAO();
        Question a = dao.getQuestionById(26);
        System.out.println(a.getDescription());
    }

    // Tham chiếu bới id của mỗi question
    public Question getQuestionById(int id) {
        Question quiz = new Question();

        String query = "SELECT [question]\n"
                + "      ,[level]\n"
                + "      ,[result]\n"
                + "      ,[l_id]\n"
                + "      ,[image]\n"
                + "      ,[description]\n"
                + "      ,[b_id]\n"
                + "  FROM [QuizPractice].[dbo].[QuestionBank]  where b_id = " + id;

        try {
            conn = new DBConnection().open();
            ps = conn.prepareCall(query);
            rs = ps.executeQuery();
            // Lấy ra một câu hỏi qua id
            if (rs.next()) {
                quiz.setContent(rs.getString(1));
                quiz.setType(rs.getString(2));
                quiz.setAnswer(rs.getString(3));
                quiz.setLessonId(rs.getString(4));
                quiz.setImage(rs.getString(5));
                quiz.setDescription(rs.getString(6));               
                quiz.setId(rs.getString(7));
            }
        } catch (SQLException ex) {
            Logger.getLogger(QuizzDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            DBConnection.close(conn, ps, rs);
        }
        quiz.setOptions(getOptionsById(id));
        return quiz;
    }

    // Tham chiếu bới id của mỗi question
    private ArrayList<String> getOptionsById(int id) {
        ArrayList<String> list = new ArrayList<>();
        String query = "SELECT TOP (1000) [QuestionId]\n"
                + "      ,[Option]\n"
                + "  FROM [QuizPractice].[dbo].[QuestionChoices] where QuestionId = " + id;

        try {
            conn = DBConnection.open();
            ps = conn.prepareCall(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                // Lấy toàn bộ những lựa chọn theo id của câu hỏi
                list.add(rs.getString("Option"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(QuizzDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            DBConnection.close(conn, ps, rs);
        }
        return list;
    }

    //id ở đây được tham chiếu lessonid
    public ArrayList<Question> getQuizzBySubjectAndTopic(String subject, String topic, String level) {
        ArrayList<Question> Quizzes = new ArrayList<>();
        String query = "SELECT q.question,q.[level],q.result,q.l_id,q.[image],q.[description], q.b_id,l.l_id,t.topic_id,s.s_id "
                + "FROM [QuizPractice].[dbo].[QuestionBank] as q join [QuizPractice].[dbo].[Lesson] as l\n"
                + "on q.l_id = l.l_id\n"
                + "join [QuizPractice].[dbo].[LessonTopic] as t\n"
                + "on l.topic_id = t.topic_id \n"
                + "join [QuizPractice].[dbo].[Subject] as s\n"
                + "on t.s_id = s.s_id\n"
                + subject + topic + level;

        try {
            conn = new DBConnection().open();
            ps = conn.prepareCall(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                Question ques = new Question();

                ques.setContent(rs.getString("question"));
                ques.setType(rs.getString("level"));
                ques.setAnswer(rs.getString("result"));
                ques.setLessonId(rs.getString("l_id"));
                ques.setImage(rs.getString("image"));
                ques.setDescription(rs.getString("description"));
                ques.setId(rs.getString("b_id"));
                Quizzes.add(ques);
            }
        } catch (SQLException ex) {
            Logger.getLogger(QuizzDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            DBConnection.close(conn, ps, rs);
            if (Quizzes != null) {
                for (int i = 0; i < Quizzes.size(); i++) {
                    Quizzes.get(i).setOptions(getOptionsById(Integer.parseInt(Quizzes.get(i).getId())));
                }
            }
            return Quizzes;
        }
    }

    //Get Quizz by User Id
    public ArrayList<Quizz> getQuizzByUserId(int id) {
        ArrayList<Quizz> quizzList = new ArrayList<>();
        String query = "select [Quiz].*, LessonTopic.[name] as topic_name, [Subject].[name] as s_name "
                + "from (([Quiz] join [LessonTopic] on Quiz.topic_id=[LessonTopic].topic_id) "
                + "join [Subject] on [LessonTopic].s_id = [Subject].s_id) "
                + "where u_id=" + id;

        try {
            conn = DBConnection.open();
            ps = conn.prepareCall(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                // Get all quizz by user Id 
                Quizz q = new Quizz();
                q.setQ_id(rs.getInt("q_id"));
                q.setU_id(rs.getInt("u_id"));
                q.setTopic_id(rs.getInt("topic_id"));
                q.setRequired_time(rs.getString("required_time"));
                q.setTaken_date(rs.getString("taken_date"));
                q.setScore(rs.getFloat("score"));
                q.setCondition(rs.getInt("condition"));
                q.setStatus(rs.getInt("status"));
                q.setTime(rs.getString("time"));
                q.setTopic_name(rs.getString("topic_name"));
                q.setS_name(rs.getString("s_name"));
                quizzList.add(q);
            }
        } catch (SQLException ex) {
            Logger.getLogger(QuizzDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            DBConnection.close(conn, ps, rs);
        }
        return quizzList;
    }

    //Get all question for admin
    public ArrayList<Question> getAllQues() {
        ArrayList<Question> quesList = new ArrayList<>();
        String query = "select [QuestionBank].*,[Lesson].name as lesson_name from [QuestionBank] "
                + "join [Lesson] on [QuestionBank].l_id=[Lesson].l_id "
                + "order by [QuestionBank].b_id "
                + "desc";
        try {
            conn = DBConnection.open();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                // Get all quizz by user Id 
                Question ques = new Question();
                ques.setId(rs.getString("b_id"));
                ques.setAnswer(rs.getString("result"));
                ques.setContent(rs.getString("question"));
                ques.setDescription(rs.getString("description"));
                ques.setImage(rs.getString("image"));
                ques.setLessonId(rs.getString("l_id"));
                ques.setType(rs.getString("level"));
                ques.setCreated_date(rs.getString("createdTime"));
                ques.setLessonName(rs.getString("lesson_name"));

                quesList.add(ques);
            }
        } catch (SQLException ex) {
            Logger.getLogger(QuizzDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            DBConnection.close(conn, ps, rs);
            if (quesList != null) {
                for (int i = 0; i < quesList.size(); i++) {
                    quesList.get(i).setOptions(getOptionsById(Integer.parseInt(quesList.get(i).getId())));
                }
            }
        }
        return quesList;
    }

    //add question into database
    public void addQuestion(Question q) {
        try {
            conn = DBConnection.open();
            String query = "SET IDENTITY_INSERT [dbo].[QuestionBank] ON\n"
                    + "INSERT into [QuestionBank] ([question], [level], [result], [l_id], [image], [description], [b_id], [createdTime]) VALUES \n"
                    + "(?,?,?,?,?,?,?,?)\n"
                    + "SET IDENTITY_INSERT [dbo].[QuestionBank] OFF";
            ps = conn.prepareCall(query);
            ps.setString(1, q.getContent());
            ps.setString(2, q.getType());
            ps.setString(3, q.getAnswer());
            ps.setString(4, q.getLessonId());
            ps.setString(5, q.getImage());
            ps.setString(6, q.getDescription());
            ps.setString(7, q.getId());
            ps.setString(8, q.getCreated_date());

            ps.executeUpdate();

        } catch (SQLException ex) {
            Logger.getLogger(BlogDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            DBConnection.close(conn, ps, rs);
        }
    }

    //add question choice into database
    public void addQuestionChoices(String quesId, String option, String created) {
        try {
            conn = DBConnection.open();
            String query = "insert into [QuestionChoices] ([QuestionId],[Option],[createdTime]) values (?,?,?)";
            ps = conn.prepareCall(query);
            ps.setString(1, quesId);
            ps.setString(2, option);
            ps.setString(3, created);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(BlogDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            DBConnection.close(conn, ps, rs);
        }
    }

    public void editQuestion(Question q) {
        try {
            conn = DBConnection.open();
            String query = "update [QuestionBank] "
                    + "set [l_id]=?, [question]=?, [result]=?, [level]=?,[description]=?, [image] "
                    + "=?,[createdTime]=? "
                    + "where [b_id] = ?";
            ps = conn.prepareCall(query);
            ps.setString(1, q.getLessonId());
            ps.setString(2, q.getContent());
            ps.setString(3, q.getAnswer());
            ps.setString(4, q.getType());
            ps.setString(5, q.getDescription());
            ps.setString(6, q.getImage());
            ps.setString(7, q.getCreated_date());
            ps.setString(8, q.getId());
            ps.executeUpdate();

        } catch (SQLException ex) {
            Logger.getLogger(BlogDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            DBConnection.close(conn, ps, rs);
        }
    }

    //delete question by id
    public void deleteQuestion(String id) {
        try {
            conn = DBConnection.open();
            String query = "delete from [QuestionBank] where [b_id]=" + id;
            ps = conn.prepareCall(query);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(BlogDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            DBConnection.close(conn, ps, rs);
        }
    }

    //delete question choice by question id
    public void deleteQuestionChoices(String quesId) {
        try {
            conn = DBConnection.open();
            String query = "delete from [QuestionChoices] where [QuestionId]=" + quesId;
            ps = conn.prepareCall(query);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(BlogDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            DBConnection.close(conn, ps, rs);
        }
    }

    //lấy toàn bộ quizz đã được thực hiện ra
    public ArrayList<Quizz> getTakenQuizzes(String condition) {
        ArrayList<Quizz> takenList = new ArrayList<>();
        String query = "SELECT  * FROM [QuizPractice].[dbo].[Quiz]" + condition;

        try {
            conn = DBConnection.open();
            ps = conn.prepareCall(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                // Get all quizz by user Id 
                Quizz q = new Quizz();
                q.setQ_id(rs.getInt(1));
                q.setU_id(rs.getInt(2));
                q.setTopic_id(rs.getInt(3));
                q.setRequired_time(rs.getString(4));
                q.setTaken_date(rs.getString(5));
                q.setScore(rs.getFloat(6));
                q.setCondition(rs.getInt(7));
                q.setStatus(rs.getInt(8));
                q.setTime(rs.getString(9));

                takenList.add(q);
            }
        } catch (SQLException ex) {
            Logger.getLogger(QuizzDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            DBConnection.close(conn, ps, rs);
        }
        return takenList;
    }

    // lưu dự liệu bài quizz
    public int saveQuizz(Quizz q) {
        String query = " insert into [QuizPractice].[dbo].[Quiz] values (?,?,?,getdate(),?,?,?,?)";
        try {
            conn = DBConnection.open();
            ps = conn.prepareCall(query);
            ps.setInt(1, q.getU_id());
            ps.setInt(2, q.getTopic_id());
            ps.setString(3, q.getRequired_time());
            ps.setFloat(4, q.getScore());
            ps.setInt(5, 1);
            ps.setInt(6, q.getCondition());
            ps.setString(7, q.getTime());
            ps.executeUpdate();

        } catch (SQLException ex) {
            Logger.getLogger(QuizzDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            DBConnection.close(conn, ps, rs);
        }
        return 0;
    }

    //lưu dữ liệu đối với mỗi câu trả lời
    public int saveQuizzDetail(QuizzTaken qt) {
        String query = "insert into [QuizPractice].[dbo].[QuizTaken] values (?,?,?,?)";
        try {
            conn = DBConnection.open();
            ps = conn.prepareCall(query);
            ps.setInt(1, qt.getB_id());
            ps.setInt(2, qt.getQ_id());
            ps.setString(3, qt.getUser_ans());
            ps.setInt(4, qt.getStatus());
            ps.executeUpdate();

        } catch (SQLException ex) {
            Logger.getLogger(QuizzDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            DBConnection.close(conn, ps, rs);
        }
        return 0;
    }

    // lấy quizz đã được thực hiện qua id
    public ArrayList<QuizzTaken> getQuizzTakenById(int id) {
        ArrayList<QuizzTaken> list = new ArrayList<>();
        for (QuizzTaken quizzTaken : getQuizzTakens()) {
            if (quizzTaken.getQ_id() == id) {
                list.add(quizzTaken);
            }
        }
        return list;
    }
//lấy toàn bộ những quizz đã được thực hiện

    public ArrayList<QuizzTaken> getQuizzTakens() {
        ArrayList<QuizzTaken> list = new ArrayList<>();
        String query = "SELECT [b_id]"
                + "      ,[q_id]\n"
                + "      ,[user_result]\n"
                + "      ,[status]\n"
                + "      ,[taken_id]\n"
                + "  FROM [QuizPractice].[dbo].[QuizTaken] ";

        try {
            conn = DBConnection.open();
            ps = conn.prepareCall(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                // Get all quizz by user Id 
                QuizzTaken q = new QuizzTaken();
                q.setB_id(rs.getInt(1));
                q.setQ_id(rs.getInt(2));
                q.setUser_ans(rs.getString(3));
                q.setStatus(rs.getInt(4));
                q.setId(rs.getInt(5));
                list.add(q);
            }
        } catch (SQLException ex) {
            Logger.getLogger(QuizzDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            DBConnection.close(conn, ps, rs);
        }
        return list;
    }
}
