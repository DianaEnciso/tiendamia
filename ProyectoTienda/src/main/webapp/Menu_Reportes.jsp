<%@page import="controller.Conexion"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<script type="text/javascript" src="js/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="js/ConGenUsu.js"></script>
<title>Consultas y reportes</title>
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
	   			<a href="home.jsp"><img alt="Logo minfruver" src="imgs/logo-02.png" class="logo"></a>
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
	               <li class="main-nav__item"><a class="tooltip" href="Menu_Reportes.jsp"><img alt="Reportes" src="imgs/items-12.png">
	               <span class="tooltip_box">Reportes</span>
	               </a></li>
	               <%
	               String da = request.getSession().getAttribute("user").toString();
			       %>
                <li class="main-nav__itemU"><a href="index.jsp" class="exit_session"><%=da%></a></li>
            </ul>
	   	</header>
	   	
	   	<div class="formularioRep">
	   		<h2>Consultas y Reportes</h2>
	   		
	   		<form action="">
		   		<div id="botns_consultas2" >
		   			<div class="card">
		   				<img alt="Usuarios" src="imgs/consulta-1.png" width="50px" title="Usuarios">
			   			<input class="btnConsUsu" type="button" value="Usuarios" style="background : inherit; color: #0c331b;">
			   		</div>
			   		
			   		<div class="card">
			   			<img alt="Clientes" src="imgs/consulta-2.png" width="50px" title="Clientes">
			   			<input class="btnConsCli" type="button" value="Clientes" style="background : inherit; color: #0c331b;">
			   		</div>
			   		
			   		<div class="card">
			   			<img alt="Proveedores" src="imgs/consulta-3.png" width="50px" title="Proveedores">
			   			<input class="btnConsProv" type="button" value="Proveedores" style="background : inherit; color: #0c331b;">
			   		</div>
			   		
			   		<div class="card">
			   			<img alt="Compras" src="imgs/consulta-4.png" width="50px" title="Compras">
			   			<input class="btnConsComp" type="button" value="Compras" style="background : inherit; color: #0c331b;">
			   		</div>	
			   		
			   		<div class="card">
			   			<img alt="Compras por clientes" src="imgs/consulta-7.png" width="50px" title="Compras por cliente">
			   			<input class="btnCliComp" type="button" value="Compras por cliente" style="background : inherit; color: #0c331b;">
		   			</div>
		   			
			   		<div class="card">
			   			<img alt="Ventas" src="imgs/consulta-5.png" width="50px" title="Ventas">
			   			<input class="btnConsVta" type="button" value="Ventas" style="background : inherit; color: #0c331b;">
			   		</div>
			   		
			   		<div class="card">
			   			<img alt="Ventas por usuario" src="imgs/Consulta-6.png" width="50px" title="Ventas por usuario">
			   			<input class="btnUsuVta" type="button" value="Ventas por usuario" style="background : inherit; color: #0c331b;">
			   		</div>
			   		
		   		</div>
	   		</form>

	   		<div class="tabla_ConsGen">
	   			<table  id="tabla"></table>
  			</div>
	   	</div>
   	
	   	<div class="footer">
	    	<div class="logoFooter">
	    		<a href="https://misionticueb.myopenlms.net/" target="_blank"><img alt="logo" src="imgs/logo-misiontic.png" width="100px"></a>
	    	</div>
	    	
	    	<div class="logo-universidad"> 
	    		<a href="https://www.unbosque.edu.co/" target="_blank"><img alt="Logo minfruver" src="imgs/logo-universidad.png" width="100px"></a>
	    	</div>
	    
	    	<div class="description">
	    		<p class="description-footer" style="text-align: center; border-bottom: 1px solid #ffffff;"><b>MisionTic - Universidad del Bosque 2021</b></p> 
	    		<p style="padding: 5px 0 0 0"><b>Nuestra meta: </b>Enfrentar los desafíos de la cuarta Revolución Industrial.</p>
	    		<p><b>Autores: </b>Lina María Pérez, Evelyn Perozo, Diego Ramírez, Diana Rodríguez</p>
	    	</div>
	    
	    	<div class="InfoGeneral">
		    	<p>Siguenos en nuestras redes sociales</p>
		    	<div class="redesSociales">
			    	<a href="#"><img alt="Facebook" src="imgs/facebook.svg"></a>
			    	<a href="#"><img alt="Instagram" src="imgs/instagram.svg"></a>
			    	<a href="#"><img alt="Twitter" src="imgs/twitter.svg"></a>
		    	</div>
		    	<div class="copyright">
		    		<p><small>Copyright &copy 2021. All Rights Reserved</small></p>
		    	</div>
	    	</div>
	    </div> 
	   	
	</div>

</body>
</html>