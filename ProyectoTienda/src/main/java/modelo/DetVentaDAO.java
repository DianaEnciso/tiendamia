package modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.swing.JOptionPane;

import controller.Conexion;

public class DetVentaDAO {
	
	Conexion con=new Conexion();
	Connection cnn=con.conexiondb();
	PreparedStatement ps;
	ResultSet rs;
	
	public boolean RegistrarDetalleVenta(DetVentaDTO detven) {
		int x;
		boolean res=false;
		
		try {
			ps=cnn.prepareStatement("INSERT INTO detalle_ventas(cantidad_producto,codigo_producto,codigo_venta,valor_total,valor_venta,valoriva) VALUE (?,?,?,?,?,?) ");
			ps.setInt(1, detven.getCantidad_producto());
			ps.setInt(2,detven.getCodigo_producto());
			ps.setInt(3, detven.getCodigo_venta());
			ps.setDouble(4, detven.getValor_total());
			ps.setDouble(5, detven.getValor_venta());
			ps.setDouble(6, detven.getValor_iva());
			x=ps.executeUpdate();
			
			if(x>0) {
				res=true;
			}
		
		} catch (SQLException e) {
			JOptionPane.showMessageDialog(null,"Error al registrar el detalle de venta: " + e);
		}
		
		return res;
	}
}
