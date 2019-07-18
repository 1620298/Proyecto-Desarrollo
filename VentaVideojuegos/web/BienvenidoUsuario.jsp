<%--
    Document   : BievenidoUsuario
    Created on : 03-jun-2019, 22:18:11
    Author     : MI PC
--%>

<%@page import="DTO.UsuarioDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%  UsuarioDTO user=(UsuarioDTO)request.getAttribute("usuario"); %>

<%@include file="/header.jsp"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>JSP Page</title>
    </head>
    <body>
        <p>entro <%= user.getNombre_usuario() %></p>
        <p>entro <%= user.getApellido_usuario() %></p>
        <p>entro <%= user.getDireccion_e_usuario() %></p>
        <p>entro <%= user.getNickname_usuario() %></p>
    </body>
</html>
