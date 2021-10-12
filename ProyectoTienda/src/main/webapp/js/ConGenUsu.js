$(document).ready(function(){
	
$('.btnConsUsu').on('click',function(){
	consultarusuarios();
});	
	
$('.btnConsCli').on('click',function(){
	consultarclientes();
});		

$('.btnConsVta').on('click',function(){
	consultarventas();
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


var total= 0;

function consultarventas(){
  $.ajax({
    url: "ConGenVent",
    type: "POST",
    dataType: 'json',
    success: function( result ) {
      console.log(result);
    let tab=document.getElementById('tabla');
    tab.innerHTML='';
    tab.innerHTML+=`<tr>
              <th>Documento</th>
              <th>Nombre</th>
              <th>Valor compras</th>
            </tr>`;
  
      for(let i of result){
        tab.innerHTML+=`<tr>
                  <td>${i.cedula_clien}</td>
                  <td>${i.nombre_clien}</td>
                  <td>${i.comp_cli}</td>
                </tr>`;
        total+=i.comp_cli;
        
      }
      tab.innerHTML+=` 
        <tr>
        <td></td><td rowspan="2"><b>Total</td><td><b>${total}</td>
        </tr>`;
    }
    
  });

}

});
