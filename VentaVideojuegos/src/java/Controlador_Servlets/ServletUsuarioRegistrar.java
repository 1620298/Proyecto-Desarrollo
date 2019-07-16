/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador_Servlets;

import DAO.DAOfactory;
import DAO.UsuarioDAO;
import DTO.UsuarioDTO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author MI PC
 */
@WebServlet(name = "ServletUsuarioRegistrar", urlPatterns = {"/ServletUsuarioRegistrar"})
public class ServletUsuarioRegistrar extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
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

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        UsuarioDTO user = new UsuarioDTO();
        user.setNombre_usuario(request.getParameter("nombre"));
        user.setApellido_usuario(request.getParameter("apellido"));
        user.setDireccion_e_usuario(request.getParameter("email"));
        user.setNickname_usuario(request.getParameter("nickname"));
        user.setContrasenia(request.getParameter("contra"));

        DAOfactory factory = DAOfactory.setDAOfactory(DAOfactory.MySQL);
        UsuarioDAO userDAO = factory.getUsuarioDAO();

        userDAO.RegistrarUsuario(user);
        request.setAttribute("mensaje", "El registro fue exitoso!!");
        request.getRequestDispatcher("IniciarSesion.jsp").forward(request, response);

    }
}
