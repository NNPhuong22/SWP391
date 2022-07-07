/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

/**
 *
 * @author TrungHuy
 */
public class CommonDAO {
    public static int getPercentage(double value, double total){
        return (int) ((value / total) * 100);
    }
}
