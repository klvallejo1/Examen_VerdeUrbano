package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

@WebServlet("/testConnection")
public class TestConnectionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public TestConnectionServlet() {
        super();
    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try (Connection connection = DBConnection.getConnection()) {
            response.getWriter().append("Conexión exitosa a PostgreSQL");
        } catch (SQLException e) {
            e.printStackTrace();
            response.getWriter().append("Error en la conexión: ").append(e.getMessage());
        }
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
