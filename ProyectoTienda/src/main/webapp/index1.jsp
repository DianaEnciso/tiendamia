<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" href="css/style.css">
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
            </ul>
        </nav>
    </header>

<body>
	<div class="window-notice" id="window-notice">
        <div class="content">
            <form action="StoreController" method="get">
				<input type="text" name="user">
				<input type="password" name="pass">
				<input type="submit" name="btnlogin">
			</form>
        </div>
    </div>



</body>
