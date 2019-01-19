/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.biz;

import com.entity.Iteam;
import java.util.ArrayList;

/**
 *
 * @author longnd
 */
public class ArrayIteam {
    private ArrayList <Iteam> iteam= new ArrayList();
    private double sum;

    public ArrayIteam() {
       
    }

    public ArrayList<Iteam> getIteam() {
        return iteam;
    }

    public void setIteam(ArrayList<Iteam> iteam) {
        this.iteam = iteam;
    }

    // tinh tong so san pham duoc chon
    public void addMoreQuality(int times, int i)
    {
        iteam.get(i).setQualityIteam(iteam.get(i).getQualityIteam()+times);
    }
    
    public double getSum() {
        sum=0.0;
        for (int i=0;i<iteam.size();i++)
        {
            sum=sum+ iteam.get(i).getPriceIteam()*iteam.get(i).getQualityIteam();
        }
        return sum;
    }

    public void setSum(double sum) {
        this.sum = sum;
    }

    // remove iteam
    public void delteIteam(int id) {
       // System.out.println(iteam.size());
        for (int i = 0; i < iteam.size(); i++) {
            if (iteam.get(i).getIdIteam() == id) {
                iteam.remove(iteam.get(i));

            }
        }
    }

}
