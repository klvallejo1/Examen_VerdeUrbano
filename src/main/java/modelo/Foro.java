package modelo;

public class Foro {
	private int id_foro;
	private int id_user;
	private int estado_foro;
	private String titulo_foro;
	private String contenido_foro;
	private int calificacion_foro;
	private String fecha_foro;
	
	public Foro(int id_foro, int id_user, int estado_foro, String titulo_foro, String contenido_foro,
			int calificacion_foro, String fecha_foro) {
		super();
		this.id_foro = id_foro;
		this.id_user = id_user;
		this.estado_foro = estado_foro;
		this.titulo_foro = titulo_foro;
		this.contenido_foro = contenido_foro;
		this.calificacion_foro = calificacion_foro;
		this.fecha_foro = fecha_foro;
	}
	
	public Foro() {

	}

	public int getId_foro() {
		return id_foro;
	}

	public void setId_foro(int id_foro) {
		this.id_foro = id_foro;
	}

	public int getId_user() {
		return id_user;
	}

	public void setId_user(int id_user) {
		this.id_user = id_user;
	}

	public int getEstado_foro() {
		return estado_foro;
	}

	public void setEstado_foro(int estado_foro) {
		this.estado_foro = estado_foro;
	}

	public String getTitulo_foro() {
		return titulo_foro;
	}

	public void setTitulo_foro(String titulo_foro) {
		this.titulo_foro = titulo_foro;
	}

	public String getContenido_foro() {
		return contenido_foro;
	}

	public void setContenido_foro(String contenido_foro) {
		this.contenido_foro = contenido_foro;
	}

	public int getCalificacion_foro() {
		return calificacion_foro;
	}

	public void setCalificacion_foro(int calificacion_foro) {
		this.calificacion_foro = calificacion_foro;
	}

	public String getFecha_foro() {
		return fecha_foro;
	}

	public void setFecha_foro(String fecha_foro) {
		this.fecha_foro = fecha_foro;
	}
}
