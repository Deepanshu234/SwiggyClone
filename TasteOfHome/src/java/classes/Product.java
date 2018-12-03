/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;

/**
 *
 * @author user
 */
public class Product {

    public int getId() {
        return iid;
    }

    public void setId(int iid) {
        this.iid = iid;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getName() {
        return iname;
    }

    public void setName(String iname) {
        this.iname = iname;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public double getTotprice() {
        return totprice;
    }

    public void setTotprice(double totprice) {
        this.totprice = totprice;
    }
    int iid,quantity;
    String iname,description,img;
    double price,totprice;
}
