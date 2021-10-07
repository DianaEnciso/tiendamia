package modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.swing.JOptionPane;

import controller.Conexion;

public class LoginDAO {

	Conexion con=new Conexion();
	Connection cnn=con.conexiondb();
	PreparedStatement ps;
	ResultSet rs;
	LoginDTO usulog;
	UsuariosDTO usu;

	public UsuariosDTO Login(LoginDTO usulog) {
		
		try {
			ps=cnn.prepareStatement("SELECT * FROM usuarios WHERE password=? and usuario=?");
			ps.setString(1, usulog.getClave());
			ps.setString(2, usulog.getUsuario());
			rs=ps.executeQuery();
			
			if(rs.next()) {
				usu=new UsuariosDTO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),rs.getString(5));
			}
		} catch (SQLException e) {
			JOptionPane.showMessageDialog(null,"Error al validar el usuario" + e);
		}
		
		return usu;
	}
}
