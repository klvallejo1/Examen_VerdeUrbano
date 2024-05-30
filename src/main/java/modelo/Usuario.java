package modelo;

public class Usuario {
	private int id_user;
	private int id_perfil;
	private String nombre_user;
	private String cedula_user;
	private String correo_user;
	private String password_user;
	
	public Usuario(int id_user, int id_perfil, String nombre_user, String cedula_user, String correo_user,
			String password_user) {
		super();
		this.id_user = id_user;
		this.id_perfil = id_perfil;
		this.nombre_user = nombre_user;
		this.cedula_user = cedula_user;
		this.correo_user = correo_user;
		this.password_user = password_user;
	}
	
	public Usuario() {
		
	}
	
	
	public int getId_user() {
		return id_user;
	}
	public void setId_user(int id_user) {
		this.id_user = id_user;
	}
	public int getId_perfil() {
		return id_perfil;
	}
	public void setId_perfil(int id_perfil) {
		this.id_perfil = id_perfil;
	}
	public String getNombre_user() {
		return nombre_user;
	}
	public void setNombre_user(String nombre_user) {
		this.nombre_user = nombre_user;
	}
	public String getCedula_user() {
		return cedula_user;
	}
	public void setCedula_user(String cedula_user) {
		this.cedula_user = cedula_user;
	}
	public String getCorreo_user() {
		return correo_user;
	}
	public void setCorreo_user(String correo_user) {
		this.correo_user = correo_user;
	}
	public String getPassword_user() {
		return password_user;
	}
	public void setPassword_user(String password_user) {
		this.password_user = password_user;
	}
	
}
