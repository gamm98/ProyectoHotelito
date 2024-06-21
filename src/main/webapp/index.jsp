<%-- 
    Document   : index
    Created on : 22 abr 2024, 23:01:43
    Author     : MOTITA2204
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <title>Hotel Paradise</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" href="logoHotel.ico">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700">
        <link rel="icon" type="image/png" href="images/icons/favicon.png" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css" integrity="sha512-vKMx8UnXk60zUwyUnUPM3HbQo8QfmNx7+ltw8Pm5zLusl1XIfwcxo8DbWCqMGKaWeNxWA8yrx5v3SaVpMvR3CA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link href="css/home.css" rel="stylesheet" type="text/css"/>
        <link href="css/blog.css" rel="stylesheet" type="text/css"/>   
        <style>
            .submit-btn {
                background-color: #000;
                color: #fff;
                border: 2px solid #000;
                border-radius: 4px;
                padding: 10px 20px;
                font-size: 16px;
                cursor: pointer;
                transition: background-color 0.3s, color 0.3s;
            }

            .submit-btn:hover {
                background-color: #fff;
                color: #000;
            }
        </style>
    </head>



    <body class="animsition">
        <nav>
            <div id="my-nav" class="menu-desktop">

                <!-- Logo desktop -->
                <!-- Menu desktop -->
                <ul class="main-menu">
                    <li class="nav-item active">
                        <a class="nav-link" href="index.jsp">Home <span class="sr-only"></span></a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="">Shop <span class="sr-only"></span></a>
                    </li>

                    <li class="nav-item active">
                        <a class="nav-link" href="#hab">Habitaciones<span class="sr-only"></span></a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="#blog">Blog <span class="sr-only"></span></a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="nosotros.jsp">About <span class="sr-only"></span></a>
                    </li>

                    <li class="nav-item active">
                        <a class="nav-link" href="contact.jsp">contact <span class="sr-only"></span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="Controlador?accion=home">Reservas</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="Controlador?accion=Carrito"><i class="fas fa-cart-plus">(<label style="color: brown">${contador}</label>)</i> Carrito</a>
                    </li>
                    <!-- Icon header -->
                    <a href="#" class="logo1">
                        <img src="IMAGES/PRINCIPAL/icon-buscar.png" alt="IMG-LOGO1" />

                    </a>

                    <a href="" class="logo3" data-notify="0">
                        <img src="IMAGES/PRINCIPAL/icon-inicio.png" alt="IMG-LOGO3" />
                    </a>       
                    <a href="#" class="logo4" data-notify="0">
                        <img src="IMAGES/PRINCIPAL/menu-icon.png" alt="IMG-LOGO3" />
                    </a>
                </ul>

                <form action="reporte.jsp">
                    <input type="submit" value="Generar Reporte" class="submit-btn">
                </form>

            </div>
        </nav>

        <br><br><br><br><br><br><br><br><br><br><br><br>
        <div class="slider-container">
            <div class="slider position">
                <div class="slider-overlay"></div>
                <div class="slider-content">
                    <h1>Bienvenido al Hotel Paradise</h1>
                    <p>Su escapada perfecta</p>
                    <a href="#hab" class="btn">Explore</a>
                </div>
            </div>
        </div>





        <br><br><br><br>
        <section>
            <!-- INTRO-CATALOGO -->
            <div class="intro" id="hab">
                <h1>Nuestras Habitaciones</h1>
                <br>
                <p>Explora nuestra selección de habitaciones y suites para una experiencia de lujo en el Hotel Paradise.</p>
            </div>

            <!-- CATALOGO -->
            <div class="catalog-container">
                <div class="catalog-card">
                    <div class="video-container">
                        <iframe width="560" height="315" src="https://www.youtube.com/embed/XsQ7PInKiCE?si=e2SkNCcETBIaoJH9" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                    </div>
                    <div class="card-content">
                        <h2>Estandar</h2>
                        <p>Una habitación cómoda para una estancia relajante.</p>
                    </div>
                </div>
                <div class="catalog-card">
                    <div class="video-container">
                        <iframe src="https://www.facebook.com/plugins/video.php?height=316&href=https%3A%2F%2Fwww.facebook.com%2FHotelParadise2016%2Fvideos%2F625523025437310%2F&show_text=false&width=560&t=0" width="560" height="316" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowfullscreen="true" allow="autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share" allowFullScreen="true"></iframe>
                    </div>
                    <div class="card-content">
                        <h2>Suite Junior</h2>
                        <p>Una habitación espaciosa con disponibilidad de dos camas.</p>
                    </div>
                </div>
                <div class="catalog-card">
                    <div class="video-container">
                        <iframe src="https://www.facebook.com/plugins/video.php?height=316&href=https%3A%2F%2Fwww.facebook.com%2FHotelParadise2016%2Fvideos%2F1702847646750228%2F&show_text=false&width=560&t=0" width="560" height="316" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowfullscreen="true" allow="autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share" allowFullScreen="true"></iframe>
                    </div>
                    <div class="card-content">
                        <h2>Suite Deluxe</h2>
                        <p>Una suite de lujo que incluye bañeras modernas y una pequeña sala con todas las comodidades que necesita</p>
                    </div>
                </div>
            </div>
        </section>



        <!-- Blog Section -->
        <!-- INTRO-blog -->
        <div class="intro2" id="blog">
            <h1>BLOG</h1>
            <p>Bienvenido a la sección de noticias de Paradise Hotel. Aquí encontrarás las últimas
                novedades sobre nuestro hotel.</p>
        </div>

        <section class="blog-section">

            <article class="blog-post">

                <img src="IMAGES/PRINCIPAL/aniversary.jpeg" alt="Blog Post 1">

                <h2>Paradise Hotel celebra su 15 aniversario</h2>
                <p>
                    ¡Estamos emocionados de compartir que Hotel Paradise está celebrando 15 años
                    de hospitalidad excepcional! Únete a nosotros para conmemorar este hito especial
                    con sorpresas, descuentos exclusivos y eventos emocionantes durante todo el año.
                </p>

            </article>

            <article class="blog-post">
                <img src="IMAGES/PRINCIPAL/summer.jpeg" alt="Blog Post 2">
                <h2>Oferta de Temporada de Verano</h2>
                <p>
                    ¿Listo para un verano inolvidable? Descubre nuestras ofertas especiales de temporada
                    de verano en Hotel Paradise. Disfruta de tarifas con descuento, actividades bajo el sol
                    y acceso exclusivo a nuestra carta de menu. ¡Reserva ahora y sumérgete en la diversión
                    del verano!
                </p>

            </article>
            <article class="blog-post">

                <img src="IMAGES/PRINCIPAL/escapada.jpg" alt="Blog Post 3">
                <h2>Escapada romantica</h2>
                <p>
                    ¿Estás planeando una escapada romántica para celebrar tu aniversario? En Hotel Paradise, hemos
                    preparado una selección especial de las tres reservas más destacadas para ayudarte a crear recuerdos
                    inolvidables en tu ocasión especial. Desde cenas íntimas hasta relajantes días de spa, aquí están nuestras
                    principales recomendaciones:
                </p>

            </article>
        </section>
        <br><br>
        <footer>
            <div class="footer-container">
                <div class="contact-info">
                    <h3>CONTACTANOS:</h3>
                    <p>Correo: <a href="mailto:info@hotelparadise.com">info@hotelparadise.com</a></p>
                    <p>Teléfono: <a href="tel:+5116104000">+51 1 610 4000</a></p>
                    <p>Dirección: Av. Canta Callao, San Martín de Porres 15112</p>
                </div>
                <div class="social-media">
                    <h3>REDES SOCIALES:</h3>
                    <a href="https://www.facebook.com/HotelParadise2016/?locale=es_LA">
                        <i class="fab fa-facebook"></i> Facebook
                    </a>
                    <a href="https://www.instagram.com/hotelparadise.peru/?hl=es">
                        <i class="fab fa-instagram"></i> Instagram
                    </a>
                    <h3>UBICANOS:</h3>
                    <a href="https://maps.app.goo.gl/mM8aNPLB1n8vP8R8A">
                        <i class="fas fa-map-marker-alt"></i> Google Maps
                    </a>
                </div>
                <div class="buttons">
                    <h3>OTRAS OPCIONES:</h3>
                    <a href="<%= request.getContextPath()%>/ControladorSugerencias?accion=principal">
                        <button class="suggestions">Formulario de Sugerencias</button>
                    </a>
                    <a href="<%= request.getContextPath()%>/ControladorReclamaciones?accion=principal">
                        <button class="complaints">Libro de Reclamaciones</button>
                    </a>
                    <a href="preguntasFrecuentes.jsp">
                        <button class="faq">Preguntas Frecuentes</button>
                    </a>
                </div>

            </div>
        </footer>
        <script src="../JS/blog.js" type="text/javascript"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </body>

</html>