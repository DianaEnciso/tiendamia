<%@page import="controller.Conexion"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>MinFruver</title>
<link href="css/style.css" rel="stylesheet">
</head>
 <header>    
    	<div class="titulo-logo"> 
    		<div class="logo"></div>
    	</div>
        <nav>
            <ul class="main-nav">
                <li class="main-nav__item"><a href="">Usuarios</a></li>
                <li class="main-nav__item"><a href="">Clientes</a></li>
                <li class="main-nav__item"><a href="">Proveedores</a></li>
                <li class="main-nav__item"><a href="">Productos</a></li>
                <li class="main-nav__item"><a href="">Ventas</a></li>
                <li class="main-nav__item"><a href="">Reportes</a></li>
                <li class="main-nav__item"><a href="">Usuario</a></li>
                <%
                Conexion con=new Conexion();
                con.conexiondb();
                %>
            </ul>
        </nav>
    </header>
<body>

<main class="main">

	<div class="contenedor contenedor1">
	
		<div class="window-notice" id="window-notice">
        <div class="content">
        <!--  <div class="titulo-logo"> 
    		<div class="logo1"></div>
    	</div> -->
			
		<img class="logo1" alt="logo" src="imgs/MinFruver_logo_Mesa de trabajo 1.png">
		
		<form action="StoreController" method="get">
			
			<div class="info">
				<label>Usuario</label>
				<input type="text" name="user">
	
				<label>Contraseña</label>
				<input type="password" name="pass">
			</div>
			
			<div class="info_btn">
				<input type="submit" value="Aceptar" name="btnlogin" class="btn1">
				<input type="reset" value="Cancelar" name="cancel" class="btn2">
			</div>	
			
		</form>
	</div>	
	</div>	
	</div>

</main>	


</body>
</html>