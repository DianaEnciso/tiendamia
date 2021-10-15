<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Factura</title>
<link rel="stylesheet" href="css/factura.css">
</head>
<body>

<%
String cons = request.getSession().getAttribute("cod_vta").toString();	
String fe = request.getSession().getAttribute("fecha").toString();
String ced_c = request.getSession().getAttribute("ced_c").toString();
String nom_c = request.getSession().getAttribute("nom_c").toString();
String nom_u = request.getSession().getAttribute("nom_u").toString();

String cod_1 = request.getSession().getAttribute("cod_1").toString();
String nom_p1 = request.getSession().getAttribute("nom_p1").toString();
String pv_1 = request.getSession().getAttribute("pv1").toString();
String cant_1 = request.getSession().getAttribute("cant1").toString();
String sbt_1 = request.getSession().getAttribute("sbt1").toString();

String cod_2 = request.getSession().getAttribute("cod_2").toString();
String nom_p2 = request.getSession().getAttribute("nom_p2").toString();
String pv_2 = request.getSession().getAttribute("pv2").toString();
String cant_2 = request.getSession().getAttribute("cant2").toString();
String sbt_2 = request.getSession().getAttribute("sbt2").toString();

String cod_3 = request.getSession().getAttribute("cod_3").toString();
String nom_p3 = request.getSession().getAttribute("nom_p3").toString();
String pv_3 = request.getSession().getAttribute("pv3").toString();
String cant_3 = request.getSession().getAttribute("cant3").toString();
String sbt_3 = request.getSession().getAttribute("sbt3").toString();

String stt = request.getSession().getAttribute("stt").toString();
String tiva = request.getSession().getAttribute("tiva").toString();
String pagar = request.getSession().getAttribute("pagar").toString();

%>
<div class="factura">
	<h1>Factura de Venta MinFruver</h1>
	
	<div class="informacion_factura">
		<label class="consecutivo">Consecutivo: </label>
		<label><%=cons%></label>
		<label class="fechaHora" style="margin-left: 50px; font-size: 16px;">Fecha y hora: </label>
		<label><%=fe%></label>
		<img alt="Logo" src="imgs/logo-02.png" width="100px" style="margin-left: 110px;">
	</div>
	
	<div class="datosG_factura">
		<label for="cedula" >Cédula: </label>
		<label><%=ced_c%></label>
		
		<label for="cliente" style="margin-left: 60px; font-size: 16px;">Cliente: </label>
		<label><%=nom_c%></label>
		
		<label for="vendedor" style="margin-left: 60px; font-size: 16px;">Vendedor: </label>
		<label><%=nom_u%></label>
	</div>
	
	
	<table class="table_form">
	  		<tr>
	  			<th>Código producto</th>
	  			<th>Nombre producto</th>
	  			<th>Valor unitario</th>
	  			<th>Cantidad</th>
	  			<th>Valor total</th>		    		
	  		</tr>
	  		
	   		<tr>
	   			<td><%=cod_1%></td>
	   			<td><%=nom_p1%></td>
	   			<td><%=pv_1%></td>
	   			<td><%=cant_1%></td>
	   			<td><%=sbt_1%></td>   		
	   		</tr>
	   		
	   		<tr>
	   			<td><%=cod_2%></td>
	   			<td><%=nom_p2%></td>
	   			<td><%=pv_2%></td>
	   			<td><%=cant_2%></td>
	   			<td><%=sbt_2%></td>   		
	   		</tr>
	   		
	   		<tr>
	   			<td><%=cod_3%></td>
	   			<td><%=nom_p3%></td>
	   			<td><%=pv_3%></td>
	   			<td><%=cant_3%></td>
	   			<td><%=sbt_3%></td>   		
	   		</tr>
	
	   		<tr>
	   			<td colspan="4" style="text-align: right; font-weight: bold;">Total valor de Venta &nbsp&nbsp&nbsp</td>
	   			<td><label><%=stt%></label></td>	    			
	   		</tr>
	   		
	   		<tr>
	   			<td colspan="4" style="text-align: right; font-weight: bold;">Total IVA &nbsp&nbsp&nbsp</td>
	   			<td><label><%=tiva%></label></td>	    			
			</tr>
	    		
	   		<tr>
	   			<td colspan="4" style="text-align: right; font-weight: bold; font-size: 20px;">Valor a pagar &nbsp&nbsp</td>
	   			<td><label><%=pagar%></label></td>	    			
	   		</tr>
	</table>
</div>

 <form action="VentaController" method="post" class="userForm1">
	<div class="ced_udu">
		<input type="submit" name="reset" value="Finalizar" class="btn1">
	</div>
</form>	
	    		
</body>
</html>