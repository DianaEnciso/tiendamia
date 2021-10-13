package modelo;

public class UsuariosDTO 
{
	private int cedula_usuario;
	private String email_usuario;
	private String nombre_usuario;
	private String password;
	private String usuario;
	private double vent_usu;
	private int cant_vent;
	private int cod_vent;
	
	
	
	public UsuariosDTO(int cedula_usuario, String email_usuario, String nombre_usuario, String password,
			String usuario) 
	{
		super();
		this.cedula_usuario = cedula_usuario;
		this.email_usuario = email_usuario;
		this.nombre_usuario = nombre_usuario;
		this.password = password;
		this.usuario = usuario;
	}

	public UsuariosDTO(int cod_vent, int cedula_usuario, String nombre_usuario, double vent_usu) {
		super();
		this.cod_vent = cod_vent;
		this.cedula_usuario = cedula_usuario;
		this.nombre_usuario = nombre_usuario;
		this.vent_usu = vent_usu;
	}



	public UsuariosDTO(int cedula_usuario, String nombre_usuario, double vent_usu) {
		super();
		this.cedula_usuario = cedula_usuario;
		this.nombre_usuario = nombre_usuario;
		this.vent_usu = vent_usu;
	}


	public UsuariosDTO(int cedula_usuario, String nombre_usuario, double vent_usu, int cant_vent) {
		super();
		this.cedula_usuario = cedula_usuario;
		this.nombre_usuario = nombre_usuario;
		this.vent_usu = vent_usu;
		this.cant_vent = cant_vent;
	}
	

	public UsuariosDTO(int cedula_usuario) 
	{
		super();
		this.cedula_usuario = cedula_usuario;
	}




	public UsuariosDTO(String password, String usuario) {
		super();
		this.password = password;
		this.usuario = usuario;
	}




	public double getVent_usu() {
		return vent_usu;
	}

	public void setVent_usu(double vent_usu) {
		this.vent_usu = vent_usu;
	}

	public int getCant_vent() {
		return cant_vent;
	}

	public void setCant_vent(int cant_vent) {
		this.cant_vent = cant_vent;
	}

	public int getCod_vent() {
		return cod_vent;
	}

	public void setCod_vent(int cod_vent) {
		this.cod_vent = cod_vent;
	}

	public int getCedula_usuario() 
	{
		return cedula_usuario;
	}


	public void setCedula_usuario(int cedula_usuario) 
	{
		this.cedula_usuario = cedula_usuario;
	}


	public String getEmail_usuario() 
	{
		return email_usuario;
	}


	public void setEmail_usuario(String email_usuario) 
	{
		this.email_usuario = email_usuario;
	}


	public String getNombre_usuario() 
	{
		return nombre_usuario;
	}

	public void setNombre_usuario(String nombre_usuario) 
	{
		this.nombre_usuario = nombre_usuario;
	}


	public String getPassword() 
	{
		return password;
	}


	public void setPassword(String password) 
	{
		this.password = password;
	}


	public String getUsuario() 
	{
		return usuario;
	}

	public void setUsuario(String usuario) 
	{
		this.usuario = usuario;
	}
	
	
	
	
}
