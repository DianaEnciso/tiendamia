package controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;

public class Conexion 
{

	Connection cnn;
	
	
	public Connection conexiondb()
	{
		try 
		{
				Class.forName("org.mariadb.jdbc.Driver");
			
			try 
			{
				cnn=DriverManager.getConnection("jdbc:mariadb://tiendagenericagrupo43-10-32.czo3ixoe3xoe.us-east-1.rds.amazonaws.com/bd_MinFruver","admin","123456789");
				//JOptionPane.showMessageDialog(null,"Conexion ok");
				
			} catch (SQLException e) 
			{
				
				e.printStackTrace();
			}
						
		} catch (ClassNotFoundException e) 
		{
			
			e.printStackTrace();
			JOptionPane.showMessageDialog(null,"Conexión fallida");
		}
		
		return cnn;
		
	}
	
	
}
