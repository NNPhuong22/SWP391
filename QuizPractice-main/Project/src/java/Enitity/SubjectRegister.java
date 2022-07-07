/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Enitity;

/**
 *
 * @author NNPhuong
 */
public class SubjectRegister extends Subject{
     private int sr_id;
     private String currency;
     private String date;
     private String u_email;
     private int u_id;
    public SubjectRegister() {
    }

    public SubjectRegister(int price, String currency, String date, int type_id, int instructor_id, int status, String name, String description, String image, String organization, String logo) {

        super(type_id, instructor_id, status, name, description, image, organization, logo, price);
        this.currency = currency;
        this.date = date;
    }

    public String getCurrency() {
        return currency;
    }

    public void setCurrency(String currency) {
        this.currency = currency;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public int getSr_id() {
        return sr_id;
    }

    public void setSr_id(int sr_id) {
        this.sr_id = sr_id;
    }   

    public String getU_email() {
        return u_email;
    }

    public void setU_email(String u_email) {
        this.u_email = u_email;
    }

    public int getU_id() {
        return u_id;
    }

    public void setU_id(int u_id) {
        this.u_id = u_id;
    }  
}
