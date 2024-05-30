<%@page import="java.sql.SQLException"%>
<%@page import="modelo.Usuario_DAO"%>
<%@page import="modelo.Usuario"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="controller.*"%>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Registro de Usuario</title>
    <link rel="stylesheet" href="css/normalize.css">
    <link rel="stylesheet" href="css/style_registrar_Usuario.css">
    <link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/remixicon@4.2.0/fonts/remixicon.css">
</head>
<body>

	<%
        String nombre = request.getParameter("nombre");
        String cedula = request.getParameter("cedula");
        String ciudad = request.getParameter("ciudad");
        String correo = request.getParameter("correo");
        String password = request.getParameter("password");

        Usuario usuario = new Usuario();
        usuario.setId_perfil(2);
        usuario.setNombre_user(nombre);
        usuario.setCedula_user(cedula);
        usuario.setCorreo_user(correo);
        usuario.setPassword_user(password);

        Usuario_DAO usuarioDAO = new Usuario_DAO();
        try {
            usuarioDAO.insertUsuario(usuario);
            out.println("<h2>Usuario registrado exitosamente! Ahora puedes iniciar sesión</h2>");
        } catch (SQLException e) {
            e.printStackTrace();
            out.println("<h2>Error al registrar el usuario. Intenta nuevamente.</h2>");
        }
        
    %>
    
    <a href="login.jsp" class="btn">REGRESAR!</a>

</body>

</html>