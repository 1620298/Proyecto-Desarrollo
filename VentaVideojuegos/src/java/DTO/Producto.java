/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DTO;

/**
 *
 * @author MI PC
 */
public class Producto {
    private int id;
    private String nombre;
    private String img;
    private int categoria;
    private double precio;
    private int  stock;

    public Producto() {
    }

    public Producto(int id, String nombre, String img, int categoria, double precio, int stock) {
        this.id = id;
        this.nombre = nombre;
        this.img = img;
        this.categoria = categoria;
        this.precio = precio;
        this.stock = stock;
    }
    
    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public int getCategoria() {
        return categoria;
    }

    public void setCategoria(int categoria) {
        this.categoria = categoria;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }
    
}
