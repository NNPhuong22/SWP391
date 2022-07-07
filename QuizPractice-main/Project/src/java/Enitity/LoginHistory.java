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
public class LoginHistory {

    private int id;
    private int uid;
    private String date;
    private String OS;
    private String brower;

    public LoginHistory(int id, int uid, String date, String OS, String brower) {
        this.id = id;
        this.uid = uid;
        this.date = date;
        this.OS = OS;
        this.brower = brower;
    }

    public LoginHistory(int uid, String brower) {
        this.uid = uid;
        this.OS = System.getProperty("os.name");

        this.brower = brower;
    }

    public LoginHistory() {
        this.OS = System.getProperty("os.name");
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getOS() {
        return OS;
    }

    public void setOS(String OS) {
        this.OS = OS;
    }

    public String getBrower() {
        return brower;
    }

    public void setBrower(String brower) {
        this.brower = brower;
    }
}
