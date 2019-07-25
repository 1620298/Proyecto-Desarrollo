/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador_Servlets;

import DAO.ModeloProducto;
import DTO.Articulo;
import DTO.Producto;
import DTO.UsuarioDTO;
import ProductosBD.ControladorProducto;
import java.io.IOException;

import java.sql.Date;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

/**
 *
 * @author MI PC
 */
@WebServlet(name = "Confirmar", urlPatterns = {"/Confirmar"})
public class Confirmar extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession sesion = request.getSession(true);
        ArrayList<Articulo> articulos = sesion.getAttribute("carrito") == null ? null : (ArrayList<Articulo>) sesion.getAttribute("carrito");
        HttpSession sesionusuario = request.getSession(true);
        UsuarioDTO user = (UsuarioDTO) sesionusuario.getAttribute("usuario");

        java.util.Date date = new java.util.Date();

// obtener la fecha y salida por pantalla con formato:
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        String fecha = dateFormat.format(date);
        System.out.println("Fecha: " + fecha);

        double total = 0;
        ProductosBD.ControladorProducto cp = new ControladorProducto();
        DAO.ModeloProducto mp = new ModeloProducto();
        for (Articulo articulo : articulos) {
            Producto producto = cp.getProducto(articulo.getIdProducto());
            total = total + articulo.getCantidad() * producto.getPrecio();
            mp.reservar(fecha, articulo.getCantidad(), user.getId_usuario(), producto.getId(), producto.getPrecio() * articulo.getCantidad());
        }
        mp.Pago(total);
        request.getRequestDispatcher("Carrito.jsp").forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
