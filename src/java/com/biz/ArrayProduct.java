/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.biz;

import com.connect.DBContext;
import com.entity.Product;
import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author longnd
 */
public class ArrayProduct implements Serializable{
        
    private int page;
    private int pageSize;
    private String search;
    public ArrayProduct() {
        pageSize = 3;

    }

    public String getSearch() {
        return search;
    }

    public void setSearch(String search) {
        this.search = search;
    }
    
    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    // phan trang
    public int getTotalPage() throws Exception {
        if (getTotalRow() % pageSize == 0) {
            return getTotalRow() / pageSize;
        }
        return 1 + getTotalRow() / pageSize;

    }

    // đếm số phần tử trong table 
    public int getTotalRow() throws Exception {
        Connection conn = null;
        String sql;
        ResultSet rs = null;
        PreparedStatement pre = null;
        int rows = 0;
        try {

            sql = "select count(*) from product "+ search;
             conn = new DBContext().getConnection();       
            pre = conn.prepareStatement(sql);
            rs = pre.executeQuery();
            if (rs.next()) {
                rows = rs.getInt(1);
            }
            closeDatabase(conn, rs, pre);

        } catch (Exception e) {
            closeDatabase(conn, rs, pre);
            throw e;
        }
        return rows;
    }
        
    // select all
        public ArrayList<Product> select() throws Exception {
        ArrayList<Product> product = new ArrayList<>();
        String query = "select * from product";
        Connection conn = new DBContext().getConnection();
        ResultSet rs = conn.prepareStatement(query).executeQuery();
        while (rs.next()) {
            product.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3),rs.getFloat(4), rs.getInt(5), rs.getString(6),rs.getString(7)));
        }
        rs.close();
        conn.close();
        return product;
    }
    
    // select with check where 
    public ArrayList<Product> select(String where ) throws Exception {
        ArrayList<Product> product = new ArrayList<>();
         ResultSet rs = null;
        PreparedStatement pre = null;
        if (page == 0) {
                page = 1;
            }
            if (pageSize == 0) {
                pageSize = 1;
            }
            int from = (page - 1) * pageSize + 1;
            int to = page * pageSize;
        String query = "select *from ("
                + "select"
                + "[idProduct],"
                + "[nameProduct],"
                + "[linkProduct],"
                + "[price],"
                + "[idUser],"
                + "[typeProduct],"
                + "[note],"
                + "ROW_NUMBER() over( order by [idProduct] asc) as row"
                + "  from product "+ where
                +") as a "
                 + "where a.row >= ? and a.row<=? ";;
        Connection conn = new DBContext().getConnection();
        pre = conn.prepareStatement(query);
        pre.setString(1, String.valueOf(from));
        pre.setString(2, String.valueOf(to));
         rs = pre.executeQuery();
        while (rs.next()) {
              product.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3),rs.getFloat(4), rs.getInt(5), rs.getString(6),rs.getString(7)));
        }
        rs.close();
        conn.close();
        return product;
    }
    
       public void closeDatabase(Connection conn, ResultSet rs, PreparedStatement pre) throws SQLException {

        if (rs != null && !rs.isClosed()) {
            rs.close();
        }
        if (pre != null && !pre.isClosed()) {
            pre.close();
        }
        if (conn != null && !conn.isClosed()) {
            conn.close();
        }
    }
}
