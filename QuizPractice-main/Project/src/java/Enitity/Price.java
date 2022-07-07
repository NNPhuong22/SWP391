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
public class Price {
    protected String s_name;
    protected int price_id;
    protected int price;
    protected int s_id;
    protected int status;
    protected String currency_unit;
    protected String discount;
    protected String description;

    public Price() {
    }

    public Price(int price_id, int price, int s_id, int status, String currency_unit, String discount, String description) {
        this.price_id = price_id;
        this.price = price;
        this.s_id = s_id;
        this.status = status;
        this.currency_unit = currency_unit;
        this.discount = discount;
        this.description = description;
    }

    public int getPrice_id() {
        return price_id;
    }

    public void setPrice_id(int price_id) {
        this.price_id = price_id;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getS_id() {
        return s_id;
    }

    public void setS_id(int s_id) {
        this.s_id = s_id;
    }

    public String getCurrency_unit() {
        return currency_unit;
    }

    public void setCurrency_unit(String currency_unit) {
        this.currency_unit = currency_unit;
    }

    public String getDiscount() {
        return discount;
    }

    public void setDiscount(String discount) {
        this.discount = discount;
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

    public Price(int price_id, int price, int s_id, String currency_unit, String discount, String description) {
        this.price_id = price_id;
        this.price = price;
        this.s_id = s_id;
        this.currency_unit = currency_unit;
        this.discount = discount;
        this.description = description;
    }

    public String getS_name() {
        return s_name;
    }

    public void setS_name(String s_name) {
        this.s_name = s_name;
    }
}
