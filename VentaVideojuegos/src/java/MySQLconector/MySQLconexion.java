/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MySQLconector;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author MI PC
 */
public class MySQLconexion {
   
    static {
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }   
    }
    
    public static  Connection getConexion(){
        Connection con=null;
        try {
            con=DriverManager.getConnection("jdbc:mysql://localhost/bdjuegos","root","72772287");
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return con;
    }
    
    
    public static void main(String[] args) {
        getConexion();
    }
}
