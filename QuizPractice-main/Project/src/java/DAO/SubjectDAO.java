/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;
//jjjjjkkkkk

import DBConnection.DBConnection;
import Enitity.Lesson;
import Enitity.Subject;
import Enitity.SubjectCat;
import Enitity.SubjectRegister;
import Enitity.SubjectType;
import Enitity.Topic;
import Enitity.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author VietThang
 */
public class SubjectDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Subject> getSubjects(String condition) {
        List<Subject> subjects = new ArrayList<>();
        try {
            conn = DBConnection.open();
            if (condition.isEmpty()) {
                ps = conn.prepareStatement("select * from [QuizPractice].[dbo].[Subject] WHERE status=1 ");
            } else {
                ps = conn.prepareStatement("select * from [Subject] " + condition + " and status = 1");
            }
            rs = ps.executeQuery();
            while (rs.next()) {
                Subject s = new Subject();
                s.setS_id(rs.getInt("s_id"));
                s.setName(rs.getString("name"));
                s.setImage(rs.getString("image"));
                s.setInstructor_id(rs.getInt("instructor_id"));
                s.setDescription(rs.getString("description"));
                s.setLogo(rs.getString("logo"));
                s.setOrganization(rs.getString("organization"));
                s.setStatus(rs.getInt("status"));
                s.setType_id(rs.getInt("typeID"));

                subjects.add(s);
            }
        } catch (SQLException ex) {
            Logger.getLogger(SubjectDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            DBConnection.close(conn, ps, rs);
        }
        return subjects;
    }

    //get simple subject (only s_id, s_name)
    public ArrayList<Subject> getSimpleSubjects(String condition) {
        ArrayList<Subject> subjects = new ArrayList<>();
        try {
            conn = DBConnection.open();
            if (condition.isEmpty()) {
                ps = conn.prepareStatement("select * from [QuizPractice].[dbo].[Subject]");
            } else {
                ps = conn.prepareStatement("select * from [Subject] " + condition);
            }
            rs = ps.executeQuery();
            while (rs.next()) {
                Subject s = new Subject();
                s.setS_id(rs.getInt("s_id"));
                s.setName(rs.getString("name"));

                subjects.add(s);
            }
        } catch (SQLException ex) {
            Logger.getLogger(SubjectDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            DBConnection.close(conn, ps, rs);
        }
        return subjects;
    }

    //
    public List<SubjectRegister> getSubjectsRegisterByUser(String condition, int uid) {
        List<SubjectRegister> subjects = new ArrayList<>();
        String userCondition = "";
        if (uid > 0) {
            userCondition = "and SubjectRegister.u_id = " + uid;
        }

        try {
            conn = DBConnection.open();
            String query = " select SubjectRegister.u_id,Subject.description, Subject.name,Subject.typeID,Subject.instructor_id,Subject.image,Subject.logo,Subject.\n"
                    + "  organization, Subject.s_id, PricePackage.price, PricePackage.currency_unit,\n"
                    + "   SubjectRegister.[status], SubjectRegister.register_date\n"
                    + "  from ((PricePackage INNER JOIN [Subject] on [Subject].s_id=PricePackage.s_id) \n"
                    + "  inner join SubjectRegister on SubjectRegister.price_id= PricePackage.price_id)\n"
                    + "   where SubjectRegister.[status]='1'" + userCondition + condition;
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            if (rs != null) {

                while (rs.next()) {

                    SubjectRegister s = new SubjectRegister();
                    s.setS_id(rs.getInt("s_id"));
                    s.setName(rs.getString("name"));
                    s.setImage(rs.getString("image"));
                    s.setInstructor_id(rs.getInt("instructor_id"));
                    s.setDescription(rs.getString("description"));
                    s.setLogo(rs.getString("logo"));
                    s.setOrganization(rs.getString("organization"));
                    s.setStatus(rs.getInt("status"));
                    s.setType_id(rs.getInt("typeID"));
                    s.setCurrency(rs.getString("currency_unit"));
                    s.setDate(rs.getString("register_date"));
                    s.setPrice(rs.getInt("Price"));

                    subjects.add(s);
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(SubjectDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            DBConnection.close(conn, ps, rs);
        }
        return subjects;
    }

    public List<SubjectRegister> getSubjectsRegisterOfExpert(String condition) {
        List<SubjectRegister> subjects = new ArrayList<>();

        try {
            conn = DBConnection.open();
            String query = " select SubjectRegister.u_id,Subject.description, Subject.name,Subject.typeID,Subject.instructor_id,Subject.image,Subject.logo,Subject.\n"
                    + "  organization, Subject.s_id, PricePackage.price, PricePackage.currency_unit,\n"
                    + "   SubjectRegister.[status], SubjectRegister.register_date\n"
                    + "  from ((PricePackage INNER JOIN [Subject] on [Subject].s_id=PricePackage.s_id) \n"
                    + "  inner join SubjectRegister on SubjectRegister.price_id= PricePackage.price_id)\n"
                    + "   where SubjectRegister.[status]='1'" + condition;
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            
            while (rs.next()) {

                SubjectRegister s = new SubjectRegister();
                s.setS_id(rs.getInt("s_id"));
                s.setName(rs.getString("name"));
                s.setImage(rs.getString("image"));
                s.setInstructor_id(rs.getInt("instructor_id"));
                s.setDescription(rs.getString("description"));
                s.setLogo(rs.getString("logo"));
                s.setOrganization(rs.getString("organization"));
                s.setStatus(rs.getInt("status"));
                s.setType_id(rs.getInt("typeID"));
                s.setCurrency(rs.getString("currency_unit"));
                s.setDate(rs.getString("register_date"));
                s.setPrice(rs.getInt("price"));
               
                subjects.add(s);

            }
        } catch (SQLException ex) {
            Logger.getLogger(SubjectDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            DBConnection.close(conn, ps, rs);
        }
        return subjects;
    }

    public Subject getSubject(String sjtId) {
        for (Subject subject : getSubjects("")) {
            if (subject.getS_id() == Integer.parseInt(sjtId)) {
                return subject;
            }
        }
        return null;
    }

    public static void main(String[] args) {
        SubjectDAO dao = new SubjectDAO();
        List<SubjectRegister> list = dao.getSubjectsRegisterByUser("", 200);
        for (SubjectRegister o : list) {
            System.out.println(o.getName() + " " + o.getType_id());
        }
    }

    public List<SubjectCat> getSubjectCat(String condition) {
        List<SubjectCat> cats = new ArrayList<>();
        try {
            conn = DBConnection.open();
            if (condition.isEmpty()) {
                ps = conn.prepareStatement("select * from [QuizPractice].[dbo].[SubjectCategory]");
            } else {
                ps = conn.prepareStatement("select * from [SubjectCategory] " + condition);
            }
            rs = ps.executeQuery();
            while (rs.next()) {
                SubjectCat sc = new SubjectCat();
                sc.setCatId(rs.getInt("cat_id"));
                sc.setName(rs.getString("name"));
                sc.setStatus(rs.getInt("status"));
                cats.add(sc);
            }
        } catch (SQLException ex) {
            Logger.getLogger(SubjectDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            DBConnection.close(conn, ps, rs);
        }
        return cats;
    }

    public List<SubjectType> getSubjectType(String condition) {
        List<SubjectType> types = new ArrayList<>();
        try {
            conn = DBConnection.open();
            if (condition.isEmpty()) {
                ps = conn.prepareStatement("select * from [QuizPractice].[dbo].[SubjectType]");
            } else {
                ps = conn.prepareStatement("select * from [SubjectType] " + condition);
            }
            rs = ps.executeQuery();
            while (rs.next()) {
                SubjectType st = new SubjectType();
                st.setId(rs.getInt("typeID"));
                st.setStatus(rs.getInt("status"));
                st.setName(rs.getString("name"));
                st.setCat_id(rs.getInt("cat_id"));
                types.add(st);
            }
        } catch (SQLException ex) {
            Logger.getLogger(SubjectDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            DBConnection.close(conn, ps, rs);
        }
        return types;
    }

    // get topic of subject registed
    public List<Topic> getTopicBySubejectId(int s_id) {
        List<Topic> topic = new ArrayList<>();
        try {
            conn = DBConnection.open();
            // !!!!!!!----User ID = 16-------!!!
            String query = "select * from [LessonTopic] where s_id = '" + s_id + "'";
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                Topic t = new Topic();
                t.setTopic_id(rs.getInt("topic_id"));
                t.setS_id(rs.getInt("s_id"));
                t.setStatus(rs.getInt("status"));
                t.setName(rs.getString("name"));

                topic.add(t);

            }
        } catch (SQLException ex) {
            Logger.getLogger(SubjectDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            DBConnection.close(conn, ps, rs);
        }
        return topic;
    }

    // get subject (add price, expert name, type name
    public List<Subject> getCompleteSubjects(String condition) {
        List<Subject> subjects = new ArrayList<>();
        try {
            conn = DBConnection.open();
            String query = "select [Subject].*,[PricePackage].price,[PricePackage].currency_unit,[PricePackage].discount,[User].first_name,[User].last_name from [Subject] "
                    + "join [PricePackage] on [Subject].s_id=[PricePackage].s_id "
                    + "join [User] on [Subject].instructor_id=[User].u_id "
                    + " where [PricePackage].[status]=1 and [Subject].[status]=1 ";
            if (condition.isEmpty()) {
                ps = conn.prepareStatement(query);
            } else {
                ps = conn.prepareStatement(query + condition);
            }
            rs = ps.executeQuery();
            while (rs.next()) {
                Subject s = new Subject();
                s.setS_id(rs.getInt("s_id"));
                s.setName(rs.getString("name"));
                s.setImage(rs.getString("image"));
                s.setInstructor_id(rs.getInt("instructor_id"));
                s.setDescription(rs.getString("description"));
                s.setLogo(rs.getString("logo"));
                s.setOrganization(rs.getString("organization"));
                s.setStatus(rs.getInt("status"));
                s.setType_id(rs.getInt("typeID"));
                s.setPrice(rs.getInt("price"));
                s.setDiscount(rs.getInt("discount"));
                s.setCurrency_unit(rs.getString("currency_unit"));
                s.setInstructor_first_name(rs.getString("first_name"));
                s.setInstructor_last_name(rs.getString("last_name"));

                subjects.add(s);
            }
        } catch (SQLException ex) {
            Logger.getLogger(SubjectDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            DBConnection.close(conn, ps, rs);
        }
        return subjects;
    }

    //lấy toàn bộ subject informatio
    public List<Subject> getCompleteSubjects() {
        List<Subject> subjects = new ArrayList<>();
        try {
            conn = DBConnection.open();
            String query = "select [Subject].*,[PricePackage].price,[PricePackage].currency_unit,[PricePackage].discount,[User].first_name,[User].last_name from [Subject] "
                    + "join [PricePackage] on [Subject].s_id=[PricePackage].s_id "
                    + "join [User] on [Subject].instructor_id=[User].u_id "
                    + " where [PricePackage].[status]=1";

            ps = conn.prepareStatement(query);

            rs = ps.executeQuery();
            while (rs.next()) {
                Subject s = new Subject();
                s.setS_id(rs.getInt("s_id"));
                s.setName(rs.getString("name"));
                s.setImage(rs.getString("image"));
                s.setInstructor_id(rs.getInt("instructor_id"));
                s.setDescription(rs.getString("description"));
                s.setLogo(rs.getString("logo"));
                s.setOrganization(rs.getString("organization"));
                s.setStatus(rs.getInt("status"));
                s.setType_id(rs.getInt("typeID"));
                s.setPrice(rs.getInt("price"));
                s.setDiscount(rs.getInt("discount"));
                s.setCurrency_unit(rs.getString("currency_unit"));
                s.setInstructor_first_name(rs.getString("first_name"));
                s.setInstructor_last_name(rs.getString("last_name"));

                subjects.add(s);
            }
        } catch (SQLException ex) {
            Logger.getLogger(SubjectDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            DBConnection.close(conn, ps, rs);
        }
        return subjects;
    }

    // get all lesson for admin
    public ArrayList<Lesson> getAllLessons(String condition) {
        ArrayList<Lesson> lessonList = new ArrayList<>();
        try {
            conn = DBConnection.open();
            String query = "select * from [Lesson]";
            if (condition.isEmpty()) {
                ps = conn.prepareStatement(query);
            } else {
                ps = conn.prepareStatement(query + condition);
            }
            rs = ps.executeQuery();
            while (rs.next()) {
                Lesson l = new Lesson();
                l.setL_id(rs.getInt("l_id"));
                l.setName(rs.getString("name"));
                l.setNo(rs.getInt("no"));
                l.setVideo(rs.getString("video"));
                l.setImage(rs.getString("image"));
                l.setContent(rs.getString("content"));
                l.setDescription(rs.getString("description"));
                l.setStatus(rs.getInt("status"));
                l.setReferences(rs.getString("references"));
                l.setDocuments(rs.getString("documents"));
                l.setTopic_id(rs.getInt("topic_id"));
                l.setCreatedTime(rs.getString("createdTime"));
                lessonList.add(l);
            }
        } catch (SQLException ex) {
            Logger.getLogger(SubjectDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            DBConnection.close(conn, ps, rs);
        }
        return lessonList;
    }

    public ArrayList<Lesson> getSimpleLessons(String condition) {
        ArrayList<Lesson> lessonList = new ArrayList<>();
        try {
            conn = DBConnection.open();
            String query = "select * from [Lesson]";
            if (condition.isEmpty()) {
                ps = conn.prepareStatement(query);
            } else {
                ps = conn.prepareStatement(query + condition);
            }
            rs = ps.executeQuery();
            while (rs.next()) {
                Lesson l = new Lesson();
                l.setL_id(rs.getInt("l_id"));
                l.setName(rs.getString("name"));
                lessonList.add(l);
            }
        } catch (SQLException ex) {
            Logger.getLogger(SubjectDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            DBConnection.close(conn, ps, rs);
        }
        return lessonList;
    }

    public int updateSubject(Subject s) {
        Date date = new Date();
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd");
        String strDate = formatter.format(date);
        try {
            conn = DBConnection.open();
            String query = "";
            if (s.getName() != null) {
                query = "Update Subject "
                        + " SET [name] = '" + s.getName() + "', typeID = " + s.getType_id() + ", description ='" + s.getDescription() + "', status=" + s.getStatus() + ", image = '" + s.getImage() + "', organization='" + s.getOrganization() + "', logo='" + s.getLogo() + "'"
                        + " WHERE s_id=" + s.getS_id();
            } else {
                query = "Update Subject SET status = 0 " + " WHERE s_id=" + s.getS_id();

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

    public int addSubject(Subject newSubject) {
        Date date = new Date();
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd");
        String strDate = formatter.format(date);
        try {
            conn = DBConnection.open();
            String query = "";
            if (newSubject.getName() != null) {
                query = "Insert into Subject (name, typeID, instructor_id, [description], [status], [image], organization, logo, createdTime) "
                        + " Values( '" + newSubject.getName() + "', " + newSubject.getType_id() + ", " + newSubject.getInstructor_id() + ", '" + newSubject.getDescription() + "', " + newSubject.getStatus() + ",  '" + newSubject.getImage() + "', '" + newSubject.getOrganization() + "', '" + newSubject.getLogo() + "', '" + strDate + "')";
            }
            ps = conn.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            ps.executeUpdate();

            try (ResultSet generatedKeys = ps.getGeneratedKeys()) {
                if (generatedKeys.next()) {
                    return generatedKeys.getInt(1);
                } else {
                    throw new SQLException("Creating user failed, no ID obtained.");
                }
            }

        } catch (SQLException ex) {
            Logger.getLogger(RegisterDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            DBConnection.close(conn, ps, rs);
        }
        return 0;
    }
}
