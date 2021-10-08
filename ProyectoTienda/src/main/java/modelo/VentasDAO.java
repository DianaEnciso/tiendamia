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
	
	
	
	public boolean RegistrarVenta(VentasDTO ven) {
		int x;
		boolean res = false;
		
		try {
			ps=cnn.prepareStatement("INSERT INTO ventas(cedula_cliente, cedula_usuario, ivaventa, total_venta, valor_venta) VALUE (?,?,?,?,?)");
			ps.setInt(1, ven.getCedula_cliente());
			ps.setInt(2, ven.getCedula_usuario());
			ps.setDouble(3, ven.getIva_venta());
			ps.setDouble(4, ven.getTotal_venta());
			ps.setDouble(5, ven.getTotal_venta());
			x=ps.executeUpdate();
			
			if (x>0) {
				res=false;
			}
					
		} catch (SQLException e) {
			JOptionPane.showMessageDialog(null,"Error al registrar la venta" + e);
		}
		return res;		
	}
	
	
	
}
