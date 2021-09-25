<%@page import="controller.Conexion"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Menu Productos</title>
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/Menu_Nav.css">
<link rel="stylesheet" href="css/producto.css">
</head>

<%
	Conexion con=new Conexion();
	con.conexiondb();
%>

<body>
	<div class="producto">

		<header class="navbar">    
	   		<div class="titulo-logo"> 
	   			<a href="home.jsp"><img alt="Logo minfruver" src="imgs/MinFruver_logo_Mesa de trabajo 1.png" class="logo"></a>
	   		</div>
	   		
	           <ul class="main-nav">
	               <li class="main-nav__item"><a href="Menu_Usuario.jsp"><img alt="Usuarios" src="imgs/items_Mesa de trabajo 1.png"></a></li>
	               <li class="main-nav__item"><a href="Menu_Cliente.jsp"><img alt="Clientes" src="imgs/items-02.png"></a></li>
	               <li class="main-nav__item"><a href="Menu_Proveedores.jsp"><img alt="Proveedores" src="imgs/items-03.png"></a></li>
	               <li class="main-nav__item"><a href="Menu_Productos.jsp"><img alt="Productos" src="imgs/items-10.png"></a></li>
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
<h2>Gestión de productos</h2>
<form action="ProductosController" method="post" class="userForm">
	    	<label for="user-cc">Código del producto</label>
	    	<input type="text" name="cod" placeholder="Digita el código del producto"  required> 
	    	<label for="user-cc">Nombre del producto</label>
	    	<input type="text" name="nom" placeholder="Digita el nombre del producto"  > 
	    	<label for="user-cc">Nit del proveedor</label>
	    	<input type="text" name="nit" placeholder="Digita tel NIT del proveedor"  > 
	    	<label for="user-cc">Precio compra</label>
	    	<input type="text" name="prec_c" placeholder="Digita el precio de compra"  > 
	    	<label for="user-cc">IVA compra</label>
	    	<input type="text" name="iva" placeholder="Digita el IVA"  > 
	    	<label for="user-cc">Precio venta</label>
	    	<input type="text" name="prec_v" placeholder="Digita el precio de venta"  >  
	    	<div class="send_data" id="sd_prod">
		    	<!--<input type="submit" name="btn_crearU" value="Crear">-->
		    	<input type="submit" name="btn_consPD" value="Consultar">
		    	<div id="separador"></div>
		    	<input type="submit" name="btn_actPD" value="Actualizar">
		    	<!--<input type="submit" name="btn_elimPD" value="Eliminar">-->
		    
		    </div>  	    	
	    </form>	
</div>   	
       
	</div>



</body>
</html>

