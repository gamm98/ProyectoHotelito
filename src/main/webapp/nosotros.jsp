<%-- 
    Document   : nosotros
    Created on : 23 abr 2024, 0:31:19
    Author     : MOTITA2204
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Nosotros</title>
        <link href="css/home.css" rel="stylesheet" type="text/css"/>
        <link href="css/nosotros.css" rel="stylesheet" type="text/css"/>
        <link rel="icon" href="logoHotel.ico">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700">
        <link rel="icon" type="image/png" href="images/icons/favicon.png" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">        
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css" integrity="sha512-vKMx8UnXk60zUwyUnUPM3HbQo8QfmNx7+ltw8Pm5zLusl1XIfwcxo8DbWCqMGKaWeNxWA8yrx5v3SaVpMvR3CA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <script src="../JS/nosotros.js" type="text/javascript"></script>
        <link href="../css/nosotros.css" rel="stylesheet" type="text/css"/>
        <link href="../css/home.css" rel="stylesheet" type="text/css"/>
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
            </div>
        </nav>  

        </br>
        </br>
        </br>
        </br>
        </br>

        <div class="segundo" id="nosotros">

            <div class="container">
                <h2 class="section-title">Hotel Paradise</h2>
                <p class="section-description">Hotel Paradise es un hotel boutique de lujo ubicado en el corazón de Lima, Perú. Ofrecemos una experiencia única e inolvidable a nuestros huéspedes, con instalaciones de primera clase, servicio personalizado y un ambiente acogedor.</p>
                <p class="section-description">Nuestra misión es crear un oasis de paz y tranquilidad en medio de la ciudad. Queremos que nuestros huéspedes se sientan como en casa, y que puedan disfrutar de una estadía inolvidable.</p>

                <div class="panels">
                    <div class="panel">
                        <i class="fas fa-map-marker panel-icon"></i>
                        <h3 class="panel-title">Ubicación Exclusiva</h3>
                        <p class="panel-description">Estamos ubicados en el corazón de Lima, a pocos minutos de las principales atracciones turísticas de la ciudad, como el Centro Histórico, el Museo Larco y el Parque de la Reserva.</p>
                    </div>
                    <div class="panel">
                        <i class="fas fa-home panel-icon"></i>
                        <h3 class="panel-title">Instalaciones de Lujo</h3>
                        <p class="panel-description">Ofrecemos habitaciones y suites espaciosas y elegantes, equipadas con todas las comodidades que nuestros huéspedes necesitan, incluyendo aire acondicionado, televisión de pantalla plana, conexión Wi-Fi gratuita y minibar.</p>
                    </div>
                    <div class="panel">
                        <i class="fas fa-handshake panel-icon"></i>
                        <h3 class="panel-title">Servicio Personalizado</h3>
                        <p class="panel-description">Nuestro personal está comprometido a brindar un servicio personalizado y atento a todos nuestros huéspedes, con un servicio de conserjería 24 horas y un restaurante gourmet.</p>
                    </div>
                    <div class="panel">
                        <i class="fas fa-users panel-icon"></i>
                        <h3 class="panel-title">Ambiente Acogedor</h3>
                        <p class="panel-description">Nuestro hotel ofrece un ambiente cálido y acogedor, donde nuestros huéspedes pueden relajarse y disfrutar de su estadía.</p>
                    </div>
                </div>

            </div>

        </div>


        <br><br><br><br>

        <script src="../JS/nosotros.js" type="text/javascript"></script>
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
                    <form action="preguntasFrecuentes.jsp" method="get">
                        <button type="submit" class="suggestions">Preguntas Frecuentes</button>
                    </form>
                </div>
            </div>
        </footer>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
        <script src="../JS/blog.js" type="text/javascript"></script>
    </body>

</html>