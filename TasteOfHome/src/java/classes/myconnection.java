/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author user
 */
public class myconnection {
    public Connection db;
    public myconnection()
    {
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        db=DriverManager.getConnection("jdbc:mysql://localhost/food","root", "");        
    }
    catch(final ClassNotFoundException e)
    {
        System.out.println(e.getMessage());
    }
    catch(SQLException se)
    {
        System.out.println(se.getMessage());
    }
    }
    
    
    
}
