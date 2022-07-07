/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DBConnection.DBConnection;

import Enitity.User;
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
 * @author NNPhuong
 */
public class UserDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public void register(User user) {
        User acc = new User();
        String query = "insert into [User]([role], username,[password],[status],\n"
                + "first_name,last_name,birth,gender,phone,avatar,email,[description],[address],\n"
                + "visa,paymentMethod,position,[sign],company,school,createdTime) \n"
                + "values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,GETDATE())";
        try {

            conn = new DBConnection().open();
            ps = conn.prepareStatement(query);
            ps.setString(1, "1");
            ps.setString(2, user.getUsername());
            ps.setString(3, user.getPass());
            ps.setString(4, "1");
            ps.setString(5, user.getFirstname());
            ps.setString(6, user.getLastname());
            ps.setString(7, user.getBirthdate());
            ps.setString(8, user.getGender());
            ps.setString(9, user.getPhonenum());
            ps.setString(10, user.getAvatar());
            ps.setString(11, user.getEmail());
            ps.setString(12, user.getDescription());
            ps.setString(13, user.getAddress());
            ps.setString(14, user.getVisa());
            ps.setString(15, user.getPaymethod());
            ps.setString(16, user.getPosition());
            ps.setString(17, user.getSign());
            ps.setString(18, user.getCompany());
            ps.setString(19, user.getSchool());
            ps.executeUpdate();

        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            DBConnection.close(conn, ps, rs);
        }
    }
    public void updateProfile(User user) {
        String query = "update [User] set  first_name=?,  last_name=?,birth=?,gender=?,phone=?,\n" +
"  avatar=?,\n" +
"  [description]=?,[address]=?,[visa]=?,[paymentMethod]=?,[position]=?,\n" +
"  [sign]=?,company=?,school=? where u_id = ?";
        try {

            conn = new DBConnection().open();
            ps = conn.prepareStatement(query);
            ps.setString(1, user.getFirstname());
            ps.setString(2, user.getLastname());
            ps.setString(3, user.getBirthdate());
            ps.setString(4, user.getGender());
            ps.setString(5, user.getPhonenum());
            ps.setString(6, user.getAvatar());
            ps.setString(7, user.getDescription());
            ps.setString(8, user.getAddress());
            ps.setString(9, user.getVisa());
            ps.setString(10, user.getPaymethod());
            ps.setString(11, user.getPosition());
            ps.setString(12, user.getSign());
            ps.setString(13, user.getCompany());
            ps.setString(14, user.getSchool());
            ps.setInt(15, user.getId());
            ps.executeUpdate();

        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            DBConnection.close(conn, ps, rs);
        }
    }
    public void changePass(String pass,int userID ) {
        String query = "update [User] set  [password]=? where u_id = ?";
        try {

            conn = new DBConnection().open();
            ps = conn.prepareStatement(query);
            ps.setString(1, pass);
            ps.setInt(2, userID);
            ps.executeUpdate();

        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            DBConnection.close(conn, ps, rs);
        }
    }

    public boolean isExisted(User u) {
        for (User us : GetUsers("")) {
            if (us.getStatus().equals("1")) {
                if (us.getEmail().equals(u.getEmail()) || us.getUsername().equals(u.getUsername())) {
                    return true;
                }
            }

        }
        return false;
    }

    public User getUser(User u) {
        for (User us : GetUsers("")) {
            if (us.getStatus().equals("1")) {
                if (us.getPass().equals(u.getPass()) && us.getUsername().equals(u.getUsername())) {
                    return us;
                }
            }

        }
        return null;
    }

    public ArrayList<User> GetUsers(String condition) {
        ArrayList<User> users = new ArrayList<>();

        try {
            conn = DBConnection.open();
            if (condition.isEmpty()) {
                ps = conn.prepareStatement("Select * from [QuizPractice].[dbo].[User]");
            } else {
                ps = conn.prepareStatement("Select * from [QuizPractice].[dbo].[User] " + condition);
            }
            rs = ps.executeQuery();
            while (rs.next()) {
                //nu standfor new-user
                User nu = new User();
                nu.setId(rs.getInt("u_id"));
                nu.setRole(rs.getString("role"));
                nu.setUsername(rs.getString("username"));
                nu.setPass(rs.getString("password"));
                nu.setStatus(rs.getString("status"));
                nu.setFirstname(rs.getString("first_name"));
                nu.setLastname(rs.getString("last_name"));
                nu.setBirthdate(rs.getDate("birth").toString());
                nu.setGender(rs.getString("gender"));
                nu.setPhonenum(rs.getString("phone"));
                nu.setAvatar(rs.getString("avatar"));
                nu.setEmail(rs.getString("email"));
                nu.setDescription(rs.getString("description"));
                nu.setAddress(rs.getString("address"));
                nu.setVisa(rs.getString("visa"));
                nu.setPaymethod(rs.getString("paymentMethod"));
                nu.setPosition(rs.getString("position"));
                nu.setSign(rs.getString("sign"));
                nu.setCompany(rs.getString("company"));
                nu.setSchool(rs.getString("school"));
                nu.setCreateTime(rs.getString("createdTime"));
                users.add(nu);
            }

        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            DBConnection.close(conn, ps, rs);
        }
        SubjectDAO sd = new SubjectDAO();
        for (int i = 0; i < users.size(); i++) {
            users.get(i).setListCoures(sd.getSubjectsRegisterByUser("", users.get(i).getId()));
        }
        return users;
    }
    
    public User GetUserById(int id){
        ArrayList<User> users = this.GetUsers("");
        for (User u : users) {
            if(u.getId() == id){
                return u;
            }
        }
        return null;
    }
    public ArrayList<User> GetCustomers(){
         ArrayList<User> customers = new ArrayList<>();
         ArrayList<User> users = this.GetUsers("");
         for (User u : users) {
            if(u.getRole().equals("customer")){
                customers.add(u);
            }
        }
        return customers;
    }
    

    
}
