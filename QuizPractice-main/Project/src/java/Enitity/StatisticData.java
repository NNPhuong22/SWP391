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
public class StatisticData {
    
    private int year;
    private int month;
    private int week;
    private int day;
    private int total_user;
    private int total_subject;
    private int total_earning;
    private int total_quizz;
    private int total_registered;

    public StatisticData() {
    }

    public StatisticData(int year, int month, int week, int day, int total_user, int total_subject, int total_earning, int total_quizz, int total_registered) {
        this.year = year;
        this.month = month;
        this.week = week;
        this.day = day;
        this.total_user = total_user;
        this.total_subject = total_subject;
        this.total_earning = total_earning;
        this.total_quizz = total_quizz;
        this.total_registered = total_registered;
    }

    public StatisticData(int year, int total_user, int total_subject, int total_earning, int total_quizz, int total_registered) {
        this.year = year;
        this.total_user = total_user;
        this.total_subject = total_subject;
        this.total_earning = total_earning;
        this.total_quizz = total_quizz;
        this.total_registered = total_registered;
    }

    public StatisticData(int year, int month, int total_user, int total_subject, int total_earning, int total_quizz, int total_registered) {
        this.year = year;
        this.month = month;
        this.total_user = total_user;
        this.total_subject = total_subject;
        this.total_earning = total_earning;
        this.total_quizz = total_quizz;
        this.total_registered = total_registered;
    }

    public StatisticData(int year, int month, int week, int total_user, int total_subject, int total_earning, int total_quizz, int total_registered) {
        this.year = year;
        this.month = month;
        this.week = week;
        this.total_user = total_user;
        this.total_subject = total_subject;
        this.total_earning = total_earning;
        this.total_quizz = total_quizz;
        this.total_registered = total_registered;
    }

    
    
    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public int getMonth() {
        return month;
    }

    public void setMonth(int month) {
        this.month = month;
    }

    public int getWeek() {
        return week;
    }

    public void setWeek(int week) {
        this.week = week;
    }

    public int getDay() {
        return day;
    }

    public void setDay(int day) {
        this.day = day;
    }

     

    public int getTotal_user() {
        return total_user;
    }

    public void setTotal_user(int total_user) {
        this.total_user = total_user;
    }

    public int getTotal_subject() {
        return total_subject;
    }

    public void setTotal_subject(int total_subject) {
        this.total_subject = total_subject;
    }

    public int getTotal_earning() {
        return total_earning;
    }

    public void setTotal_earning(int total_earning) {
        this.total_earning = total_earning;
    }

    public int getTotal_quizz() {
        return total_quizz;
    }

    public void setTotal_quizz(int total_quizz) {
        this.total_quizz = total_quizz;
    }

    public int getTotal_registered() {
        return total_registered;
    }

    public void setTotal_registered(int total_registered) {
        this.total_registered = total_registered;
    }
}
