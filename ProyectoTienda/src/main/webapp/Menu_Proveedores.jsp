<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Menu Proveedores</title>
<link href="css/proveedor.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">

</head>
<body>

<header>    

    	<div class="titulo-logo"> 
    		<div class="logo"></div>
    	</div>
    	<h1 class="titulo_usu">Menú Proveedores</h1>
        <nav>
            <ul class="main-nav">
                <li class="main-nav__item"><a href="home.jsp">Inicio</a></li>
                <li class="main-nav__item"><a href="Menu_Usuario.jsp">Usuarios</a></li>
                <li class="main-nav__item"><a href="Menu_Cliente.jsp">Clientes</a></li>
                <li class="main-nav__item"><a href="Menu_Productos.jsp">Productos</a></li>
                <li class="main-nav__item"><a href="Menu_Ventas.jsp">Ventas</a></li>
                <li class="main-nav__item"><a href="Menu_Reportes.jsp">Reportes</a></li>
				<li class="main-nav__item"><a href="">Cliente</a></li>
            </ul>
        </nav>
        
        </header>
        
<div class="formulario">

<h2>Bienvenido Proveedor</h2>

<%
		String nit="",nombre="",ciudad="",direccion="",tele="";
		
		if(request.getParameter("nit")!=null)
		{
			
		nit=request.getParameter("nit");
		nombre=request.getParameter("nom");
		ciudad=request.getParameter("ciu");
		direccion=request.getParameter("direc");
		tele=request.getParameter("tel");
		}

%>
        
	<form action="ProveeController" method="post" class="userForm">
		<label for="user-cc" >NIT</label>
		<input type="text" name="nit" value="<%=nit%>" placeholder="Digita el NIT" required>
		<label for="user-cc" >Nombre Completo</label>
		<input type="text" name="nombre" value="<%=nombre%>" placeholder="Digita tu Nombre Completo" >
		<label for="user-cc" >Ciudad</label>
		<input type="text" name="ciudad" value="<%=ciudad%>" placeholder="Digita tu Ciudad" >
		<label for="user-cc" >Dirección</label>
		<input type="text" name="direccion" value="<%=direccion%>" placeholder="Digita tu Dirección" >
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