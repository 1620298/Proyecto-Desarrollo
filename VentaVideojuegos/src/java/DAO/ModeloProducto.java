/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DTO.Producto;
import MySQLconector.MySQLconexion;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
    /*public static void main(String[] args) {
        ModeloProducto mp=new ModeloProducto();
        for (Producto p :mp.getAllProductos()) {
            System.out.println(p.getNombre()+" "+p.getPrecio());
        }
        
    }*/
    
   
}