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
public class Topic {
    private int topic_id; 
    private int s_id;
    private int status;
    private String name;

    public Topic() {
    }

    public int getTopic_id() {
        return topic_id;
    }

    public int getS_id() {
        return s_id;
    }

    public int getStatus() {
        return status;
    }

    public String getName() {
        return name;
    }

    public void setTopic_id(int topic_id) {
        this.topic_id = topic_id;
    }

    public void setS_id(int s_id) {
        this.s_id = s_id;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public void setName(String name) {
        this.name = name;
    }
    
}
