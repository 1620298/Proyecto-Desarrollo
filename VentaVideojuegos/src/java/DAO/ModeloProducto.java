/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DTO.Producto;
import MySQLconector.MySQLconexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

/**
 *
 * @author Jonathan
 */
public class ModeloProducto {
     
    public ArrayList<Producto> getAllProductos(){
        ArrayList<Producto> productos = new ArrayList<>();
        PreparedStatement pst = null;
        ResultSet rs = null;
        try {
            String sql = "call selectProductos()";
            pst = MySQLconexion.getConexion().prepareCall(sql);
            rs = pst.executeQuery();
            
            while(rs.next()){
                productos.add(new Producto(rs.getInt("id_producto"), rs.getString("nombre"), rs.getString("img_producto"), rs.getInt("id_categoria"), rs.getDouble("precio"), rs.getInt("stock")));
            }
        } catch (Exception e) {
            
        } finally{
            try {
                if(rs != null) rs.close();
                if(pst != null) pst.close();
                if(MySQLconexion.getConexion()!= null) MySQLconexion.getConexion().close();
            } catch (Exception e) {
            }
        }       
        return productos;        
    }
    
    public Producto getProducto(int id){
        Producto producto = null;
        PreparedStatement pst = null;
        ResultSet rs = null;
        try {
            String sql = "call selectProducto(?)";
            pst = MySQLconexion.getConexion().prepareCall(sql);
            pst.setInt(1, id);
            rs = pst.executeQuery();
            while(rs.next()){
                producto = new Producto(rs.getInt("id_producto"), rs.getString("nombre"), rs.getString("img_producto"), rs.getInt("id_categoria"), rs.getDouble("precio"), rs.getInt("stock"));
            }
        } catch (Exception e) {
            
        } finally{
            try {
                if(rs != null) rs.close();
                if(pst != null) pst.close();
                if(MySQLconexion.getConexion() != null) MySQLconexion.getConexion().close();
            } catch (Exception e) {
            }
        }       
        return producto;
        
    }    
    public boolean reservar(String fecha, int cantidad,int iduser,int idprod,double total){
        PreparedStatement pstm = null;
        ResultSet rs = null;
        Connection con;
        try {
            String sql = "INSERT INTO `reservar` (`Fecha_Reserva`, `Cantidad_Articulos`, `IDUsuario`, `id_producto`, `preciototal`) VALUES (?,?,?,?,?);";
            
            con=MySQLconexion.getConexion();
            pstm=con.prepareStatement(sql);
            pstm.setString(1,fecha);
            pstm.setInt(2,cantidad);
            pstm.setInt(3,iduser);
            pstm.setInt(4,idprod);
            pstm.setDouble(5,total);
            if(pstm.executeUpdate()==1){
                return true;
            }
            System.out.println("inserto");
            
        } catch (Exception e) {
            System.out.println("error"+e);
        } finally{
            try {
                if(rs != null) rs.close();
                if(pstm != null) pstm.close();
                if(MySQLconexion.getConexion()!= null) MySQLconexion.getConexion().close();
            } catch (Exception e) {
                System.out.println("error2"+e);
            }
        }       
         return false;
    }
    
    public boolean Pago(double  totalpago){
        PreparedStatement pstm = null;
        ResultSet rs = null;
        Connection con;
        String concepto="Juegos de Consola PS";
        try {
            String sql = "INSERT INTO `pago` (`Concepto_Pago`, `Total_Pago`) VALUES (?,?);";
            
            con=MySQLconexion.getConexion();
            pstm=con.prepareStatement(sql);
            pstm.setString(1,concepto);
            pstm.setDouble(2,totalpago);
            if(pstm.executeUpdate()==1){
                return true;
            }
            System.out.println("inserto");
            
        } catch (Exception e) {
            System.out.println("error"+e);
        } finally{
            try {
                if(rs != null) rs.close();
                if(pstm != null) pstm.close();
                if(MySQLconexion.getConexion()!= null) MySQLconexion.getConexion().close();
            } catch (Exception e) {
                System.out.println("error2"+e);
            }
        }       
         return false;
    }
    //VALUES (NULL, '2019-07-22', '10', '31', '1');
    /*public static void main(String[] args) {
        ModeloProducto mp=new ModeloProducto();
        for (Producto p :mp.getAllProductos()) {
            System.out.println(p.getNombre()+" "+p.getPrecio());
        }
        
    }*/
    
   /* public static void main(String[] args) {
        java.util.Date date = new java.util.Date();
//Caso 1: obtener la hora y salida por pantalla con formato:
        DateFormat hourFormat = new SimpleDateFormat("HH:mm:ss");
        System.out.println("Hora: " + hourFormat.format(date));
//Caso 2: obtener la fecha y salida por pantalla con formato:
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        String fecha=dateFormat.format(date);
        System.out.println("Fecha: " + fecha);
//Caso 3: obtenerhora y fecha y salida por pantalla con formato:
        DateFormat hourdateFormat = new SimpleDateFormat("HH:mm:ss dd/MM/yyyy");
        System.out.println("Hora y fecha: " + hourdateFormat.format(date));
        ModeloProducto mp=new ModeloProducto();
        mp.reservar(fecha, 5, 31, 2);
    }
    */
    
   /* public static void main(String[] args) {
        ModeloProducto mp=new ModeloProducto();
        mp.Pago(150);
    }*/
}
