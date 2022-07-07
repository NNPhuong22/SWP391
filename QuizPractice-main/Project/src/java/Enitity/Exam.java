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
public class Exam {
    int exam_id, u_id, s_id, number_of_question, status, pass_rate, duration;
    String created_date, level, s_name, first_name, last_name;

    public Exam() {
    }

    public Exam(int exam_id, int u_id, int s_id, int number_of_question, int status, int pass_rate, int duration, String created_date, String level) {
        this.exam_id = exam_id;
        this.u_id = u_id;
        this.s_id = s_id;
        this.number_of_question = number_of_question;
        this.status = status;
        this.pass_rate = pass_rate;
        this.duration = duration;
        this.created_date = created_date;
        this.level = level;
    }

    public String getS_name() {
        return s_name;
    }

    public String getFirst_name() {
        return first_name;
    }

    public String getLast_name() {
        return last_name;
    }

    public int getExam_id() {
        return exam_id;
    }

    public int getU_id() {
        return u_id;
    }

    public int getS_id() {
        return s_id;
    }

    public int getNumber_of_question() {
        return number_of_question;
    }

    public int getStatus() {
        return status;
    }

    public int getPass_rate() {
        return pass_rate;
    }

    public String getCreated_date() {
        return created_date;
    }

    public int getDuration() {
        return duration;
    }

    public String getLevel() {
        return level;
    }

    public void setS_name(String s_name) {
        this.s_name = s_name;
    }

    public void setFirst_name(String first_name) {
        this.first_name = first_name;
    }

    public void setLast_name(String last_name) {
        this.last_name = last_name;
    }

    public void setExam_id(int exam_id) {
        this.exam_id = exam_id;
    }

    public void setU_id(int u_id) {
        this.u_id = u_id;
    }

    public void setS_id(int s_id) {
        this.s_id = s_id;
    }

    public void setNumber_of_question(int number_of_question) {
        this.number_of_question = number_of_question;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public void setPass_rate(int pass_rate) {
        this.pass_rate = pass_rate;
    }

    public void setCreated_date(String created_date) {
        this.created_date = created_date;
    }

    public void setDuration(int duration) {
        this.duration = duration;
    }

    public void setLevel(String level) {
        this.level = level;
    }
      
}
