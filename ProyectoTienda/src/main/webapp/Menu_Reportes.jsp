<%@page import="controller.Conexion"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Menu Reporte</title>
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/Menu_Nav.css">
<link rel="stylesheet" href="css/reporte.css">
</head>

<%
	Conexion con=new Conexion();
	con.conexiondb();
%>

<body>

<body>
	<div class="reporte">

		<header class="navbar">    
	   		<div class="titulo-logo"> 
	   			<a href="home.jsp"><img alt="Logo minfruver" src="imgs/MinFruver_logo_Mesa de trabajo 1.png" class="logo"></a>
	   		</div>
	   		
	        <ul class="main-nav">
            	<li class="main-nav__item"><a href="Menu_Usuario.jsp"><img alt="Usuarios" src="imgs/items_Mesa de trabajo 1.png"></a></li>
                <li class="main-nav__item"><a href="Menu_Cliente.jsp"><img alt="Clientes" src="imgs/items-02.png"></a></li>
                <li class="main-nav__item"><a href="Menu_Proveedores.jsp"><img alt="Proveedores" src="imgs/items-03.png"></a></li>
                <li class="main-nav__item"><a href="Menu_Productos.jsp"><img alt="Productos" src="imgs/items-04.png"></a></li>
                <li class="main-nav__item"><a href="Menu_Ventas.jsp"><img alt="Ventas" src="imgs/items-05.png"></a></li>
                <li class="main-nav__item"><a href="Menu_Reportes.jsp"><img alt="Reportes" src="imgs/items-12.png"></a></li>
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
	   	
	</div>

</body>
</html>