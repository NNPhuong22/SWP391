/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Enitity;

/**
 *
 * @author PV
 */
public class Quizz {
    private int q_id;
    private int u_id; 
    private int topic_id;
    private int status;
    private int condition;
    private String required_time; 
    private String taken_date; 
    private String time;
    private String topic_name;
    private String  s_name;
    private float score;

    public Quizz() {
        
    }

    public Quizz(int u_id, int topic_id, int condition, String required_time, String time, float score) {
        this.u_id = u_id;
        this.topic_id = topic_id;
        this.condition = condition;
        this.required_time = required_time;
        this.time = time;
        this.score = score;
    }

     

    
    public String getTopic_name() {
        return topic_name;
    }

    public String getS_name() {
        return s_name;
    }

    public int getQ_id() {
        return q_id;
    }

    public int getU_id() {
        return u_id;
    }

    public int getTopic_id() {
        return topic_id;
    }

    public int getStatus() {
        return status;
    }

    public int getCondition() {
        return condition;
    }

    public String getRequired_time() {
        return required_time;
    }

    public String getTaken_date() {
        return taken_date;
    }

    public String getTime() {
        return time;
    }

    public float getScore() {
        return score;
    }

    public void setTopic_name(String topic_name) {
        this.topic_name = topic_name;
    }

    public void setS_name(String s_name) {
        this.s_name = s_name;
    }

    public void setQ_id(int q_id) {
        this.q_id = q_id;
    }

    public void setU_id(int u_id) {
        this.u_id = u_id;
    }

    public void setTopic_id(int topic_id) {
        this.topic_id = topic_id;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public void setCondition(int condition) {
        this.condition = condition;
    }

    public void setRequired_time(String required_time) {
        this.required_time = required_time;
    }

    public void setTaken_date(String taken_date) {
        this.taken_date = taken_date;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public void setScore(float score) {
        this.score = score;
    }
    
}
