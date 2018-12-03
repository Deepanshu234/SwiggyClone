/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;

/**
 *
 * @author sony
 */
public class buysession {

    public int getId() {
        return id;
    }
 public String getScity() {
        return scity;
    }

    public void setScity(String city) {
        this.scity = city;
    }
    public void setId(int id) {
        this.id = id;
    }

    public String getSfname() {
        return sfname;
    }

    public void setSfname(String fname) {
        this.sfname = sfname;
    }

    public String getSlname() {
        return slname;
    }

    public void setSlname(String lname) {
        this.slname = slname;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

  

    public String getSaddress() {
        return saddress;
    }

    public void setSaddress(String saddress) {
        this.saddress = saddress;
    }

   

   

    public String getSphone() {
        return sphone;
    }

    public void setSphone(String contact) {
        this.sphone = contact;
    }

  
    int id;
    String sfname,slname,username,password,saddress,state,sincode,sphone,email,scity;

   
}
