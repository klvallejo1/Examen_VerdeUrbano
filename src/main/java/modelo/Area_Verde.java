package modelo;

public class Area_Verde {
	private int id_area;
	private int id_perfil_area;
	private int id_user;
	private String titulo_area;
	private String descripcion_area;
	private String ciudad_area;
	private String direccion_area;
	
	public Area_Verde(int id_area, int id_perfil_area, int id_user, String titulo_area, String descripcion_area,
			String ciudad_area, String direccion_area) {
		super();
		this.id_area = id_area;
		this.id_perfil_area = id_perfil_area;
		this.id_user = id_user;
		this.titulo_area = titulo_area;
		this.descripcion_area = descripcion_area;
		this.ciudad_area = ciudad_area;
		this.direccion_area = direccion_area;
	}
	
	public Area_Verde() {

	}

	public int getId_area() {
		return id_area;
	}

	public void setId_area(int id_area) {
		this.id_area = id_area;
	}

	public int getId_perfil_area() {
		return id_perfil_area;
	}

	public void setId_perfil_area(int id_perfil_area) {
		this.id_perfil_area = id_perfil_area;
	}

	public int getId_user() {
		return id_user;
	}

	public void setId_user(int id_user) {
		this.id_user = id_user;
	}

	public String getTitulo_area() {
		return titulo_area;
	}

	public void setTitulo_area(String titulo_area) {
		this.titulo_area = titulo_area;
	}

	public String getDescripcion_area() {
		return descripcion_area;
	}

	public void setDescripcion_area(String descripcion_area) {
		this.descripcion_area = descripcion_area;
	}

	public String getCiudad_area() {
		return ciudad_area;
	}

	public void setCiudad_area(String ciudad_area) {
		this.ciudad_area = ciudad_area;
	}

	public String getDireccion_area() {
		return direccion_area;
	}

	public void setDireccion_area(String direccion_area) {
		this.direccion_area = direccion_area;
	}
	
}
