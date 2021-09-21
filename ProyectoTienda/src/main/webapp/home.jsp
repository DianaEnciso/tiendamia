<%@page import="controller.Conexion"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Store</title>
<link rel="stylesheet" href="css/style.css">
</head>


    <header>    
    	<div class="titulo-logo"> 
    		<div class="logo"></div>
    	</div>
        <nav>
            <ul class="main-nav">
                <li class="main-nav__item"><a href="Menu_Usuario.jsp">Usuarios  OTRAVEZ</a></li>
                <li class="main-nav__item"><a href="Menu_Cliente.jsp">Clientes</a></li>
                <li class="main-nav__item"><a href="Menu_Proveedores.jsp">Proveedores</a></li>
                <li class="main-nav__item"><a href="Menu_Productos.jsp">Productos</a></li>
                <li class="main-nav__item"><a href="Menu_Ventas.jsp">Ventas</a></li>
                <li class="main-nav__item"><a href="Menu_Reportes.jsp">Reportes</a></li>
                <%
                
                String da="";
                if(request.getParameter("da") ==null)
                {
                
					da=request.getParameter("dato");
                }
				%>
                <li class="main-nav__item"><a href=""><%=da%></a></li>
            </ul>
        </nav>
    </header>
    
<body>
	<div class="tit_welcome">
   <h1>Bienvenido a Min Fruver <%=da %></h1>
   </div> 


</body>
</html>