
<!DOCTYPE html>
<html>

    <head>
        <title>Contáctanos</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="../css/home.css" rel="stylesheet" type="text/css"/>
        <link rel="icon" href="logoHotel.ico">
        <link href="../css/contacto.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700">
        <link rel="icon" type="image/png" href="images/icons/favicon.png" />
        <script src="JS/contacto.js" type="text/javascript"></script>
        <link href="css/contacto.css" rel="stylesheet" type="text/css"/>
        <link href="css/home.css" rel="stylesheet" type="text/css"/>
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
                        <img src="  IMAGES/PRINCIPAL/menu-icon.png" alt="IMG-LOGO3" />
                    </a>
                </ul>
            </div>
        </nav>
        <br>

        <div class="container">
            <div class="form-container">
                <h1>Contactanos</h1>
                <form action="https://formsubmit.co/jakeli250103@gmail.com" method="POST" id="contactForm">
                    <label for="nombre">Nombre:</label>
                    <input type="text" id="nombre" name="nombre" required>

                    <label for="email">Correo Electrónico:</label>
                    <input type="email" id="email" name="email" required>

                    <label for="mensaje">Mensaje:</label>
                    <textarea id="mensaje" name="mensaje" rows="4" required></textarea>

                    <input type="submit" value="Enviar" id="enviarBtn">
                    <input type="hidden" name="_captcha" value="false">
                    <input type="hidden" name="_next" value="http://localhost/AvanceG4/php/contactos.php">


                </form>

                <div id="mensajeUsuario"></div>
            </div>
            <div class="map-container">
                <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15611.880416202206!2d-77.0999801!3d-11.9765705!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9105ce12a372d563%3A0x7dc0aebb55cf32e6!2sParadise%20Hotel!5e0!3m2!1sen!2spe!4v1698019707164!5m2!1sen!2spe" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>
        </div>
        <br>

        <script src="../JS/contacto.js" type="text/javascript"></script>

        <!-- Footer -->
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
    </body>

</html>