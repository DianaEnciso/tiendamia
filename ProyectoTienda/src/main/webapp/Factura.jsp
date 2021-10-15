<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Factura</title>
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

<h1>Factura :</h1>
<label><%=cons%></label>

<label style="margin-left: 60px; font-size: 16px;">Fecha: </label>
<label><%=fe%></label>

<label for="cedula" style="margin-left: 60px; font-size: 16px;">Cédula: </label>
<label><%=ced_c%></label>

<label for="cliente" style="margin-left: 60px; font-size: 16px;">Cliente: </label>
<label><%=nom_c%></label>

<label for="cedula" style="margin-left: 60px; font-size: 16px;">Vendedor: </label>
<label><%=nom_u%></label>



<table class="table_form">
  		<tr>
  			<th style="font-weight: bold;"><label style="margin-left: 0px; font-size: 16px;">Código producto</label></th>
  			<th style="font-weight: bold"><label style="margin-left: 0px; font-size: 16px;">Nombre Producto</label></th>
  			<th style="font-weight: bold"><label style="margin-left: 0px; font-size: 16px;">Valor unitario</label></th>
  			<th style="font-weight: bold"><label style="margin-left: 0px; font-size: 16px;">Cantidad</label></th>
  			<th style="font-weight: bold"><label style="margin-left: 0px; font-size: 16px;">Valor total</label></th>		    		
  		</tr>
  		
   		<tr>
   			<td><label><%=cod_1%></label></td>
   			<td><label><%=nom_p1%></label></td>
   			<td><label><%=pv_1%></label></td>
   			<td><label><%=cant_1%></label></td>
   			<td><label><%=sbt_1%></label></td>   		
   		</tr>
   		
   		<tr>
   			<td><label><%=cod_2%></label></td>
   			<td><label><%=nom_p2%></label></td>
   			<td><label><%=pv_2%></label></td>
   			<td><label><%=cant_2%></label></td>
   			<td><label><%=sbt_2%></label></td>   		
   		</tr>
   		
   		<tr>
   			<td><label><%=cod_3%></label></td>
   			<td><label><%=nom_p3%></label></td>
   			<td><label><%=pv_3%></label></td>
   			<td><label><%=cant_3%></label></td>
   			<td><label><%=sbt_3%></label></td>   		
   		</tr>

   		<tr>
   			<td colspan="5" style="text-align: right; font-weight: bold;">Total valor de Venta &nbsp&nbsp&nbsp</td>
   			<td><label><%=stt%></label></td>	    			
   		</tr>
   		
   		<tr>
   			<td colspan="5" style="text-align: right; font-weight: bold;">Total IVA &nbsp&nbsp&nbsp</td>
   			<td><label><%=tiva%></label></td>	    			
		</tr>
    		
   		<tr>
   			<td colspan="5" style="text-align: right; font-weight: bold; font-size: 20px;">Valor a pagar &nbsp&nbsp</td>
   			<td><label><%=pagar%></label></td>	    			
   		</tr>
</table>

 <form action="VentaController" method="post" class="userForm1">
	<div class="ced_udu">
		<input type="submit" name="reset" value="Finalizar">
	</div>
</form>	
	    		
</body>
</html>