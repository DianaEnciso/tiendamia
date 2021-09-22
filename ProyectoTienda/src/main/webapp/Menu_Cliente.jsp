<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Menu Clientes</title>
<link href="css/cliente.css" rel="stylesheet">

</head>
<body>

<header>    
    	<div class="titulo-logo"> 
    		<div class="logo"></div>
    	</div>
    	<h1 class="titulo_usu">Menú Cliente</h1>
        <nav>
            <ul class="main-nav">
                <li class="main-nav__item"><a href="home.jsp">Inicio</a></li>
                <li class="main-nav__item"><a href="Menu_Usuario.jsp">Usuarios</a></li>
                <li class="main-nav__item"><a href="Menu_Proveedores.jsp">Proveedores</a></li>
                <li class="main-nav__item"><a href="Menu_Productos.jsp">Productos</a></li>
                <li class="main-nav__item"><a href="Menu_Ventas.jsp">Ventas</a></li>
                <li class="main-nav__item"><a href="Menu_Reportes.jsp">Reportes</a></li>
				<li class="main-nav__item"><a href="">Cliente</a></li>
            </ul>
        </nav>
        
        </header>
        
<div class="formulario">

    	<h2>Bienvenido Cliente</h2>
<%
		String ced="",name="",direc="",email="",tele="";
		
		if(request.getParameter("ced")!=null)
		{
			
		ced=request.getParameter("ced");
		name=request.getParameter("nam");
		direc=request.getParameter("dire");
		email=request.getParameter("ema");
		tele=request.getParameter("tel");
		}

%>


	<form action="ClientController" method="post" class="userForm">
		<label for="user-cc" >Cédula</label>
		<input type="text" name="cedula" value="<%=ced%>" placeholder="Digita tu Cédula" required>
		<label for="user-cc" >Nombre Completo</label>
		<input type="text" name="nombre" value="<%=name%>" placeholder="Digita tu Nombre Completo" >
		<label for="user-cc" >Dirección</label>
		<input type="text" name="direccion" value="<%=direc%>" placeholder="Digita tu Dirección" >
		<label for="user-cc" >Correo Electrónico</label>
		<input type="email" name="correo" value="<%=email%>" placeholder="Digita tu Correo Electrónico" >
		<label for="user-cc" >Teléfono</label>
		<input type="text" name="telefono" value="<%=tele%>" placeholder="Digita tu Teléfono" >
		
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