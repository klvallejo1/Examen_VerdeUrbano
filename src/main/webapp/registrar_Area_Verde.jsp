<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@page import="modelo.Usuario"%>
<%@page import="java.sql.SQLException"%>
<%@page import="modelo.Area_Verde_DAO"%>
<%@page import="modelo.Area_Verde"%>
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Registro de Area Verde</title>
	<link rel="stylesheet" href="css/normalize.css">
    <link rel="stylesheet" href="css/style_registrar_Usuario.css">
    <link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/remixicon@4.2.0/fonts/remixicon.css">
</head>
<body>
	<%
		// Recuperar el usuario desde la sesión
	    Usuario usuario = (Usuario) session.getAttribute("usuario");
	    if (usuario == null) {
	        response.sendRedirect("login.jsp");
	        return;
	    }
	    
	    int idUsuario = usuario.getId_user();
	
	    String titulo = request.getParameter("titulo");
	    String descripcion = request.getParameter("descripcion");
	    String ciudad = request.getParameter("ciudad");
	    String direccion = request.getParameter("direccion");
	    int tipo_area = Integer.parseInt(request.getParameter("tipo_area"));
	
	    Area_Verde nuevaArea = new Area_Verde();
	    nuevaArea.setTitulo_area(titulo);
	    nuevaArea.setDescripcion_area(descripcion);
	    nuevaArea.setCiudad_area(ciudad);
	    nuevaArea.setDireccion_area(direccion);
	    nuevaArea.setId_perfil_area(tipo_area);
	    nuevaArea.setId_user(idUsuario);
	    
	    Area_Verde_DAO areaVerdeDAO = new Area_Verde_DAO();
	    try {
	        areaVerdeDAO.insert(nuevaArea);
	        out.println("<h1>Área Verde añadida correctamente</h1>");
	    } catch (SQLException e) {
	        e.printStackTrace();
	        out.println("<h1>Error al añadir el Área Verde</h1>");
	    }
	%>
    
    <a href="perfilAdmin.jsp" class="btn">REGRESAR!</a>

</body>
</html>