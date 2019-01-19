/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.entity;

/**
 *
 * @author longnd
 */
public class Iteam {
    private int idIteam;
    private String nameIteam;
    private double priceIteam;
    private int qualityIteam;
    private double total;
    

    public Iteam(int idIteam, String nameIteam, double priceIteam, int qualityIteam) {
        this.idIteam = idIteam;
        this.nameIteam = nameIteam;
        this.priceIteam = priceIteam;
        this.qualityIteam = qualityIteam;
    }

    public double getTotal() {
        total =priceIteam*qualityIteam;
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    
    public int getIdIteam() {
        return idIteam;
    }

    public void setIdIteam(int idIteam) {
        this.idIteam = idIteam;
    }

    public String getNameIteam() {
        return nameIteam;
    }

    public void setNameIteam(String nameIteam) {
        this.nameIteam = nameIteam;
    }

    public double getPriceIteam() {
        return priceIteam;
    }

    public void setPriceIteam(double priceIteam) {
        this.priceIteam = priceIteam;
    }

    public int getQualityIteam() {
        return qualityIteam;
    }

    public void setQualityIteam(int qualityIteam) {
        this.qualityIteam = qualityIteam;
    }
    
}
