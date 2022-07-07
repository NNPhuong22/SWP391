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
public class SubjectCat {
    protected String name;
    protected int status;
    protected int catId;

    public SubjectCat() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getCatId() {
        return catId;
    }

    public void setCatId(int catId) {
        this.catId = catId;
    }

    public SubjectCat(String name) {
        this.name = name;
    }

    public SubjectCat(String name, int status) {
        this.name = name;
        this.status = status;
    }
    
}
