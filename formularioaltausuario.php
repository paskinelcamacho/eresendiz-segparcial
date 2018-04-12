<!DOCTYPE html>
<html lang="es">
<head>
 <meta charset="utf-8">
 <link rel="stylesheet" href="css/estilos.css">
</head>
<body>
<h1> Alta de Usuarios</h1>

<div>
<FORM ACTION="altausuario.php" METHOD="post">
<label class="etiquetas" for="nombre">Nombre:</label> <input class="cajas" type="text" size=36 name="nombre"></input><br/>
<label class="etiquetas" for="apaterno">Apellido paterno:</label> <input class="cajas" type="text" size=36 name="apaterno"></input><br/>
<label class="etiquetas" for="amaterno">Apellido materno:</label> <input class="cajas" type="text" size=36 name="amaterno"></input><br/>
<label class="etiquetas" for="usuario">Usuario:</label> <input class="cajas" type="text" size=36 name="usuario"></input><br/>
<label class="etiquetas" for="contrasenia">Contraseña:</label> <input class="cajas" type="text" size=36 name="contrasenia"></input><br/>

<INPUT type="submit" value="Enviar">
</div>
</FORM>
</body>
</html>
