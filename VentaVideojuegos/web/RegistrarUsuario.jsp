<!DOCTYPE html>
<html lang="en">
<head>
	<title>Sign up</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
	<%@include file="/header.jsp"%>
</head>
<body> 
	<div class="contenedor">
            <form action="ServletUsuarioRegistrar" method="post" class="form">
		<div class="form-header">
			<h1 class="form-title">R<span>egistrate</span></h1>
		</div>
		<label for="nombre" class="form-label">Nombres:</label>
                <input type="text" name="nombre" id="nombre" class="form-input" placeholder="Escriba su nombre" >

		<label for="apellidos" class="form-label">Apellidos:</label>
		<input type="text" name="apellido" id="apellidos" class="form-input" placeholder="Escriba su Apellido">

		

		<label for="email" class="form-label">E-mail:</label>
                <input type="email" name="email" id="email" class="form-input" placeholder="Escriba su E-mail">

		<label for="alias" class="form-label">Nickname:</label>
                <input type="text" name="nickname" id="alias" class="form-input" placeholder="Escriba su Nickname">

		<label for="contraseņa" class="form-label">Contraseņa:</label>
                <input type="password" name="contra" id="contraseņa" class="form-input" placeholder="Escriba su Contraseņa">

                <input type="submit" name="registrar" class="btn-submit" value="Registrar">
		</form>
	</div>
</body>
</html>
