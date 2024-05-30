package modelo;

public class Perfil_Area {
	private int id_perfil_area;
	private String descripcion_perfil_area;
	
	public Perfil_Area(int id_perfil_area, String descripcion_perfil_area) {
		super();
		this.id_perfil_area = id_perfil_area;
		this.descripcion_perfil_area = descripcion_perfil_area;
	}
	
	public Perfil_Area() {

	}

	public int getId_perfil_area() {
		return id_perfil_area;
	}

	public void setId_perfil_area(int id_perfil_area) {
		this.id_perfil_area = id_perfil_area;
	}

	public String getDescripcion_perfil_area() {
		return descripcion_perfil_area;
	}

	public void setDescripcion_perfil_area(String descripcion_perfil_area) {
		this.descripcion_perfil_area = descripcion_perfil_area;
	}
	
}
