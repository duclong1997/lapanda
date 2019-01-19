/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.biz;

import com.connect.DBContext;
import com.entity.Order;
import java.io.Serializable;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;


public class ArrayOrderBy implements Serializable{
    public ArrayList<Order> select(int where) throws Exception {
        ArrayList<Order> order = new ArrayList<>();
        String query = "select b.idOrder,a.nameProduct ,b.nameCustomer, b.phoneNumber,b.adressCustomer,b.timeOrder, b.quality from product as a join orderProduct as b \n"
                + "on a.idProduct = b.idProduct\n"
                + "where a.idUser=" + where;
        Connection conn = new DBContext().getConnection();
        ResultSet rs = conn.prepareStatement(query).executeQuery();
        while (rs.next()) {
            order.add(new Order(rs.getInt(1),rs.getString(2), rs.getString(3), rs.getInt(4), rs.getString(5) , rs.getString(6), rs.getInt(7)));
        }
        rs.close();
        conn.close();
        return order;
    }
}
