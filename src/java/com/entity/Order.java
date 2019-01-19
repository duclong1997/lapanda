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
public class Order {
    private int idOder;
    private String nameProduct;
    private String nameCustomer;
    private int phoneNumber;
    private String addressCustomer;
    private String timeOrder;
    private int quality;

    public Order(int idOder, String nameProduct, String nameCustomer ,int phoneNumber, String addressCustomer,String timeOrder, int quality) {
        this.idOder = idOder;
        this.nameProduct=nameProduct;
        this.nameCustomer = nameCustomer;
        this.phoneNumber = phoneNumber;
        this.addressCustomer = addressCustomer;
        this.quality = quality;
        this.timeOrder= timeOrder;
    }

    public String getTimeOrder() {
        return timeOrder;
    }

    public void setTimeOrder(String timeOrder) {
        this.timeOrder = timeOrder;
    }

    public int getIdOder() {
        return idOder;
    }

    public void setIdOder(int idOder) {
        this.idOder = idOder;
    }

    public String getNameCustomer() {
        return nameCustomer;
    }

    public void setNameCustomer(String nameCustomer) {
        this.nameCustomer = nameCustomer;
    }

    public int getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(int phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getAddressCustomer() {
        return addressCustomer;
    }

    public void setAddressCustomer(String addressCustomer) {
        this.addressCustomer = addressCustomer;
    }

    public int getQuality() {
        return quality;
    }

    public void setQuality(int quality) {
        this.quality = quality;
    }

    public String getNameProduct() {
        return nameProduct;
    }

    public void setNameProduct(String nameProduct) {
        this.nameProduct = nameProduct;
    }
    
    
}
