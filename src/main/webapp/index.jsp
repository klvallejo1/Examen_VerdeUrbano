<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="controller.*"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sobre Áreas Verdes</title>
    <link rel="stylesheet" href="css/normalize.css">
    <link rel="stylesheet" href="css/style_index.css">
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
            <h2>DESCUBRE SOBRE</h2>
            <h1>ÁREAS VERDES</h1>
            <p>¿Te anímas a empezar esta aventura verde?</p>
            <a href="#" class="btn">EMPEZAR</a>
        </div>
    </section>
    

    <section class="feature">
        <div class="feature-content">
            <div class="row">
                <div class="row-img">
                    <img src="css/Zonas1.jpg" alt="DEFINICIONES">
                </div>
                <h2>LO QUE DESEAS SABER</h2>
            </div>

            <div class="row">
                <div class="row-img">
                    <img src="css/Zonas3.jpg" alt="Grafica EStadística">
                </div>
                <h2>POR NÚMEROS</h2>
            </div>

            <div class="row">
                <div class="row-img">
                    <img src="css/Zonas2.jpg" alt="Buenas Prácticas">
                </div>
                <h2>GUÍAS Y BUENAS PRÁCTICAS</h2>
            </div>
        </div>
    </section>
    
    <h1 class="titulos_seccion container" id="Deseas_saber">LO QUE DESEAS SABER</h1>
    <section class="holiday">
        <div class="holiday-img">
            <img src="css/Holyda.jpg" alt="">
        </div>

        <div class="holiday-text">
            <h3>Lorem</h3>
            <h2>TEN UN BUEN VIAJE</h2>
            <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Quisquam cupiditate alias tempore ipsum architecto nulla excepturi quod ea dolores voluptate! Voluptatum, consectetur. Fugiat atque temporibus, velit cumque in consectetur voluptatem!</p>
            <a href="#" class="btn">Leer más</a>

        </div>
    </section>

    <h1 class="titulos_seccion container">POR NÚMEROS</h1>
    <section class="tour">
        <div class="center-text">
            <h2>Popular Tours</h2>
        </div>

        <div class="tour-content">
            <div class="box">
                <img src="" alt="">
            </div>

        </div>
    </section>


    <h1 class="titulos_seccion container">GUÍAS Y BUENAS PRÁCTICAS</h1>

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