package modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import controller.DBConnection;

public class Area_Verde_DAO {
	private static final String INSERT_SQL = "INSERT INTO Area_Verde (id_perfil_area, id_user, titulo_area, descripcion_area, ciudad_area, direccion_area) VALUES (?, ?, ?, ?, ?, ?)";
	private static final String SELECT_BY_ID_SQL = "SELECT * FROM Area_Verde WHERE id_area = ?";
	private static final String SELECT_ALL_SQL = "SELECT * FROM area_verde";
	private static final String UPDATE_SQL = "UPDATE area_verde SET id_perfil_area = ?, id_user = ?, titulo_area = ?, descripcion_area = ?, ciudad_area = ?, direccion_area = ? WHERE id_area = ?";
	private static final String DELETE_SQL = "DELETE FROM area_verde WHERE id_area = ?";

	public void insert(Area_Verde areaVerde) throws SQLException {
		try (Connection connection = DBConnection.getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(INSERT_SQL)) {
			preparedStatement.setInt(1, areaVerde.getId_perfil_area());
			preparedStatement.setInt(2, areaVerde.getId_user());
			preparedStatement.setString(3, areaVerde.getTitulo_area());
			preparedStatement.setString(4, areaVerde.getDescripcion_area());
			preparedStatement.setString(5, areaVerde.getCiudad_area());
			preparedStatement.setString(6, areaVerde.getDireccion_area());
			preparedStatement.executeUpdate();
		}
	}

	public Area_Verde selectById(int id) throws SQLException {
		Area_Verde areaVerde = null;
		try (Connection connection = DBConnection.getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_BY_ID_SQL)) {
			preparedStatement.setInt(1, id);
			ResultSet resultSet = preparedStatement.executeQuery();
			if (resultSet.next()) {
				areaVerde = new Area_Verde();
				areaVerde.setId_area(resultSet.getInt("id_area"));
				areaVerde.setId_perfil_area(resultSet.getInt("id_perfil_area"));
				areaVerde.setId_user(resultSet.getInt("id_user"));
				areaVerde.setTitulo_area(resultSet.getString("titulo_area"));
				areaVerde.setDescripcion_area(resultSet.getString("descripcion_area"));
				areaVerde.setCiudad_area(resultSet.getString("ciudad_area"));
				areaVerde.setDireccion_area(resultSet.getString("direccion_area"));
			}
		}
		return areaVerde;
	}

	public List<Area_Verde> selectAll() throws SQLException {
		List<Area_Verde> areas = new ArrayList<>();
		try (Connection connection = DBConnection.getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_SQL)) {
			ResultSet resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				Area_Verde areaVerde = new Area_Verde();
				areaVerde.setId_area(resultSet.getInt("id_area"));
				areaVerde.setId_perfil_area(resultSet.getInt("id_perfil_area"));
				areaVerde.setId_user(resultSet.getInt("id_user"));
				areaVerde.setTitulo_area(resultSet.getString("titulo_area"));
				areaVerde.setDescripcion_area(resultSet.getString("descripcion_area"));
				areaVerde.setCiudad_area(resultSet.getString("ciudad_area"));
				areaVerde.setDireccion_area(resultSet.getString("direccion_area"));
				areas.add(areaVerde);
				
				System.out.println("ID de área: " + areaVerde.getId_area());
	            System.out.println("Perfil de área: " + areaVerde.getId_perfil_area());
	            System.out.println("Usuario de área: " + areaVerde.getId_user());
	            System.out.println("Título de área: " + areaVerde.getTitulo_area());
	            System.out.println("Descripción de área: " + areaVerde.getDescripcion_area());
	            System.out.println("Ciudad de área: " + areaVerde.getCiudad_area());
	            System.out.println("Dirección de área: " + areaVerde.getDireccion_area());
	            System.out.println("----------------------------------------------");
				
			}
		}
		return areas;
	}

	public boolean update(Area_Verde areaVerde) throws SQLException {
		boolean rowUpdated;
		try (Connection connection = DBConnection.getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_SQL)) {
			preparedStatement.setInt(1, areaVerde.getId_perfil_area());
			preparedStatement.setInt(2, areaVerde.getId_user());
			preparedStatement.setString(3, areaVerde.getTitulo_area());
			preparedStatement.setString(4, areaVerde.getDescripcion_area());
			preparedStatement.setString(5, areaVerde.getCiudad_area());
			preparedStatement.setString(6, areaVerde.getDireccion_area());
			preparedStatement.setInt(7, areaVerde.getId_area());
			rowUpdated = preparedStatement.executeUpdate() > 0;
		}
		return rowUpdated;
	}

	public boolean delete(int id) throws SQLException {
		boolean rowDeleted;
		try (Connection connection = DBConnection.getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(DELETE_SQL)) {
			preparedStatement.setInt(1, id);
			rowDeleted = preparedStatement.executeUpdate() > 0;
		}
		return rowDeleted;
	}

}
