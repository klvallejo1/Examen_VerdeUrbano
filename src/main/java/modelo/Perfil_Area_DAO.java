package modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import controller.DBConnection;

public class Perfil_Area_DAO {

	private static final String SELECT_ALL_SQL = "SELECT * FROM perfil_area";

	public List<Perfil_Area> selectAll() throws SQLException {
		List<Perfil_Area> perfiles = new ArrayList<>();
		try (Connection connection = DBConnection.getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_SQL)) {
			ResultSet resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				Perfil_Area perfil = new Perfil_Area();
				perfil.setId_perfil_area(resultSet.getInt("id_perfil_area"));
				perfil.setDescripcion_perfil_area(resultSet.getString("descripcion_perfil_area"));
				perfiles.add(perfil);
			}
		}
		return perfiles;
	}

}
