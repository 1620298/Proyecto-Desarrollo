<!DOCTYPE html>
<%@include file="/header.jsp"%>
<html lang="en">
<head>
	<title>Sign up</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
        <script src="js/validacion.js" type="text/javascript"></script>
       
        
        
</head>
<body> 
    
    <%
                        String x=(String) request.getAttribute("mensaje");
                        String a="";
                        if(x!=null)
                            a=x;
                    %>
	<div class="contenedor">
            <form action="ServletUsuario" method="post" class="form" name="formulario">
		<div class="form-header">
			<h1 class="form-title">I<span>niciar Sesion</span></h1>
		</div>
		
		<label for="alias" class="form-label">Nickname:</label>
                <input type="text" name="nickname" id="alias" class="form-input" placeholder="Escriba su Nickname" >

		<label for="contraseña" class="form-label">Contraseña:</label>
                <input type="password" name="contra" id="contraseña" class="form-input" placeholder="Escriba su Contraseña">

                <input type="submit" name="iniciar" id="boton" class="btn-submit" value="Iniciar Sesion">
                <p>¿No tienes una cuenta?<a href="RegistrarUsuario.jsp">Registrate</a></p>
                
                <div class="error"><h5 align="center"><%=a %></h5></div>
		</form>
	</div>
                
                
</body>
</html>
