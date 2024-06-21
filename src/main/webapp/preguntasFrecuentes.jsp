<%-- 
    Document   : preguntasFrecuentes
    Created on : 22 abr 2024, 23:39:48
    Author     : MOTITA2204
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <title>Preguntas Frecuentes</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="../css/home.css" rel="stylesheet" type="text/css"/>
        <link href="../css/Preguntasfrecuentes.css" rel="stylesheet" type="text/css"/>
        <link rel="icon" href="logoHotel.ico">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700">
        <link rel="icon" type="image/png" href="images/icons/favicon.png" />
        <script src="JS/preguntasFrecuentes.js" type="text/javascript"></script>
        <link href="css/Preguntasfrecuentes.css" rel="stylesheet" type="text/css"/>
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
                        <a class="nav-link" href="vista/nosotros.jsp">About <span class="sr-only"></span></a>
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
        <div class="xc">
            <div class="container">
                <h1>Preguntas Frecuentes</h1>
                <div class="tab">
                    <input type="radio" name="acc" id="acc1">
                    <label for="acc1">
                        <h2>01</h2>
                        <h3>¿Qué métodos de pagos disponibles tienen?</h3>
                    </label>
                    <div class="content">
                        <p> En nuestro hotel, ofrecemos una amplia variedad de métodos de pago para garantizar la comodidad
                            y flexibilidad de nuestros huéspedes. Estamos comprometidos en hacer que su estadía sea lo más
                            conveniente posible en todos los aspectos, incluyendo las opciones de pago.
                            A continuación, se detallan los métodos de pago disponibles:
                        </p>
                        <ul>
                            <li><span>Efectivo:</span>Puede realizar su pago en efectivo en la recepción del hotel.</li>
                            <li><span>Tajetas de credito/debito:</span>BCP, Interbank, Scotiabank y BBVA Continental</li>
                            <li><span>Yape:</span>Si prefiere utilizar la aplicación Yape para realizar su pago, estaremos encantados de recibirlo a través de esta plataforma.</li>
                        </ul>
                    </div>
                </div>
                <div class="tab">
                    <input type="radio" name="acc" id="acc2">
                    <label for="acc2">
                        <h2>02</h2>
                        <h3>¿Tienen plazo de pago?</h3>
                    </label>
                    <div class="content">
                        <p> Sí, en nuestro hotel ofrecemos opciones de plazo de pago para brindar flexibilidad a
                            nuestros huéspedes. Estas opciones de plazo pueden variar según el tipo de reserva y
                            la duración de su estadía. Al momento de hacer una reserva, nuestro equipo de reservas
                            estará encantado de proporcionarle información detallada sobre los plazos de pago disponibles
                            y las políticas específicas relacionadas con ellos. Nuestra prioridad es asegurarnos
                            de que su estadía sea cómoda y libre de preocupaciones, por lo que trabajamos para adaptarnos
                            a sus necesidades individuales en la medida de lo posible.
                        </p>
                    </div>
                </div>
                <div class="tab">
                    <input type="radio" name="acc" id="acc3">
                    <label for="acc3">
                        <h2>03</h2>
                        <h3>¿Ofrecen estacionamiento en el hotel?</h3>
                    </label>
                    <div class="content">
                        <p> Lamentablemente, no contamos con estacionamiento en nuestras instalaciones. Sin embargo,
                            estamos ubicados en una zona donde puede encontrar opciones de estacionamiento público
                            cercano para su vehículo.
                        </p>
                    </div>
                </div>
                <div class="tab">
                    <input type="radio" name="acc" id="acc4">
                    <label for="acc4">
                        <h2>04</h2>
                        <h3>¿Ofrecen habitaciones familiares o para grupos grandes?</h3>
                    </label>
                    <div class="content">
                        <p> Sí, disponemos de habitaciones familiares y habitaciones que pueden acomodar grupos más grandes.
                            Puede consultarnos para obtener más información sobre la capacidad y las tarifas.
                        </p>
                    </div>
                </div>
            </div>
        </div>

        <br><br><br><br>
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
        <script src="../JS/preguntasFrecuentes.js" type="text/javascript"></script>
    </body>

</html>