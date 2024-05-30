<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tu Cuenta</title>
    <link rel="stylesheet" href="css/normalize.css">
    <link rel="stylesheet" href="css/style_login.css">
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
            <h2>Login</h2>
            <h1>TU CUENTA</h1>
            <p>Ingresa para participar!</p>
            <a href="#" class="btn">EMPEZAR</a>
        </div>
    </section>
    
    <section class="formulario-section">
    <div class="contenedor">
        <div class="formulario">
            <form action="login_Ingreso.jsp" method="post">
                <h2>Iniciar Sesión</h2>

                <div class="input-contenedor">
                    <input id="email" name="correo" type="email" required>
                    <label for="email">Correo:</label>
                </div>

                <div class="input-contenedor">
                    <input type="password" id="password" name="password" required>
                    <label for="password">Contraseña:</label>
                </div>

                <div class="olvidar">
                    <label>
                        <input type="checkbox">Recordar
                        <a href="#">Olvide mi contraseña :(</a>
                    </label>
                </div>

                <input class="button" type="submit" value="Ingresar">
                <input class="button_reset" type="reset" value="Eliminar">
            </form>

            <div>
                <div class="registrar">
                    <p>Quiero <a href="register.jsp">Registrarme</a></p>
                </div>
	        </div>
	      </div>
	  </div>
	</section>
    
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