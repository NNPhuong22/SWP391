/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Enitity;

import java.util.List;

/**
 *
 * @author NNPhuong
 */
public class User {

    int id;
    String role;
    String username;
    String pass;
    String status;
    String firstname;
    String lastname;
    String birthdate;
    String gender;
    String phonenum;
    String avatar;
    String email;
    String description;
    String address;
    String visa;
    String paymethod;
    String position;
    String sign;
    String company;
    String school;
    String code;
    String createTime;
    List<SubjectRegister> listCoures ;

    public List<SubjectRegister> getListCoures() {
        return listCoures;
    }

    public void setListCoures(List<SubjectRegister> listCoures) {
        this.listCoures = listCoures;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    public User() {
    }

    public User(int id, String role, String username, String pass, String status, String firstname, String lastname, String birthdate, String gender, String phonenum, String avatar, String email, String description, String address, String visa, String paymethod, String position, String sign, String company, String school, String code, String createTime) {
        this.id = id;
        this.role = role;
        this.username = username;
        this.pass = pass;
        this.status = status;
        this.firstname = firstname;
        this.lastname = lastname;
        this.birthdate = birthdate;
        this.gender = gender;
        this.phonenum = phonenum;
        this.avatar = avatar;
        this.email = email;
        this.description = description;
        this.address = address;
        this.visa = visa;
        this.paymethod = paymethod;
        this.position = position;
        this.sign = sign;
        this.company = company;
        this.school = school;
        this.code = code;
        this.createTime = createTime;
    }
    

    public User(int id, String firstname, String lastname, String birthdate, String gender, String phonenum, String avatar,  String description, String address, String visa, String paymethod, String position, String sign, String company, String school) {
        this.id = id;
        this.firstname = firstname;
        this.lastname = lastname;
        this.birthdate = birthdate;
        this.gender = gender;
        this.phonenum = phonenum;
        this.avatar = avatar;
        this.description = description;
        this.address = address;
        this.visa = visa;
        this.paymethod = paymethod;
        this.position = position;
        this.sign = sign;
        this.company = company;
        this.school = school;
    }
    public User(int id, String pass, String firstname, String lastname, String birthdate, String gender, String phonenum, String avatar,  String description, String address, String visa, String paymethod, String position, String sign, String company, String school) {
        this.id = id;
        this.pass = pass;
        this.firstname = firstname;
        this.lastname = lastname;
        this.birthdate = birthdate;
        this.gender = gender;
        this.phonenum = phonenum;
        this.avatar = avatar;
        this.description = description;
        this.address = address;
        this.visa = visa;
        this.paymethod = paymethod;
        this.position = position;
        this.sign = sign;
        this.company = company;
        this.school = school;
    }

    public User(int id, String role, String username, String pass, String status, String firstname, String lastname, String birthdate, String gender, String phonenum, String avatar, String email, String description, String address, String visa, String paymethod, String position, String sign, String company, String school) {
        this.id = id;
        this.role = role;
        this.username = username;
        this.pass = pass;
        this.status = status;
        this.firstname = firstname;
        this.lastname = lastname;
        this.birthdate = birthdate;
        this.gender = gender;
        this.phonenum = phonenum;
        this.avatar = avatar;
        this.email = email;
        this.description = description;
        this.address = address;
        this.visa = visa;
        this.paymethod = paymethod;
        this.position = position;
        this.sign = sign;
        this.company = company;
        this.school = school;
    }
 
    public User(String role, String username, String pass) {
        this.role = role;
        this.username = username;
        this.pass = pass;
    }
    public User( String username, String pass) {
        this.username = username;
        this.pass = pass;
    }

   

    public User(String username, String password, String status, String firstname, String lastname, String date, String gender, String phonenum, String avatar, String email, String position, String address, String visa, String paymethod, String position0, String sign, String company, String school) {
        this.username = username;
        this.pass = pass;
        this.status = status;
        this.firstname = firstname;
        this.lastname = lastname;
        this.birthdate = birthdate;
        this.gender = gender;
        this.phonenum = phonenum;
        this.avatar = avatar;
        this.email = email;
        this.description = description;
        this.address = address;
        this.visa = visa;
        this.paymethod = paymethod;
        this.position = position;
        this.sign = sign;
        this.company = company;
        this.school = school;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

 
    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getBirthdate() {
        return birthdate;
    }

    public void setBirthdate(String birthdate) {
        this.birthdate = birthdate;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getPhonenum() {
        return phonenum;
    }

    public void setPhonenum(String phonenum) {
        this.phonenum = phonenum;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getVisa() {
        return visa;
    }

    public void setVisa(String visa) {
        this.visa = visa;
    }

    public String getPaymethod() {
        return paymethod;
    }

    public void setPaymethod(String paymethod) {
        this.paymethod = paymethod;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public String getSign() {
        return sign;
    }

    public void setSign(String sign) {
        this.sign = sign;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public String getSchool() {
        return school;
    }

    public void setSchool(String school) {
        this.school = school;
    }


}
