/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.biz;

import com.connect.DBContext;
import com.entity.LoginUser;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author longnd
 */
public class ArrayUserLogin  implements Serializable{
     public ArrayList<LoginUser> select() throws Exception {
        ArrayList<LoginUser> user = new ArrayList<>();
        String query = "select * from loginUser";
        Connection conn = new DBContext().getConnection();
        ResultSet rs = conn.prepareStatement(query).executeQuery();
        while (rs.next()) {
            user.add(new LoginUser( rs.getString(2), rs.getString(3),rs.getInt(4)));
        }
        rs.close();
        conn.close();
        return user;
    }
     
 
}
