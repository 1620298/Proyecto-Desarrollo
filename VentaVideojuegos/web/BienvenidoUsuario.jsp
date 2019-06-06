<%-- 
    Document   : BievenidoUsuario
    Created on : 03-jun-2019, 22:18:11
    Author     : MI PC
--%>

<%@page import="DTO.UsuarioDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%@include file="/header.jsp"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>JSP Page</title>
    </head>
    <body>
        
        <% UsuarioDTO usuario=(UsuarioDTO)request.getAttribute("usuario"); %>
        
        <div class="datousuario"><p><h1>B</h1><span>ienvenido:<br><%out.println(usuario.getNombre_usuario()+" "+usuario.getApellido_usuario()); %></span>
                <input type="button" class="cerrar" value="Cerrar Sesion">
        </div>
        
    </body>
</html>
