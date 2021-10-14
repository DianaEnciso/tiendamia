$(document).ready(function(){
	
$('.btnConsUsu').on('click',function(){
	consultarusuarios();
});	
	
$('.btnConsCli').on('click',function(){
	consultarclientes();
});		

$('.btnConsProv').on('click',function(){
	consultarproveedores();	
});

$('.btnConsComp').on('click',function(){
	consultarcompras();
});	

$('.btnCliComp').on('click',function(){
	consultarcompraclientes();
});	

$('.btnConsVta').on('click',function(){
	consultarventas();
});	

$('.btnUsuVta').on('click',function(){
	consultarventausuarios();
});	

function consultarusuarios(){
	$.ajax({
	  url: "ConsultaGenUsuario",
	  type: "POST",
	  dataType: 'json',
	  success: function( result ) {
	    console.log(result);
		let tab=document.getElementById('tabla');
		tab.innerHTML='';
		tab.innerHTML+=`<tr>
							<th colspan="5" style="border-bottom:5px solid white; padding:10px; font-size:20px; font-weight:bold; letter-spacing:2px">USUARIOS</th>
						</tr>
						
						<tr>
							<th>Documento</th>
							<th>Nombre</th>
							<th>Correo</th>
							<th>Usuario</th>
							<th>Clave</th>
						</tr>`;
	
			for(let i of result){
				tab.innerHTML+=`<tr>
									<td>${i.cedula_usuario}</td>
									<td>${i.nombre_usuario}</td>
									<td>${i.email_usuario}</td>
									<td>${i.usuario}</td>
									<td>${i.password}</td>
								</tr>`;
				
			}
		}
	});
}

function consultarclientes(){
	$.ajax({
	  url: "ConsultaGenClientes",
	  type: "POST",
	  dataType: 'json',
	  success: function( result ) {
	    console.log(result);
		let tab=document.getElementById('tabla');
		tab.innerHTML='';
		tab.innerHTML+=`<tr>
							<th colspan="5" style="border-bottom:5px solid white; padding:10px; font-size:20px; font-weight:bold; letter-spacing:2px">CLIENTES</th>
						</tr>	
		
						<tr>
							<th>Documento</th>
							<th>Nombre</th>
							<th>Direccion</th>
							<th>Correo</th>
							<th>Telefono</th>
						</tr>`;
	
			for(let i of result){
				tab.innerHTML+=`<tr>
									<td>${i.cedula_clien}</td>
									<td>${i.nombre_clien}</td>
									<td>${i.direccion__clien}</td>
									<td>${i.email_clien}</td>
									<td>${i.telef_clien}</td>
								</tr>`;
				
			}
		}
	});
}

function consultarproveedores()
{
	$.ajax(
		{
	  url: "ConsultaGenProveedores",
	  type: "POST",
	  dataType: 'json',
	  success: function( result ) 
		{
	    console.log(result);
		let tab=document.getElementById('tabla');
		tab.innerHTML='';
		tab.innerHTML+=`<tr>
							<th colspan="5" style="border-bottom:5px solid white; padding:10px; font-size:20px; font-weight:bold; letter-spacing:2px">PROVEEDORES</th>
						</tr>
		
						<tr>
						<th>NIT</th>
							<th>Nombre</th>
							<th>Ciudad</th>
							<th>Direccion</th>
							<th>Telefono</th>
						</tr>`;
							
		for(let i of result)
		{
				tab.innerHTML+=`<tr>
									<td>${i.nit}</td>
									<td>${i.name}</td>
									<td>${i.city}</td>
									<td>${i.address}</td>
									<td>${i.tele}</td>
								</tr>`;
		}
	}
});

}

var total= 0;

function consultarcompras(){
	
  $.ajax({
    url: "ConGenVent",
    type: "POST",
    dataType: 'json',
    success: function( result ) {
      console.log(result);
    let tab=document.getElementById('tabla');
    tab.innerHTML='';
    tab.innerHTML+=`<tr>
						<th colspan="5" style="border-bottom:5px solid white; padding:10px; font-size:20px; font-weight:bold; letter-spacing:2px">COMPRAS</th>
					</tr>

					<tr>
		              <th>Codigo de venta</th>
					  <th>Documento</th>
		              <th>Nombre</th>
		              <th>Valor Compras</th>
		            </tr>`;
  
      for(let i of result){
        tab.innerHTML+=`<tr>
				  <td>${i.cod_vent}</td>
                  <td>${i.cedula_clien}</td>
                  <td>${i.nombre_clien}</td>
                  <td>${i.comp_cli}</td>
                </tr>`;
        
        total+=i.comp_cli;
      }
      tab.innerHTML+=` 
        <tr>
        <td></td><td></td><td rowspan="2"><b>Total</td><td><b>${total}</td>
        </tr>`;
    }
    
  });

}


function consultarcompraclientes(){
	
	$.ajax({
	  url: "ConsVentClie",
	  type: "POST",
	  dataType: 'json',
	  success: function( result ) {
	    console.log(result);
		let tab=document.getElementById('tabla');
		tab.innerHTML='';
		tab.innerHTML+=`<tr>
							<th colspan="5" style="border-bottom:5px solid white; padding:10px; font-size:20px; font-weight:bold; letter-spacing:2px">COMPRAS CLIENTES</th>
						</tr>
		
						<tr>
							<th>Documento</th>
							<th>Nombre del cliente</th>
							<th>Cantidad de compras</th>
							<th>Total en compras</th>
						</tr>`;
	
			for(let i of result){
				tab.innerHTML+=`<tr>
									<td>${i.cedula_clien}</td>
									<td>${i.nombre_clien}</td>
									<td>${i.cant_comp}</td>
									<td>${i.comp_cli}</td>
								</tr>`;
			}
		}
	});
}

var total2= 0;
function consultarventas(){
	
	$.ajax({
	  url: "ConGenVentUs",
	  type: "POST",
	  dataType: 'json',
	  success: function( result ) {
	    console.log(result);
		let tab=document.getElementById('tabla');
		tab.innerHTML='';
		tab.innerHTML+=`<tr>
							<th colspan="5" style="border-bottom:5px solid white; padding:10px; font-size:20px; font-weight:bold; letter-spacing:2px">VENTAS</th>
						</tr>
		
						<tr>
							<th>Codigo de venta</th>
							<th>Documento</th>
							<th>Nombre del usuario</th>
							<th>Valor ventas</th>
						</tr>`;
	
			for(let i of result){
				tab.innerHTML+=`<tr>
									<td>${i.cod_vent}</td>
									<td>${i.cedula_usuario}</td>
									<td>${i.nombre_usuario}</td>
									<td>${i.vent_usu}</td>
								</tr>`;
			total2+=i.vent_usu;
        
      }
      tab.innerHTML+=` 
        <tr>
        <td></td><td></td><td rowspan="2"><b>Total</td><td><b>${total2}</td>
        </tr>`;
    }
    
  });

}

function consultarventausuarios(){
	
	$.ajax({
	  url: "ConVenUsu",
	  type: "POST",
	  dataType: 'json',
	  success: function( result ) {
	    console.log(result);
		let tab=document.getElementById('tabla');
		tab.innerHTML='';
		tab.innerHTML+=`<tr>
							<th colspan="5" style="border-bottom:5px solid white; padding:10px; font-size:20px; font-weight:bold; letter-spacing:2px">VENTAS POR USUARIO</th>
						</tr>
		
						<tr>
							<th>Documento</th>
							<th>Nombre del usuario</th>
							<th>Cantidad de ventas</th>
							<th>Total ventas</th>
						</tr>`;
	
			for(let i of result){
				tab.innerHTML+=`<tr>
									<td>${i.cedula_usuario}</td>
									<td>${i.nombre_usuario}</td>
									<td>${i.cant_vent}</td>
									<td>${i.vent_usu}</td>
								</tr>`;
			}
		}
	});
}




});
