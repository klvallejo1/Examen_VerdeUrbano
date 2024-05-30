<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@page import="java.sql.SQLException"%>
<%@page import="modelo.Usuario"%>
<%@page import="modelo.Usuario_DAO"%>
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insertar título aquí</title>
</head>
<body>
<%
    String correo = request.getParameter("correo");
    String password = request.getParameter("password");

    Usuario_DAO usuarioDAO = new Usuario_DAO();
    Usuario usuario = null;
    try {
    	usuario = usuarioDAO.validate(correo, password);
    } catch (SQLException e) {
        e.printStackTrace();
    }

    if (usuario != null) {
        session.setAttribute("usuario", usuario);

        if (usuario.getId_perfil() == 1) {
            response.sendRedirect("perfilAdmin.jsp");
        } else if (usuario.getId_perfil() == 2) {
            response.sendRedirect("perfilUsuario.jsp");
        }
    } else {
        request.setAttribute("errorMessage", "Correo o contraseña incorrectos");
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }
%>

</body>
</html>