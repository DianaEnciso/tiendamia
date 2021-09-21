<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Menú Usuarios</title>
<link href="css/usuario.css" rel="stylesheet">


</head>
<body>
	<header>    
    	<div class="titulo-logo"> 
    		<div class="logo"></div>
    	</div>
    	<h1 class="titulo_usu">Menu Usuarios</h1>
        <nav>
            <ul class="main-nav">
                <li class="main-nav__item"><a href="home.jsp">Inicio</a></li>
                <li class="main-nav__item"><a href="Menu_Cliente.jsp">Clientes</a></li>
                <li class="main-nav__item"><a href="Menu_Proveedores.jsp">Proveedores</a></li>
                <li class="main-nav__item"><a href="Menu_Productos.jsp">Productos</a></li>
                <li class="main-nav__item"><a href="Menu_Ventas.jsp">Ventas</a></li>
                <li class="main-nav__item"><a href="Menu_Reportes.jsp">Reportes</a></li>
                <li class="main-nav__item"><a href="">Usuario</a></li>
            </ul>
        </nav>
   
	
 </header>
<div class="formulario">
    	<h2>Bienvenido Usuario</h2>
    	
<%
	String ced="",corr="",name="",pass="",usu="";
	
	if(request.getParameter("ce")!=null)
	{
		
	ced=request.getParameter("ce");
	corr=request.getParameter("co");
	name=request.getParameter("no");
	pass=request.getParameter("cl");
	usu=request.getParameter("us");
	}
%>


    	
		<form action="StoreController" method="post" class="userForm">
		<label for="user-cc" >Cédula</label>
		<input type="text" name="cedula" value="<%=ced%>" placeholder="Digita tu Cédula" required>
		<label for="user-cc" >Correo Electrónico</label>
		<input type="email" name="correo" value="<%=corr%>" placeholder="Digita tu Correo" >
		<label for="user-cc" >Nombre Completo</label>
		<input type="text" name="nombre" value="<%=name%>" placeholder="Digita tu Nombre" >
		<label for="user-cc" >Contraseña</label>
		<input type="password" name="clave" value="<%=pass%>" placeholder="Digita tu Contraseña" >
		<label for="user-cc" >Usuario</label>
		<input type="text" name="usuario" value="<%=usu%>" placeholder="Digita tu Usuario" >
		
		<div class="send_data">
		
		<input type="submit" name="btning" value="Crear">
		<input type="submit" name="btnconsu" value="Consultar">
		<input type="submit" name="btnactua" value="Actualizar">
		<input type="submit" name="btnelimi" value="Eliminar"> 
		</div>
		
		</form>
	</div>
</body>
</html>