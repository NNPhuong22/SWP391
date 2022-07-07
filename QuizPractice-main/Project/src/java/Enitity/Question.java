/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Enitity;

import java.util.ArrayList;

/**
 *
 * @author TrungHuy
 */
public class Question {

    private String content;
    private String type;
    private String answer;
    private String lessonId;
    private String image;
    private String description;
    private String id;
    private ArrayList<String> options = new ArrayList<>();
    private String created_date;
    private String lessonName;
    private boolean status = false;
    public Question() {
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public Question(String content, String type, String answer, String lessonId, String image, String description, String id) {
        this.content = content;
        this.type = type;
        this.answer = answer;
        this.lessonId = lessonId;
        this.image = image;
        this.description = description;
        this.id = id;
    }

    public Question(String content, String type, String answer, String lessonId, String image, String description, String id, String created_date) {
        this.content = content;
        this.type = type;
        this.answer = answer;
        this.lessonId = lessonId;
        this.image = image;
        this.description = description;
        this.id = id;
        this.created_date = created_date;
    }
    

    public void setLessonName(String lessonName) {
        this.lessonName = lessonName;
    }

    public String getLessonName() {
        return lessonName;
    }

    public String getCreated_date() {
        return created_date;
    }

    public void setCreated_date(String created_date) {
        this.created_date = created_date;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }

    public String getLessonId() {
        return lessonId;
    }

    public void setLessonId(String lessonId) {
        this.lessonId = lessonId;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public ArrayList<String> getOptions() {
        return options;
    }

    public void setOptions(ArrayList<String> options) {
        this.options = options;
    }

}
