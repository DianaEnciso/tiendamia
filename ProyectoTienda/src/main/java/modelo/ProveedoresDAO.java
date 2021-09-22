package modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.swing.JOptionPane;

import controller.Conexion;

public class ProveedoresDAO 

{
	Conexion con= new Conexion();
	Connection cnn=con.conexiondb();
	PreparedStatement ps;
	ResultSet rs;
	ProveedoresDTO prove;
	
	//INSERTAR PROVEEDOR
	
	public boolean insertarproovedor(ProveedoresDTO prove)
	{
		int x;
		boolean dato=false;
		
		try 
		{
			ps=cnn.prepareStatement("INSERT INTO proveedores VALUES (?,?,?,?,?)");
			ps.setInt(1, prove.getNit());
			ps.setString(2, prove.getName());
			ps.setString(3, prove.getCity());
			ps.setString(4, prove.getAddress());
			ps.setString(5, prove.getTele());
			x=ps.executeUpdate();
			
			if(x>0) 
			{
				dato=true;
			}
			
		} catch (SQLException e) 
		{
			JOptionPane.showMessageDialog(null, "Error al insertar proveedor" + e);
			e.printStackTrace();
		}
		return dato;
		
	}
	
	
	
	
}
