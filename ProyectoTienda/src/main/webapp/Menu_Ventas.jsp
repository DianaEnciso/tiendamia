<%@page import="controller.Conexion"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Gestión de Ventas</title>
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
	               <li class="main-nav__itemU"><a href="index.jsp" class="exit_session">${usuario.getNombre_usuario()}</a></li>
            </ul>
	   	</header>
	   	
	   	<div class="formulario1">

	   		<h2>Perfil de Ventas</h2>
	   		
	   		 <form action="VentaController" method="post" class="userForm1">
		    	<div class="consultClient">
		    		<div>
			    		<label for="cedula" style="margin-left: 60px; font-size: 16px;">Cédula</label>
			    		<div class="consult_cedula">
				    		<input type="text" id="cedula" name="cedula" value="${cliente.getCedula_clien()}" required>
				    		<input type="submit" value="Consultar" name="consultar">
			    		</div>
		    		</div>
		    		<div>
			    		<label for="cliente" style="margin-left: 60px; font-size: 16px;">Cliente</label>
			    		<input type="text" id="cliente" name="nombre" value="${cliente.getNombre_clien()}">
		    		</div>
		    		<div>
			    		<label for="consecutivo" style="margin-left: 45px; font-size: 16px;">Consecutivo</label>
			    		<input type="text" id="consecutivo" value="${consecutivo}"> 
		    		</div>  	
		    	</div>
		    	
		    	<div class="productConsult">
		    		<table class="table_form">
			    		<tr>
			    			<th colspan="2" style="font-weight: bold;"><label style="margin-left: 35px; font-size: 16px;">Código producto</label></th>
			    			<th style="font-weight: bold"><label style="margin-left: 29px; font-size: 16px;">Nombre Producto</label></th>
			    			<th colspan="2" style="font-weight: bold"><label style="margin-left: 50px; font-size: 16px;">Cantidad</label></th>
			    			<th style="font-weight: bold"><label style="margin-left: 50px; font-size: 16px;">Valor total</label></th>		    		
			    		</tr>
			    		<tr>
			    			<td><input type="text" name="cod1" placeholder="Producto # 1" value="${producto1.getCod_pro()}"></td>
			    			<td><input type="submit" value="Consultar" name="consp1"></td>
			    			<td><input type="text" name="nom_p1" value="${producto1.getNom_prod()}"></td>
			    			<td><input type="text" name="cant1"  value="${cant1}"></td>
			    			<td><input type="submit" name="conf1" value="Confirmar" style="width: 80px; height: 30px;"></td>
			    			<td><input type="text" name="sbt1" placeholder="Sub total" value="${sbt1}"></td>   		
			    		</tr>
			    		<tr>
			    			<td><input type="text" name="cod2" placeholder="Producto # 2" value="${producto2.getCod_pro()}"></td>
			    			<td><input type="submit" value="Consultar" name="consp2"></td>
			    			<td><input type="text" name="nom_p2" value="${producto2.getNom_prod()}"></td>
			    			<td><input type="text" name="cant2"  value="${cant2}"></td>
			    			<td><input type="submit" name="conf2" value="Confirmar" style="width: 80px; height: 30px;"></td>
			    			<td><input type="text" name="sbt2" placeholder="Sub total" value="${sbt2}"></td>   		
			    		</tr>
			    		<tr>
			    			<td><input type="text" name="cod3" placeholder="Producto # 3" value="${producto3.getCod_pro()}"></td>
			    			<td><input type="submit" value="Consultar" name="consp3"></td>
			    			<td><input type="text" name="nom_p3" value="${producto3.getNom_prod()}"></td>
			    			<td><input type="text" name="cant3"  value="${cant3}"></td>
			    			<td><input type="submit" name="conf3" value="Confirmar" style="width: 80px; height: 30px;"></td>
			    			<td><input type="text" name="sbt3" placeholder="Sub total" value="${sbt3}"></td>   		
			    			<!-- <td><input type="submit" name="procesar" value="Procesar" style="width: 80px; height: 30px;"></td> -->
			    		</tr>
			    		<tr>
			    			<td colspan="6"><input type="submit" name="procesar" value="Procesar" style="width: 80px; height: 30px; margin: 10px 0 15px 750px;"></td>
			    		</tr>
			    		<tr>
			    			<td colspan="5" style="text-align: right; font-weight: bold;">Total valor de Venta &nbsp&nbsp&nbsp</td>
			    			<td><input type="text" name="sub_t" value="${stt}"></td>	    			
			    		</tr>
			    		<tr>
			    			<td colspan="5" style="text-align: right; font-weight: bold;">Total IVA &nbsp&nbsp&nbsp</td>
			    			<td><input type="text" name="total_iva" value="${tiva}"></td>	    			
			    		</tr>
			    		<tr>
			    			<td colspan="5" style="text-align: right; font-weight: bold; font-size: 20px;">Valor a pagar &nbsp&nbsp</td>
			    			<td><input type="text" name="total_venta" value="${pagar}"></td>	    			
			    		</tr>
			    		<tr class="submit_info_venta">
			    			<td colspan="6"><input type="submit" value="Enviar información" name="enviar" class="send_info_ventas"></td>
			    		</tr>
		   
		    		</table>		    		
		    		
		    		<div class="ced_udu">
			    		<input type="hidden" name="ced_u" value="${usuario.getCedula_usuario()}">
			    		<input type="hidden" name="nom_u" value="${usuario.getNombre_usuario()}">
			    		<input type="submit" name="reset" value="Finalizar">
		    		</div>
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