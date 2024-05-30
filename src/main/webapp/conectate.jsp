<%@page import="modelo.Usuario_DAO"%>
<%@page import="modelo.Foro"%>
<%@page import="modelo.Usuario"%>
<%@page import="modelo.Foro_DAO"%>
<%@page import="modelo.Usuario"%>
<%@page import="modelo.Area_Verde"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="controller.*"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Conéctate</title>
    <link rel="stylesheet" href="css/normalize.css">
    <link rel="stylesheet" href="css/style_contectate.css">
    <link rel="stylesheet" href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/remixicon@4.2.0/fonts/remixicon.css">
</head>
<body>
    <header id="header">
        <a href="index.html" class="logo">Verde<span>Urbano</span></a>
        <ul class="navbar">
            <li><a href="index.jsp">Sobre Áreas Verdes</a></li>
            <li><a href="conectate.jsp">Conéctate</a></li>
            <li><a href="login.jsp">Tu Cuenta</a></li>
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
            <h2>Foros de participacion</h2>
            <h1>CONÉCTATE</h1>
            <p>Lee, participa y comparte</p>
            <a href="#" class="btn">EMPEZAR</a>
        </div>
    </section>
    
     <div class="container">
      <button class="btn participar">Participar</button>
      
     <section class="primera-seccion">
        <h2 class="titulos_seccion">Foro</h2>
        <%
            Foro_DAO foroDAO = new Foro_DAO();
            List<Foro> listaForos = foroDAO.selectAllForos();
            for (Foro foro : listaForos) {
        %>
        
        <div class="caja">
            <img src="css/Jardin1.jpg" alt="Foto de participación">
            <div class="caja-contenido">
                <h3><%= foro.getTitulo_foro() %></h3>
                <p><%= foro.getContenido_foro() %></p>
                <p>Fecha de publicación: <%= foro.getFecha_foro() %></p>
                <p>Calificación:<b><%= foro.getCalificacion_foro() %></b>/5</p>
            </div>
        </div>
        <%
            }
        %>
    </section>
      
       <section class="body_section">
	    	
	    <h1>Lista de Áreas Verdes</h1>
	    <table border="1">
	        <tr>
	            <th>ID</th>
	            <th>Tipo de Área</th>
	            <th>Usuario que publicó</th>
	            <th>Título</th>
	            <th>Descripción</th>
	            <th>Ciudad</th>
	            <th>Dirección</th>
	        </tr>
	        <% 
	            ListAreaController controller = new ListAreaController();
	            List<Area_Verde> listAreas = controller.listarAreas();
	            for (Area_Verde area : listAreas) {
	        %>
	            <tr>
	                <td><%= area.getId_area() %></td>
	                <td><%= area.getId_perfil_area() %></td>
	                <td><%= area.getId_user() %></td>
	                <td><%= area.getTitulo_area() %></td>
	                <td><%= area.getDescripcion_area() %></td>
	                <td><%= area.getCiudad_area() %></td>
	                <td><%= area.getDireccion_area() %></td>
	            </tr>
	        <% } %>
	    </table>
    </section>
      
      
    
      <section class="segunda-seccion">
        <h2 class="titulos_seccion">Reportes</h2>
        <form>
          <textarea placeholder="Ingresa tu reporte aquí"></textarea>
          <button type="submit" class="btn">Enviar</button>
        </form>
      </section>
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