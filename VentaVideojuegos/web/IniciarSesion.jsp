<!DOCTYPE html>
<html lang="en">
<head>
	<title>Sign up</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="css/estilos.css" rel="stylesheet" type="text/css" />
     <div class="cabecera">
    <table>
       <td><center>Juegos</center></td>
       <td><center>Acerca de Nosotros</center></td> 
       <td><center>Ayuda</center></td>
        </table></br></br></br></br></br></br>
	</div>
	   <table>
               <td onclick ="location.href='pgprincipal.html'"><center>Inicio</center>
       </td>
       <td><center>Tienda</center>
       </td> 
       <td><center>Blog</center>
         </td>
         <td><center>Preventa</center>
           </td>
        </table></br></br>
        </br></br>
	
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

		<input type="submit" class="btn-submit" value="Ingresar">
                <input onclick ="location.href='formulario.html'" type="submit" class="btn-submit" value="Registrarme"> 
		</form>
	</div>
</body>
</html>
