package modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.swing.JOptionPane;
import controller.Conexion;


public class UsuariosDAO 
{

	Conexion con= new Conexion();
	Connection cnn=con.conexiondb();
	PreparedStatement ps;
	ResultSet rs;
	UsuariosDTO usu;
	
		

//INGRESAR AL SISTEMA POR BD
public boolean Ingresosistema(UsuariosDTO us) {
	
	try {
		ps = cnn.prepareStatement("SELECT password FROM usuarios WHERE usuario=?");
		ps.setString(1, us.getUsuario());
		rs=ps.executeQuery();
		
		if(rs.next()) {
			if(us.getPassword().equals(rs.getString(1))) {
				return true;
			}
			else {
				return false;
			}
		}
		
	} catch (SQLException e) {
		//JOptionPane.showMessageDialog(null, "Error al validar el usuario" + e);
	}
		
	return false;
}
	
	
//INSERTAR UN USUARIO
public boolean insertarusuario(UsuariosDTO us)
{
	
	int x;
	boolean dato=false;
	
	try 
	{
		ps=cnn.prepareStatement("INSERT INTO usuarios VALUES(?,?,?,?,?)");
		ps.setInt(1, us.getCedula_usuario());
		ps.setString(2, us.getEmail_usuario());
		ps.setString(3, us.getNombre_usuario());
		ps.setString(4, us.getPassword());
		ps.setString(5, us.getUsuario());
		
		x=ps.executeUpdate();
		
		if(x>0)
		{
			dato=true;
		}
		
	} catch (SQLException e) 
	{
		//JOptionPane.showMessageDialog(null, "El usuario ya se encuentra registrado");
		e.printStackTrace();
	}
	
	return dato;
	
}

public UsuariosDTO consultarUnUsuario(UsuariosDTO us)
{
	//CONSULTAR UN USUARIO
	
	try 
	{
		ps=cnn.prepareStatement("SELECT * FROM usuarios WHERE cedula_usuario=?");
		ps.setInt(1, us.getCedula_usuario());
		rs=ps.executeQuery();
		
		
		if(rs.next())
		{
			usu=new UsuariosDTO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5));
			
		}
		else
		{
			
			usu=null;
		}
		
		
		
	} catch (SQLException e) 
	{
		//JOptionPane.showMessageDialog(null, "Error al consultar el usuario " + e);
		e.printStackTrace();
		
	}
	
	return usu;
}


	public int eliminarusuario (UsuariosDTO us)
	{
		
		
		
	//ELIMINAR UN USUARIO
	int x=0;
	
	try 
	{
		ps=cnn.prepareStatement("DELETE FROM usuarios WHERE cedula_usuario=?");
		ps.setInt(1, us.getCedula_usuario());
		x=ps.executeUpdate();
		
	} catch (SQLException e) 
	
	{
		
		//JOptionPane.showMessageDialog(null, "Error al eliminar el usuario " + e);
		e.printStackTrace();
		
	}
	
	return x;
}

		//ACTUALIZAR USUARIO

	public boolean actualizar(UsuariosDTO us)
	{
		boolean dat=false;
		int x;
		
		try {
		ps=cnn.prepareStatement("UPDATE usuarios SET email_usuario=?, nombre_usuario=?, password=?, usuario=? WHERE cedula_usuario=?");
		ps.setString(1, us.getEmail_usuario());
		ps.setString(2, us.getNombre_usuario());
		ps.setString(3, us.getPassword());
		ps.setString(4, us.getUsuario());
		ps.setInt(5, us.getCedula_usuario());
		
		x=ps.executeUpdate();
			
		if(x>0)
		{
			dat=true;
		}
		} catch (SQLException e) 
		{
			
			e.printStackTrace();
		}
		
		return dat;

}
	//consulta general usuarios
	public ArrayList<UsuariosDTO> ConsGenUsu(){
		
		ArrayList<UsuariosDTO> lista=new ArrayList<UsuariosDTO>();
		try {
			ps=cnn.prepareStatement("SELECT * FROM usuarios");
			rs=ps.executeQuery();
			while(rs.next()) {
				usu=new UsuariosDTO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5));
				lista.add(usu);
			}
		
		} catch (SQLException e) {
			//JOptionPane.showMessageDialog(null,"Error al hacer la consulta general de usuarios: " + e);
		}
		return lista;
	}
	
	//consulta ventas lista larga
			public ArrayList<UsuariosDTO> ConsVntGen(){
				
				ArrayList<UsuariosDTO> lista=new ArrayList<UsuariosDTO>();

				try {
					ps=cnn.prepareStatement("SELECT V.codigo_venta AS codigo_venta, U.cedula_usuario AS cedula_usuario, U.nombre_usuario AS nombre_usuario, V.valor_venta AS valor_venta FROM usuarios AS U, ventas AS V WHERE (U.cedula_usuario = V.cedula_usuario);");
					rs=ps.executeQuery();
					while(rs.next()) {
						usu = new UsuariosDTO(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getDouble(4));
						lista.add(usu);
					}
					//JOptionPane.showMessageDialog(null,"en el dao " + lista.size());
							
				} catch (SQLException e) {
					//JOptionPane.showMessageDialog(null, "Error al hacer consulta cruzada de clientes y ventas: "+ e);
				}
				return lista;
			}
		
		 //consulta ventas por usuarios
		
		public ArrayList<UsuariosDTO> ConsVtaUsu(){
			
			ArrayList<UsuariosDTO> lista=new ArrayList<UsuariosDTO>();
			
			try {
				ps=cnn.prepareStatement("SELECT U.cedula_usuario AS cedula_usuario, U.nombre_usuario AS nombre_usuario, V.valor_venta AS valor_venta FROM usuarios AS U, ventas AS V WHERE (U.cedula_usuario = V.cedula_usuario);");
				rs=ps.executeQuery();
				while(rs.next()) {
					usu=new UsuariosDTO(rs.getInt(1), rs.getString(2), rs.getDouble(3));
					lista.add(usu);
				}
			} catch (SQLException e) {
				//JOptionPane.showMessageDialog(null,"Error al hacer la consulta cruzada de usuarios y venta " + e);
			}
			
			
			return lista;
		}
}
