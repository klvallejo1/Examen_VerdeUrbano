package modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import controller.DBConnection;

public class Usuario_DAO {
	 private static final String INSERT_USUARIO_SQL = "INSERT INTO usuario (id_perfil, nombre_user, cedula_user, correo_user, password_user) VALUES (?, ?, ?, ?, ?);";
	    private static final String SELECT_USUARIO_BY_ID = "SELECT id_user, id_perfil, nombre_user, cedula_user, correo_user, password_user FROM usuario WHERE id_user = ?;";
	    private static final String SELECT_ALL_USUARIOS = "SELECT * FROM usuario;";
	    private static final String DELETE_USUARIO_SQL = "DELETE FROM usuario WHERE id_user = ?;";
	    private static final String UPDATE_USUARIO_SQL = "UPDATE usuario SET id_perfil = ?, nombre_user = ?, cedula_user = ?, correo_user = ?, password_user = ? WHERE id_user = ?;";

	    public void insertUsuario(Usuario usuario) throws SQLException {
	        try (Connection connection = DBConnection.getConnection();
	             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USUARIO_SQL)) {
	            preparedStatement.setInt(1, usuario.getId_perfil());
	            preparedStatement.setString(2, usuario.getNombre_user());
	            preparedStatement.setString(3, usuario.getCedula_user());
	            preparedStatement.setString(4, usuario.getCorreo_user());
	            preparedStatement.setString(5, usuario.getPassword_user());
	            preparedStatement.executeUpdate();
	        } catch (SQLException e) {
	            printSQLException(e);
	        }
	    }

	    public Usuario selectUsuario(int id_user) {
	        Usuario usuario = null;
	        try (Connection connection = DBConnection.getConnection();
	             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_USUARIO_BY_ID)) {
	            preparedStatement.setInt(1, id_user);
	            ResultSet rs = preparedStatement.executeQuery();
	            while (rs.next()) {
	                int id_perfil = rs.getInt("id_perfil");
	                String nombre_user = rs.getString("nombre_user");
	                String cedula_user = rs.getString("cedula_user");
	                String correo_user = rs.getString("correo_user");
	                String password_user = rs.getString("password_user");
	                usuario = new Usuario(id_user, id_perfil, nombre_user, cedula_user, correo_user, password_user);
	            }
	        } catch (SQLException e) {
	            printSQLException(e);
	        }
	        return usuario;
	    }

	    public List<Usuario> selectAllUsuarios() {
	        List<Usuario> usuarios = new ArrayList<>();
	        try (Connection connection = DBConnection.getConnection();
	             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_USUARIOS)) {
	            ResultSet rs = preparedStatement.executeQuery();
	            while (rs.next()) {
	                int id_user = rs.getInt("id_user");
	                int id_perfil = rs.getInt("id_perfil");
	                String nombre_user = rs.getString("nombre_user");
	                String cedula_user = rs.getString("cedula_user");
	                String correo_user = rs.getString("correo_user");
	                String password_user = rs.getString("password_user");
	                usuarios.add(new Usuario(id_user, id_perfil, nombre_user, cedula_user, correo_user, password_user));
	            }
	        } catch (SQLException e) {
	            printSQLException(e);
	        }
	        return usuarios;
	    }

	    public boolean deleteUsuario(int id_user) throws SQLException {
	        boolean rowDeleted;
	        try (Connection connection = DBConnection.getConnection();
	             PreparedStatement preparedStatement = connection.prepareStatement(DELETE_USUARIO_SQL)) {
	            preparedStatement.setInt(1, id_user);
	            rowDeleted = preparedStatement.executeUpdate() > 0;
	        }
	        return rowDeleted;
	    }
	    
	    public Usuario validate(String correo, String password) throws SQLException {
	        String VALIDATE_USER_SQL = "SELECT * FROM usuario WHERE correo_user = ? AND password_user = ?";
	        Usuario usuario = null;

	        try (Connection connection = DBConnection.getConnection();
	             PreparedStatement preparedStatement = connection.prepareStatement(VALIDATE_USER_SQL)) {
	            preparedStatement.setString(1, correo);
	            preparedStatement.setString(2, password);
	            ResultSet resultSet = preparedStatement.executeQuery();

	            if (resultSet.next()) {
	                usuario = new Usuario();
	                usuario.setId_user(resultSet.getInt("id_user"));
	                usuario.setId_perfil(resultSet.getInt("id_perfil"));
	                usuario.setNombre_user(resultSet.getString("nombre_user"));
	                usuario.setCedula_user(resultSet.getString("cedula_user"));
	                usuario.setCorreo_user(resultSet.getString("correo_user"));
	                usuario.setPassword_user(resultSet.getString("password_user"));
	            }
	        }
	        return usuario;
	    }

	    public boolean updateUsuario(Usuario usuario) throws SQLException {
	        boolean rowUpdated;
	        try (Connection connection = DBConnection.getConnection();
	             PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_USUARIO_SQL)) {
	            preparedStatement.setInt(1, usuario.getId_perfil());
	            preparedStatement.setString(2, usuario.getNombre_user());
	            preparedStatement.setString(3, usuario.getCedula_user());
	            preparedStatement.setString(4, usuario.getCorreo_user());
	            preparedStatement.setString(5, usuario.getPassword_user());
	            preparedStatement.setInt(6, usuario.getId_user());
	            rowUpdated = preparedStatement.executeUpdate() > 0;
	        }
	        return rowUpdated;
	    }

	    private void printSQLException(SQLException ex) {
	        for (Throwable e : ex) {
	            if (e instanceof SQLException) {
	                e.printStackTrace(System.err);
	                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
	                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
	                System.err.println("Message: " + e.getMessage());
	                Throwable t = ex.getCause();
	                while (t != null) {
	                    System.out.println("Cause: " + t);
	                    t = t.getCause();
	                }
	            }
	        }
	    }

}
