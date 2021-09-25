<%@page import="controller.Conexion"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Menú Usuarios</title>
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/Menu_Nav.css">
<link rel="stylesheet" href="css/usuario.css">
</head>

<%
	Conexion con=new Conexion();
	con.conexiondb();
%>

<body>
	<div class="usuario">

		<header class="navbar">    
	   		<div class="titulo-logo"> 
	   			<a href="home.jsp"><img alt="Logo minfruver" src="imgs/MinFruver_logo_Mesa de trabajo 1.png" class="logo"></a>
	   		</div>
	   		
	           <ul class="main-nav">
	               <li class="main-nav__item"><a href="Menu_Usuario.jsp"><img alt="Usuarios" src="imgs/items_Mesa de trabajo 1 copia.png"></a></li>
	               <li class="main-nav__item"><a href="Menu_Cliente.jsp"><img alt="Clientes" src="imgs/items-02.png"></a></li>
	               <li class="main-nav__item"><a href="Menu_Proveedores.jsp"><img alt="Proveedores" src="imgs/items-03.png"></a></li>
	               <li class="main-nav__item"><a href="Menu_Productos.jsp"><img alt="Productos" src="imgs/items-04.png"></a></li>
	               <li class="main-nav__item"><a href="Menu_Ventas.jsp"><img alt="Ventas" src="imgs/items-05.png"></a></li>
	               <li class="main-nav__item"><a href="Menu_Reportes.jsp"><img alt="Reportes" src="imgs/items-06.png"></a></li>
	               <%
	               String da="";
	               if(request.getParameter("da") ==null)
	               {
					da=request.getParameter("dato");
	               }
				%>
	               <li class="main-nav__itemU"><a href="index.jsp" class="exit_session"><%=da%></a></li>
	           </ul>
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
	</div>
</body>
</html>