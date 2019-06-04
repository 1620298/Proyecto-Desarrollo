<!DOCTYPE html>
<html lang="en">
<head>
	<title>Sign up</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/estilos.css" rel="stylesheet" type="text/css" />
	
</head>
<body> 
	<div class="contenedor">
            <form action="ServletUsuario" method="post" class="form">
		<div class="form-header">
			<h1 class="form-title">I<span>niciar Sesion</span></h1>
		</div>
		
		<label for="alias" class="form-label">Nickname:</label>
                <input type="text" name="nickname" id="alias" class="form-input" placeholder="Escriba su Nickname">

		<label for="contraseña" class="form-label">Contraseña:</label>
                <input type="text" name="contra" id="contraseña" class="form-input" placeholder="Escriba su Contraseña">

		<input type="submit" class="btn-submit" value="Registrar">
		</form>
	</div>
</body>
</html>
