<!DOCTYPE html>
<%@include file="/header.jsp"%>
<html lang="en">
<head>
	<title>Sign up</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
        
</head>
<body> 
    
    <%
                        String x=(String) request.getAttribute("mensaje");
                        String a="";
                        if(x!=null)
                            a=x;
                    %>
	<div class="contenedor">
            <form action="ServletUsuario" method="post" class="form">
		<div class="form-header">
			<h1 class="form-title">I<span>niciar Sesion</span></h1>
		</div>
		
		<label for="alias" class="form-label">Nickname:</label>
                <input type="text" name="nickname" id="alias" class="form-input" placeholder="Escriba su Nickname" >

		<label for="contrase�a" class="form-label">Contrase�a:</label>
                <input type="password" name="contra" id="contrase�a" class="form-input" placeholder="Escriba su Contrase�a">

                <input type="submit" name="iniciar" class="btn-submit" value="Registrar">
                <div class="error"><h5 align="center"><%=a %></h5></div>
		</form>
	</div>
</body>
</html>
