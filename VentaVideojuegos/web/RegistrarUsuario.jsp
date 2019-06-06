<!DOCTYPE html>
<html lang="en">
<head>
	<title>Sign up</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
        <script src="js/validacion.js" type="text/javascript"></script>
        <style>
            
            
        </style>
	<%@include file="/header.jsp"%>
</head>
<body> 
    
	<div class="contenedor">
            <form action="ServletUsuarioRegistrar" method="post" class="form" onsubmit="return validar();">
		<div class="form-header">
			<h1 class="form-title">R<span>egistrate</span></h1>
		</div>
		<label for="nombre" class="form-label">Nombres:</label>
                <input type="text" name="nombre" id="nombre" class="form-input" placeholder="Escriba su nombre" maxlength="30" pattern="[A-Za-z]{2,15}" title="Introduzca su  nombre" required>
                
		<label for="apellidos" class="form-label">Apellidos:</label>
		<input type="text" name="apellido" id="apellidos" class="form-input" placeholder="Escriba su Apellido" maxlength="30" pattern="[A-Za-z]{2,15}" title="Introduzca su  apellido" required>

		

		<label for="email" class="form-label">E-mail:</label>
                <input type="email" name="email" id="email" class="form-input" placeholder="Escriba su E-mail" maxlength="50"  title="Introduzca su email" required>

		<label for="alias" class="form-label">Nickname:</label>
                <input type="text" name="nickname" id="nickname" class="form-input" placeholder="Escriba su Nickname" maxlength="50"  title="Introduzca su email" required>

		<label for="contraseña" class="form-label">Contraseña:</label>
                <input type="password" name="contra" id="contra" class="form-input" placeholder="Escriba su Contraseña" maxlength="50"  title="Introduzca su email" required>
                <div class="boton">
                <input type="submit" id="registrar" name="registrar" class="btn-submit" value="Registrar">
                </div>
                <p id="mensajeError"></p>
            </form>
	</div>
</body>
</html>
