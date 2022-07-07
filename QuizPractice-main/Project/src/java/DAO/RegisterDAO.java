/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DBConnection.DBConnection;
import Enitity.Price;
import Enitity.Subject;
import Enitity.SubjectRegister;
import Enitity.User;
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
public class RegisterDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    public List<Price> getPrices(String condition) {
        List<Price> prices = new ArrayList<>();
        try {
            conn = DBConnection.open();
            if (condition.isEmpty()) {
                ps = conn.prepareStatement("select * from [QuizPractice].[dbo].[PricePackage]");
            } else {
                ps = conn.prepareStatement("select * from [PricePackage] " + condition);
            }
            rs = ps.executeQuery();
            while (rs.next()) {
                Price c = new Price();
                c.setS_id(rs.getInt("s_id"));
                c.setPrice(rs.getInt("price"));
                c.setCurrency_unit(rs.getString("currency_unit"));
                c.setDescription(rs.getString("description"));
                c.setStatus(rs.getInt("status"));
                c.setPrice_id(rs.getInt("price_id"));
                c.setDiscount(rs.getString("discount"));
                
                prices.add(c);
            }
        } catch (SQLException ex) {
            Logger.getLogger(RegisterDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            DBConnection.close(conn, ps, rs);
        }
        return prices;
    }
    public Price getPrice(String sjtId) {
        for (Price price : getPrices("")) {
            if (price.getS_id() == Integer.parseInt(sjtId)) {
                return price;
            }
        }
        return null;
    }
    
    public Price getPriceById(int p_id) {
        for (Price price : getPrices("")) {
            if (price.getPrice_id() == p_id) {
                return price;
            }
        }
        return null;
    }
    public int registSubject(User u, Subject s, Price c){
        Date date = new Date();
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd");
        String strDate = formatter.format(date);
        try {
            conn = DBConnection.open();
            String query = "Insert into SubjectRegister(price_id, register_date, u_id, status) values ("+c.getPrice_id()+", '"+ strDate  +"', "+ u.getId() +", 1)";
            ps = conn.prepareStatement(query);
            ps.executeUpdate();
            return 1;
        } catch (SQLException ex) {
            Logger.getLogger(RegisterDAO.class.getName()).log(Level.SEVERE, null, ex);
        }finally {
            DBConnection.close(conn, ps, rs);
        }
        return 0;
    }
    
    public void addRegistration(User u,Price c){
        try {
            conn = DBConnection.open();
            ps = conn.prepareCall("Insert into SubjectRegister(price_id, register_date, u_id, status) values(?,?,?,?)");
            ps.setInt(1, c.getPrice_id());
            ps.setString(2, java.time.LocalDate.now().toString());
            ps.setInt(3, u.getId());
            ps.setInt(4, 1);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(BlogDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            DBConnection.close(conn, ps, rs);
        }
    }
    public int updatePrice(Price c){
        try {
            conn = DBConnection.open();
            String query = "Update PricePackage SET price = " +c.getPrice()+" WHERE price_id="+c.getPrice_id();
            ps = conn.prepareStatement(query);
            ps.executeUpdate();
            return 1;
        } catch (SQLException ex) {
            Logger.getLogger(RegisterDAO.class.getName()).log(Level.SEVERE, null, ex);
        }finally {
            DBConnection.close(conn, ps, rs);
        }
        return 0;
    }
    public int addPrice(Price c){
        Date date = new Date();
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd");
        String strDate = formatter.format(date);
        try {
            conn = DBConnection.open();
            String query = "INSERT INTO PricePackage (s_id, [price], [status], currency_unit, createdTime) Values(" +c.getS_id()+", "+c.getPrice() + ", " + 1 + ", 'usd', '" + strDate +"')";
            ps = conn.prepareStatement(query);
            ps.executeUpdate();
            return 1;
        } catch (SQLException ex) {
            Logger.getLogger(RegisterDAO.class.getName()).log(Level.SEVERE, null, ex);
        }finally {
            DBConnection.close(conn, ps, rs);
        }
        return 0;
    }

    public ArrayList<SubjectRegister> getRegisters() {
        ArrayList<SubjectRegister> srl = new ArrayList<>();
        try {
            conn = DBConnection.open();
            ps = conn.prepareCall("SELECT sr.regis_id,u.email,s.name, pp.price,pp.discount,sr.register_date,sr.status,sr.u_id\n" +
"from SubjectRegister sr,[User] u,PricePackage pp,Subject s\n" +
" where sr.u_id = u.u_id and sr.price_id = pp.price_id and pp.s_id = s.s_id order by sr.register_date");
            rs = ps.executeQuery();
            while (rs.next()) {
                SubjectRegister temp = new SubjectRegister();
                temp.setSr_id(rs.getInt(1));
                temp.setU_email(rs.getString(2));
                temp.setName(rs.getString(3));
                temp.setPrice(rs.getInt(4));
                temp.setDiscount(rs.getInt(5));
                temp.setDate(rs.getDate(6).toString());
                temp.setStatus(rs.getInt(7));
                temp.setU_id(rs.getInt(8));
                srl.add(temp);
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            DBConnection.close(conn, ps, rs);
        }
        return srl;
    }
    
    public SubjectRegister getRegistrationById(int id){
        ArrayList<SubjectRegister> srl = this.getRegisters();
        for (SubjectRegister sr : srl) {
            if(sr.getSr_id() == id){
                return sr;
            }
        }
        return null;        
    }
    
    public void ChangeRegistratiionStatus(SubjectRegister sr){
        try {
            conn = DBConnection.open();
            ps = conn.prepareCall("update SubjectRegister set status = ?  where regis_id = ?");
            if (sr.getStatus() == 1) {
                ps.setInt(1, 0);
            } else {
                ps.setInt(1, 1);
            }
            ps.setInt(2, sr.getSr_id());
            ps.executeUpdate();

        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            DBConnection.close(conn, ps, rs);
        }
    }
    public List<Price> getPricesWithSubjectName() {
        List<Price> prices = new ArrayList<>();
        try {
            conn = DBConnection.open();
            ps = conn.prepareStatement("select s.s_id,s.name,pp.price_id,pp.price\n" +
"from Subject s, PricePackage pp\n" +
"where s.s_id = pp.s_id and s.status =1 and pp.status =1");
            
            rs = ps.executeQuery();
            while (rs.next()) {
                Price c = new Price();
                c.setS_id(rs.getInt(1));
                c.setS_name(rs.getString(2));
                c.setPrice_id(rs.getInt(3));
                c.setPrice(rs.getInt(4));                
                prices.add(c);
            }
        } catch (SQLException ex) {
            Logger.getLogger(RegisterDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            DBConnection.close(conn, ps, rs);
        }
        return prices;
    }
    
//    public static void main(String[] args) {
//        RegisterDAO rdao = new RegisterDAO();
//       List<Price> prices = rdao.getPricesWithSubjectName();
//        for (Price p : prices) {
//            System.out.println(p.getS_name());
//        }
//        
//    }
}


