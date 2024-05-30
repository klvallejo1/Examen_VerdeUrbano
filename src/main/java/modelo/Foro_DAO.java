package modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import controller.DBConnection;

public class Foro_DAO {
	private static final String INSERT_FORO_SQL = "INSERT INTO foro (id_user, estado_foro, titulo_foro, contenido_foro, calificacion_foro, fecha_foro) VALUES (?, ?, ?, ?, ?, ?);";
    private static final String SELECT_FORO_BY_ID = "SELECT id_foro, id_user, estado_foro, titulo_foro, contenido_foro, calificacion_foro, fecha_foro FROM foro WHERE id_foro = ?;";
    private static final String SELECT_ALL_FOROS = "SELECT * FROM foro;";
    private static final String DELETE_FORO_SQL = "DELETE FROM foro WHERE id_foro = ?;";
    private static final String UPDATE_FORO_SQL = "UPDATE foro SET id_user = ?, estado_foro = ?, titulo_foro = ?, contenido_foro = ?, calificacion_foro = ?, fecha_foro = ? WHERE id_foro = ?;";

    public void insertForo(Foro foro) throws SQLException {
        try (Connection connection = DBConnection.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_FORO_SQL)) {
            preparedStatement.setInt(1, foro.getId_user());
            preparedStatement.setInt(2, foro.getEstado_foro());
            preparedStatement.setString(3, foro.getTitulo_foro());
            preparedStatement.setString(4, foro.getContenido_foro());
            preparedStatement.setInt(5, foro.getCalificacion_foro());
            preparedStatement.setString(6, foro.getFecha_foro());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            printSQLException(e);
        }
    }

    public Foro selectForo(int id) {
        Foro foro = null;
        try (Connection connection = DBConnection.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_FORO_BY_ID)) {
            preparedStatement.setInt(1, id);
            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                int id_user = rs.getInt("id_user");
                int estado_foro = rs.getInt("estado_foro");
                String titulo_foro = rs.getString("titulo_foro");
                String contenido_foro = rs.getString("contenido_foro");
                int calificacion_foro = rs.getInt("calificacion_foro");
                String fecha_foro = rs.getString("fecha_foro");
                foro = new Foro(id, id_user, estado_foro, titulo_foro, contenido_foro, calificacion_foro, fecha_foro);
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return foro;
    }

    public List<Foro> selectAllForos() {
        List<Foro> foros = new ArrayList<>();
        try (Connection connection = DBConnection.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_FOROS)) {
            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                int id_foro = rs.getInt("id_foro");
                int id_user = rs.getInt("id_user");
                int estado_foro = rs.getInt("estado_foro");
                String titulo_foro = rs.getString("titulo_foro");
                String contenido_foro = rs.getString("contenido_foro");
                int calificacion_foro = rs.getInt("calificacion_foro");
                String fecha_foro = rs.getString("fecha_foro");
                foros.add(new Foro(id_foro, id_user, estado_foro, titulo_foro, contenido_foro, calificacion_foro, fecha_foro));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return foros;
    }

    public boolean deleteForo(int id) throws SQLException {
        boolean rowDeleted;
        try (Connection connection = DBConnection.getConnection();
             PreparedStatement statement = connection.prepareStatement(DELETE_FORO_SQL)) {
            statement.setInt(1, id);
            rowDeleted = statement.executeUpdate() > 0;
        }
        return rowDeleted;
    }

    public boolean updateForo(Foro foro) throws SQLException {
        boolean rowUpdated;
        try (Connection connection = DBConnection.getConnection();
             PreparedStatement statement = connection.prepareStatement(UPDATE_FORO_SQL)) {
            statement.setInt(1, foro.getId_user());
            statement.setInt(2, foro.getEstado_foro());
            statement.setString(3, foro.getTitulo_foro());
            statement.setString(4, foro.getContenido_foro());
            statement.setInt(5, foro.getCalificacion_foro());
            statement.setString(6, foro.getFecha_foro());
            statement.setInt(7, foro.getId_foro());
            rowUpdated = statement.executeUpdate() > 0;
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
