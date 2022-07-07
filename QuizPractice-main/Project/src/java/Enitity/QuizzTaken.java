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
public class QuizzTaken  {
 private int b_id;
 private  int q_id;
 private String user_ans;
 private  int status;
 private int id;

    public QuizzTaken(int b_id, int q_id, String user_ans, int status, int id) {
        this.b_id = b_id;
        this.q_id = q_id;
        this.user_ans = user_ans;
        this.status = status;
        this.id = id;
    }
  public QuizzTaken(int b_id, int q_id, String user_ans, int status ) {
        this.b_id = b_id;
        this.q_id = q_id;
        this.user_ans = user_ans;
        this.status = status;
        
    }

    public QuizzTaken() {
        
    }
    public int getB_id() {
        return b_id;
    }

    public void setB_id(int b_id) {
        this.b_id = b_id;
    }

    public int getQ_id() {
        return q_id;
    }

    public void setQ_id(int q_id) {
        this.q_id = q_id;
    }

    public String getUser_ans() {
        return user_ans;
    }

    public void setUser_ans(String user_ans) {
        this.user_ans = user_ans;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    
}
