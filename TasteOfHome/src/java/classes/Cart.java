/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;

import java.util.ArrayList;

/**
 *
 * @author user
 */
public class Cart {

    public ArrayList getAlCartItems() {
        return alCartItems;
    }
public void addCartItem(Product item )
{
    alCartItems.add(item);
}




public void UpdateCartItem(int index, int quantity)
{
    double total=0;
    double price=0;
    
    Product p=null;
    try
    {
        if(quantity>0)
        {
            p=(Product)alCartItems.get(index-1);
            price=p.getPrice();
            total=price*quantity;
            p.setQuantity(quantity);
            p.setTotprice(total);
            
            calculateOrderToatl();
        }
        
    }
    catch(Exception e)
        {
            System.out.println(e.getMessage());
        }
}

public void deleteCartItem(int index)
{
    try
    {
        alCartItems.remove(index-1);
        calculateOrderToatl();
    }
    catch(Exception e)
    {
        System.out.println(e.getMessage());
    }
}

public void emptyCart()
{
    alCartItems.removeAll(alCartItems);
    calculateOrderToatl();
}


    public void setAlCartItems(ArrayList alCartItems) {
        this.alCartItems = alCartItems;
    }

    public double getOrderTotal() {
        return orderTotal;
    }

    public void setOrderTotal(double orderTotal) {
        this.orderTotal = orderTotal;
    }
   
  
    
    private ArrayList alCartItems = new ArrayList();
    private double orderTotal;
    
    public void addCartItem(int iid,String iname,double cost,int quantity)
    {
        double total,price;
        int qty;
        Product cartItem=new Product();
        
        try
        {
            price=cost;
            qty=quantity;
            if(qty>0)
            {
                total=price*qty;
                cartItem.setId(iid);
                cartItem.setName(iname);
                cartItem.setPrice(price);
                cartItem.setQuantity(quantity);
                cartItem.setTotprice(total);
                alCartItems.add(cartItem);
                calculateOrderToatl();
            }
        }
        catch(Exception e)
        {
            System.out.println(e.getMessage());
        }
    }

    private void calculateOrderToatl() {
         //To change body of generated methods, choose Tools | Templates.
        double t=0;
        Product obj;
        for(int i=0;i<alCartItems.size();i++)
        {
            obj=(Product)alCartItems.get(i);
            t=t+obj.getTotprice();
        }
        setOrderTotal(t);
        
    }
    
    public boolean CheckProductExist(int id) //to check whether the product exist in cart or not
    {
     Product obj;
     for(int i=0;i<alCartItems.size();i++)
     {
         obj=(Product)alCartItems.get(i);
         if(obj.getId()==id)
         {
             return true;
         }
     }
     return false; //if no match 
    }
    
    public int getQuantity(int id)
    {
        Product obj;
        for(int i=0;i<alCartItems.size();i++)
        {
            obj=(Product)alCartItems.get(i);
            if(obj.getId()==id)
            {
                return obj.getQuantity();
            }
        }
        return 0;
    }
    
    public int getLineItemCount() //will count the number of lines in arraylist
    {
        return alCartItems.size();
    }
    
    public int getIndex(int id)
    {
        Product obj;
        for(int i=0;i<alCartItems.size();i++)
        {
            obj=(Product)alCartItems.get(i);
            if(obj.getId()==id)
            {
                return i;
            }
        }
        return 0;
    }
}
