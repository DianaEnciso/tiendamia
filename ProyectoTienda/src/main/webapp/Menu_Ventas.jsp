<%@page import="controller.Conexion"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Gestión de ventas</title>
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/Menu_Nav.css">
<link rel="stylesheet" href="css/venta.css">
</head>

<%
	Conexion con=new Conexion();
	con.conexiondb();
%>

<body>

	<div class="venta">

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
	               <li class="main-nav__item"><a class="tooltip" href="Menu_Ventas.jsp"><img alt="Ventas" src="imgs/items-11.png">
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
	   	
	   	<div class="formulario1">
	   	
	   		<h2>Perfil de ventas</h2>
	   		
	   		 <form action="ProductController" method="post" class="userForm1">
		    	<div class="consultClient">
		    		<div>
			    		<label for="cedula">Cédula</label>
			    		<div class="consult_cedula">
				    		<input type="text" id="cedula" name="">
				    		<input type="submit" value="Consultar" name="">
			    		</div>
		    		</div>
		    		<div>
			    		<label for="cliente">Cliente</label>
			    		<input type="text" id="cliente">
		    		</div>
		    		<div>
			    		<label for="consecutivo">Consecutivo</label>
			    		<input type="text" id="consecutivo"> 
		    		</div>  	
		    	</div>
		    	
		    	<div class="productConsult">
		    		<table class="table_form">
			    		<tr>
			    			<th colspan="2">Código producto</th>
			    			<th>Nombre producto</th>
			    			<th>Cantidad</th>
			    			<th>Valor total</th>		    		
			    		</tr>
			    		<tr>
			    			<td><input type="text" name="" placeholder="Producto # 1"></td>
			    			<td><input type="submit" value="consultar" name=""></td>
			    			<td><input type="text" name=""></td>
			    			<td><input type="text" name=""></td>
			    			<td><input type="text" name=""></td>   		
			    		</tr>
			    		<tr>
			    			<td><input type="text" name="" placeholder="Producto # 2"></td>
			    			<td><input type="submit" value="consultar" name=""></td>
			    			<td><input type="text" name=""></td>
			    			<td><input type="text" name=""></td>
			    			<td><input type="text" name=""></td>   		
			    		</tr>
			    		<tr>
			    			<td><input type="text" name="" placeholder="Producto # 3"></td>
			    			<td><input type="submit" value="consultar" name=""></td>
			    			<td><input type="text" name=""></td>
			    			<td><input type="text" name=""></td>
			    			<td><input type="text" name=""></td>   		
			    		</tr>
			    		<tr>
			    			<td colspan="4" style="text-align: center; font-weight: bold;">Total valor de Venta</td>
			    			<td><input type="text" name=""></td>	    			
			    		</tr>
			    		<tr>
			    			<td colspan="4" style="text-align: center; font-weight: bold;">Total IVA</td>
			    			<td><input type="text" name=""></td>	    			
			    		</tr>
			    		<tr>
			    			<td colspan="4" style="text-align: center; font-weight: bold;">Total con IVA</td>
			    			<td><input type="text" name=""></td>	    			
			    		</tr>
			    		<tr class="submit_info_venta">
			    			<td colspan="5"><input type="submit" value="Enviar información" name="" class="send_info_ventas"></td>
			    		</tr>
		   
		    		</table>		    		
		    		
		    		<input type="hidden" name="cedUsu" value="${vs.getCedula_usuario()}">
		    	</div>
		    </form>
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