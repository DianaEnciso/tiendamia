package modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.swing.JOptionPane;

import controller.Conexion;

public class VentasDAO {
	
	Conexion con = new Conexion();
	Connection cnn=con.conexiondb();
	PreparedStatement ps;
	ResultSet rs;
	
//Consultar el codigo de la última venta
	public int ConsultarCodVta() {
		int codven=0;
		
		try {
			ps=cnn.prepareStatement("SELECT MAX(codigo_venta) AS id FROM ventas");
		    rs=ps.executeQuery();
		    if(rs.next()) {
		    	codven=rs.getInt(1);
		    }
		    
		} catch (SQLException e) {
			JOptionPane.showMessageDialog(null,"Error al consultar el codigo de la última venta: " + e);
		}
		return codven;
	}
	
	
	
	
	
	
}
