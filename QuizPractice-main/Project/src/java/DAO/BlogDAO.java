/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DBConnection.DBConnection;
import Enitity.Blog;
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
 * @author HP
 */
public class BlogDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    PreparedStatement ps2 = null;
    PreparedStatement ps3 = null;
    ResultSet rs = null;

    public ArrayList<Blog> GetBlogs(int mode) {
        ArrayList<Blog> bl = new ArrayList<>();
        try {
            conn = DBConnection.open();
            if (mode == 1) {
                ps = conn.prepareCall("SELECT * FROM [QuizPractice].[dbo].[Blog] where status = 1 order by time desc ");
            } else {
                ps = conn.prepareCall("SELECT * FROM [QuizPractice].[dbo].[Blog] order by time desc ");
            }

            rs = ps.executeQuery();
            while (rs.next()) {
                //nu standfor new-user
                Blog b = new Blog();
                b.setId(rs.getInt(1));
                b.setTitle(rs.getString(2));
                b.setTypeId(rs.getInt(3));
                b.setAuthor(rs.getInt(4));
                b.setDate(rs.getDate(5).toString());
                b.setType(rs.getString(6));
                b.setStatus(rs.getInt(7));
                b.setContent(rs.getString(8));
                b.setModifier(rs.getInt(9));
                b.setDescription(rs.getString(10));
                b.setImage(rs.getString(11));
                bl.add(b);
            }

        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            DBConnection.close(conn, ps, rs);
        }
        return bl;
    }

    public Blog GetBlogById(int id) {
        ArrayList<Blog> bl = this.GetBlogs(0);
        for (Blog b : bl) {
            if (b.getId() == id) {
                return b;
            }
        }
        return null;
    }

    public ArrayList<Blog> GetBlogsByCategory(String category) {
        ArrayList<Blog> bl = new ArrayList<>();
        try {
            conn = DBConnection.open();
            ps = conn.prepareCall("SELECT * FROM [QuizPractice].[dbo].[Blog] where type like " + "'" + category + "'" + "order by time desc ");
            rs = ps.executeQuery();
            while (rs.next()) {
                //nu standfor new-user
                Blog b = new Blog();
                b.setId(rs.getInt(1));
                b.setTitle(rs.getString(2));
                b.setTypeId(rs.getInt(3));
                b.setAuthor(rs.getInt(4));
                b.setDate(rs.getDate(5).toString());
                b.setType(rs.getString(6));
                b.setStatus(rs.getInt(7));
                b.setContent(rs.getString(8));
                b.setModifier(rs.getInt(9));
                b.setDescription(rs.getString(10));
                b.setImage(rs.getString(11));
                bl.add(b);
            }

        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            DBConnection.close(conn, ps, rs);
        }
        return bl;
    }

    public ArrayList<String> GetBlogCategory() {
        ArrayList<String> cl = new ArrayList<>();
        try {
            conn = DBConnection.open();
            ps = conn.prepareCall("SELECT distinct type from blog");
            rs = ps.executeQuery();
            while (rs.next()) {
                String temp = rs.getString("type");
                cl.add(temp);
            }

        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            DBConnection.close(conn, ps, rs);
        }
        return cl;
    }

    public void AddBlog(Blog b) {
        try {
            conn = DBConnection.open();
            ps = conn.prepareCall("insert into Blog(title,author,time,type,status,content,description) values(?,?,?,?,?,?,?)");
            ps.setString(1, b.getTitle());
            ps.setInt(2, b.getAuthor());
            ps.setString(3, java.time.LocalDate.now().toString());
            ps.setString(4, b.getType());
            ps.setInt(5, 1);
            ps.setString(6, b.getContent());
            ps.setString(7, b.getDescription());
            ps.executeUpdate();
            if (b.getTypeId() != 0) {
                ps2 = conn.prepareCall("update Blog set typeID = ? where title = ?");
                ps2.setInt(1, b.getTypeId());
                ps2.setString(2, b.getTitle());
                ps2.executeUpdate();
            }
            if (b.getImage() != null) {
                ps3 = conn.prepareCall("update Blog set image = ? where title = ?");
                ps3.setString(1, b.getImage());
                ps3.setString(2, b.getTitle());
                ps3.executeUpdate();
            }

        } catch (SQLException ex) {
            Logger.getLogger(BlogDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            DBConnection.close(conn, ps, rs);
        }
    }

    public void ChangeBlogStatus(Blog b) {
        try {
            conn = DBConnection.open();
            ps = conn.prepareCall("update Blog set status = ? where blog_id = ?");
            if (b.getStatus() == 1) {
                ps.setInt(1, 0);
            } else {
                ps.setInt(1, 1);
            }
            ps.setInt(2, b.getId());
            ps.executeUpdate();

        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            DBConnection.close(conn, ps, rs);
        }
    }

    public void UpdateBlog(Blog oldBlog, Blog newBlog) { // them modifier khi có session
        try {
            conn = DBConnection.open();
            ps = conn.prepareCall("update Blog set title = ?,time = ?,type = ?,content = ?,description = ?,modifier = ?  where blog_id = ?");
            ps.setString(1, newBlog.getTitle());
            ps.setString(2, java.time.LocalDate.now().toString());
            ps.setString(3, newBlog.getType());
            ps.setString(4, newBlog.getContent());
            ps.setString(5, newBlog.getDescription());
            ps.setInt(6, newBlog.getAuthor());    //  sủa lại sau
            ps.setInt(7, oldBlog.getId());
            ps.executeUpdate();
            if (newBlog.getTypeId() != 0) {
                ps2 = conn.prepareCall("update Blog set typeID = ? where blog_id = ?");
                ps2.setInt(1, newBlog.getTypeId());
                ps2.setInt(2, oldBlog.getId());
                ps2.executeUpdate();
            }
            if (newBlog.getImage() != null) {
                ps3 = conn.prepareCall("update Blog set image = ? where blog_id = ?");
                ps3.setString(1, newBlog.getImage());
                ps3.setInt(2, oldBlog.getId());
                ps3.executeUpdate();
            }

        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            DBConnection.close(conn, ps, rs);
        }
    }

//    public static void main(String[] args) {
//        BlogDAO bdao = new BlogDAO();
//        Blog bo = bdao.GetBlogById(16);
//        Blog bn = new Blog("test6", 3, "learning", "lan 6 do", "6");
//        bn.setTypeId(3);
//        bn.setImage("https://interactive-examples.mdn.mozilla.net/media/cc0-images/grapefruit-slice-332-332.jpg");
//        bdao.UpdateBlog(bo, bn);
//
//    }
    public static void main(String[] args) {
        RegisterDAO rdao = new RegisterDAO();
        ArrayList<SubjectRegister> srl = rdao.getRegisters();
        for(SubjectRegister sr : srl) {
            System.out.println(sr.getName()+" "+sr.getDiscount());
        }
    }
}
