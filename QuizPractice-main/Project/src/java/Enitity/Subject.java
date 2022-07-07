/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Enitity;

/**
 *
 * @author VietThang
 */
public class Subject {
    private int s_id;
    private int type_id;
    private int instructor_id;
    private int status;
    private int price;
    private int discount;
    private String name;
    private String  description;
    private String image; 
    private String organization;
    private String  logo;
    private String  currency_unit;
    private String instructor_first_name;
    private String instructor_last_name;
    
    
    public Subject() {
    }
    public Subject(int type_id, int instructor_id, int status, String name, String description, String image, String organization, String logo) {
        this.type_id = type_id;
        this.instructor_id = instructor_id;
        this.status = status;
        this.name = name;
        this.description = description;
        this.image = image;
        this.organization = organization;
        this.logo = logo;
    }

    public Subject(int type_id, int instructor_id, int status, String name, String description, String image, String organization, String logo, int price) {
        this.type_id = type_id;
        this.instructor_id = instructor_id;
        this.status = status;
        this.name = name;
        this.description = description;
        this.image = image;
        this.organization = organization;
        this.logo = logo;
        this.price = price;
    }

    public String getCurrency_unit() {
        return currency_unit;
    }

    public int getPrice() {
        return price;
    }

    public int getDiscount() {
        return discount;
    }

    public String getInstructor_first_name() {
        return instructor_first_name;
    }

    public String getInstructor_last_name() {
        return instructor_last_name;
    }
    
    public int getS_id() {
        return s_id;
    }

    public int getType_id() {
        return type_id;
    }

    public int getInstructor_id() {
        return instructor_id;
    }

    public int getStatus() {
        return status;
    }

    public String getName() {
        return name;
    }

    public String getDescription() {
        return description;
    }

    public String getImage() {
        return image;
    }

    public String getOrganization() {
        return organization;
    }

    public String getLogo() {
        return logo;
    }

    public void setCurrency_unit(String currency_unit) {
        this.currency_unit = currency_unit;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public void setDiscount(int discount) {
        this.discount = discount;
    }

    public void setInstructor_first_name(String instructor_first_name) {
        this.instructor_first_name = instructor_first_name;
    }

    public void setInstructor_last_name(String instructor_last_name) {
        this.instructor_last_name = instructor_last_name;
    }

    public void setS_id(int s_id) {
        this.s_id = s_id;
    }

    public void setType_id(int type_id) {
        this.type_id = type_id;
    }

    public void setInstructor_id(int instructor_id) {
        this.instructor_id = instructor_id;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public void setOrganization(String organization) {
        this.organization = organization;
    }

    public void setLogo(String logo) {
        this.logo = logo;
    }
    
}
