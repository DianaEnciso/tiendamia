<%@page import="controller.Conexion"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Store</title>
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/Menu_Nav.css">
</head>

<%
	Conexion con=new Conexion();
	con.conexiondb();
%>

<body>
	<div class="home">
    	<header class="navbar">    
    		<div class="titulo-logo"> 
    			<a href="home.jsp"><img alt="Logo minfruver" src="imgs/MinFruver_logo_Mesa de trabajo 1.png" class="logo"></a>
    		</div>
    		
            <ul class="main-nav">
                <li class="main-nav__item"><a class="tooltip" href="Menu_Usuario.jsp"><img alt="Usuarios" src="imgs/items_Mesa de trabajo 1.png">
                 <span class="tooltip_box">Usuarios</span>
                </a></li>
                <li class="main-nav__item"><a class="tooltip" href="Menu_Cliente.jsp"><img alt="Clientes" src="imgs/items-02.png">
                <span class="tooltip_box">Clientes</span>
                </a></li>
                <li class="main-nav__item"><a class="tooltip" href="Menu_Proveedores.jsp"><img alt="Proveedores" src="imgs/items-03.png">
                <span class="tooltip_box">Proveedores</span>
                </a></li>
                <li class="main-nav__item"><a class="tooltip" href="Menu_Productos.jsp"><img alt="Productos" src="imgs/items-04.png">
                <span class="tooltip_box">Productos</span>
                </a></li>
                <li class="main-nav__item"><a class="tooltip" href="Menu_Ventas.jsp"><img alt="Ventas" src="imgs/items-05.png">
                 <span class="tooltip_box">Ventas</span>
                </a></li>
                <li class="main-nav__item"><a class="tooltip" href="Menu_Reportes.jsp"><img alt="Reportes" src="imgs/items-06.png">
                <span class="tooltip_box">Reportes</span>
                </a></li>
                <%
                String da = request.getSession().getAttribute("user").toString();
				%>
                <li class="main-nav__itemU"><a href="index.jsp" class="exit_session"><%=da%></a></li>
            </ul>
    	</header>
    	
    	<h1 class="msj_welcome">Bienvenido a MinFruver.</h1> 
	 	<p class="p_welcome">La plaza de mercado digital al alcance de tu mano</p>
   
	</div>

</body>
</html>