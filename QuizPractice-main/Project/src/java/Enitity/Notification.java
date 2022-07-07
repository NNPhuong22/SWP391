/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Enitity;

/**
 *
 * @author TrungHuy
 */
public class Notification {

    private int id;
    private String title;
    private String des;

    private String time;

    public Notification(String title, String des) {
        this.title = title;
        this.des = des;
    }

    public Notification(int id, String title, String des, String time) {
        this.id = id;
        this.title = title;
        this.des = des;
        this.time = time;
    }

    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDes() {
        return des;
    }

    public void setDes(String des) {
        this.des = des;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

}
