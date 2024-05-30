<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@page import="java.sql.SQLException"%>
<%@page import="modelo.Perfil_Area"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Perfil_Area_DAO"%>
<%@page import="modelo.Usuario"%>
<html lang="es">
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    
    	String perfil;
    
	    Usuario usuario = (Usuario) session.getAttribute("usuario");
	    if (usuario == null) {
	        response.sendRedirect("login.jsp");
	    }
	    
	    if(usuario.getId_perfil()==1){
	    	perfil="Administrador";
	    }else{
	    	perfil="Usuario Registrado";
	    }
	    
	    Perfil_Area_DAO perfilAreaDAO = new Perfil_Area_DAO();
	    List<Perfil_Area> perfilesArea = null;
	    try {
	        perfilesArea = perfilAreaDAO.selectAll();
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    
	    
	%>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Administrador</title>
    <link rel="stylesheet" href="normalize.css">
    <link rel="stylesheet" href="css/style_perfil_Admin.css">
    <link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/remixicon@4.2.0/fonts/remixicon.css">
</head>
<body>
    <header id="header">
        <a href="index.html" class="logo">Verde<span>Urbano</span></a>
        <ul class="navbar">
            <li><a href="conectate.jsp">Conéctate</a></li>
            <li><a href="perfilAdmin.jsp">Tu Cuenta</a></li>
        </ul>
        <div class="h-right">
            <a href="#">Síguenos</a>
            <a href="#"><i class="ri-instagram-fill"></i></a>
            <a href="#"><i class="ri-youtube-fill"></i></a>
            <a href="#"><i class="ri-facebook-fill"></i></a>
            <div class="bx bx-menu" id="menu-icon"></div>
        </div>
    </header>

    <section class="home">
        <div class="home-text">
            <h2>Bienvenido!</h2>
            <h1>Administrador</h1>
            <a href="#" class="btn">EMPEZAR</a>
        </div>
    </section>

    <div class="container">
        <!-- Primera sección -->
        <section class="primera-seccion">
          <h2 class="titulos_seccion"><%= usuario.getNombre_user()%></h2>
          <h3><%=perfil%></h3>
          <img src="css/Perfil.jpg" alt="Foto de perfil">
          <h2>Correo</h2>
          <p><%= usuario.getCorreo_user()%></p>
          <h2>Cedula</h2>
          <p><%= usuario.getCedula_user()%></p>
        </section>
      
        <!-- Segunda sección -->
        <section class="segunda-seccion">
          <h2 class="titulos_seccion">Revisiones Pendientes</h2>
          <div>
            <input type="checkbox" id="revision" name="revision">
            <label for="revision">Título de la revisión</label>
            <button class="btn">Aceptar</button>
            <button class="btn">Rechazar</button>
          </div>
        </section>
      
        <!-- Tercera sección -->
        <section class="tercera-seccion">
          <h2 class="titulos_seccion">Añadir Área Verde</h2>
          <form action="registrar_Area_Verde.jsp" method="post">
            <label for="titulo">Título:</label>
            <input type="text" id="titulo" name="titulo" required>
            
            <label for="tipo_area">Tipo de Área:</label>
	        <select id="tipo_area" name="tipo_area" required>
	            <%
	                if (perfilesArea != null) {
	                    for (Perfil_Area perfilA : perfilesArea) {
	            %>
	                        <option value="<%= perfilA.getId_perfil_area() %>"><%= perfilA.getDescripcion_perfil_area() %></option>
	            <%
	                    }
	                }
	            %>
	        </select>
      
            <label for="descripcion">Descripción:</label>
            <textarea id="descripcion" name="descripcion" required></textarea>
      
            <label for="ciudad">Ciudad:</label>
            <input type="text" id="ciudad" name="ciudad" required>
      
            <label for="direccion">Dirección:</label>
            <input type="text" id="direccion" name="direccion" required>
      
            <button type="submit" class="btn">Enviar</button>
            <button type="reset" class="btn">Restablecer</button>
          </form>
        </section>

        <a href="logout.jsp" class="btn">Cerrar Sesión</a>
    </div>

    <footer class="footer" id="conectate">
        <div class="grupo-1">
          <div class="box">
            <figure>
              <a href="#header"><img src="css/Logo.jpeg" alt="Logo"></a>
            </figure>
          </div>

          <div class="box">
            <h2>SOBRE EL DESARROLLO</h2>
            <p>Esta web fue desarrollada por estudiantes universitarios apasionados al arte. Apoyanos con un follow :)</p>
            <div class="red-social">
                <a href="https://www.linkedin.com/in/kevin-vallejo-hern%C3%A1ndez-a90771134?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app "><i class="ri-linkedin-box-fill logo_footer"></i></a>
                <a href="https://github.com/klvallejo1"><i class="ri-github-fill logo_footer"></i></a>
                <a href="https://www.instagram.com/kevinleandro09/"><i class="ri-instagram-fill logo_footer "></i></a>
            </div>
          </div>
          
          <div class="box">
            <h2>SOBRE NOSOTROS</h2>
            <p>Redes sociales de VerdeUrbano</p>
            <div class="red-social">
                <a href="#" ><i class="ri-instagram-fill logo_footer "></i></a>
                <a href="#"><i class="ri-facebook-fill logo_footer "></i></a>
                <a href="#"><i class="ri-youtube-fill logo_footer "></i></a>
            </div>
          </div>
        </div>
  
        <div class="grupo-2">
          <small>&copy; 2024 <b>Kevin Vallejo - UPS</b></small>
        </div>
    </footer>
  
    <script src="script.js"></script>
</body>
</html>