/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Enitity;

/**
 *
 * @author hieu phan
 */
public class Lesson {

    protected int l_id;
    protected String name;
    protected int no;
    protected String video;
    protected String image;
    protected String content;
    protected String description;
    protected int status;
    protected String references;
    protected String documents;
    protected int topic_id;
    protected String createdTime;
    protected String topicName;

    public String getTopicName() {
        return topicName;
    }

    public void setTopicName(String topicName) {
        this.topicName = topicName;
    }

    public Lesson(int l_id, String name, int no, String video, String image, String content, String description, int status, String references, String documents, int topic_id, String createdTime) {
        this.l_id = l_id;
        this.name = name;
        this.no = no;
        this.video = video;
        this.image = image;
        this.content = content;
        this.description = description;
        this.status = status;
        this.references = references;
        this.documents = documents;
        this.topic_id = topic_id;
        this.createdTime = createdTime;
    }

    public int getL_id() {
        return l_id;
    }

    public void setL_id(int l_id) {
        this.l_id = l_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getNo() {
        return no;
    }

    public void setNo(int no) {
        this.no = no;
    }

    public String getVideo() {
        return video;
    }

    public void setVideo(String video) {
        this.video = video;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getReferences() {
        return references;
    }

    public void setReferences(String references) {
        this.references = references;
    }

    public String getDocuments() {
        return documents;
    }

    public void setDocuments(String documents) {
        this.documents = documents;
    }

    public int getTopic_id() {
        return topic_id;
    }

    public void setTopic_id(int topic_id) {
        this.topic_id = topic_id;
    }

    public String getCreatedTime() {
        return createdTime;
    }

    public void setCreatedTime(String createdTime) {
        this.createdTime = createdTime;
    }

    public Lesson() {
    }
}
