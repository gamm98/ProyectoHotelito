<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <title>Libro de Reclamaciones</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="<%= request.getContextPath()%>/css/libroReclamaciones.css" rel="stylesheet" type="text/css"/>
        <link href="<%= request.getContextPath()%>/css/home.css" rel="stylesheet" type="text/css"/>
        <link rel="icon" href="logoHotel.ico">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700">
        <link rel="icon" type="image/png" href="images/icons/favicon.png" />

        <script>
            $(function () {
                $("#fecha").datepicker({
                    dateFormat: 'yy-mm-dd', // Formato de fecha
                    changeMonth: true, // Permitir cambio de mes
                    changeYear: true, // Permitir cambio de año
                    yearRange: "-100:+0", // Rango de años permitidos
                    maxDate: "0" // Fecha máxima seleccionable (hoy)
                });
            });
        </script>
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
                        <a class="nav-link" href="vista/contact.jsp">contact <span class="sr-only"></span></a>
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


        <!-- Formulario-->

        <form action ="<%= request.getContextPath()%>/ControladorReclamaciones" method="post" class="formulario" id="formRec">
            <h1>
                <center>
                    <legend>LIBRO DE RECLAMACIONES</legend>
                </center>
            </h1>
            <p>Este es nuestro libro de reclamaciones. En caso de que quieras realizar alguna
                queja o reclamación con respecto a nuestro servicio y productos brindados,
                realízalo aquí.</p>

            <div class="onpremiere">
                <div class="suggestions-container">
                    <div class="onpremiere-h1">

                    </div>
                    <div class="mlps-header">
                        <div class="mlps-h-b"></div>

                    </div>
                    <div style="display: flex; place-content: center; margin: 50px 100px;">
                        <div class="suggesion-form">

                            <label for="nombre">Nombre</label>
                            <input class="up" type="text" name="nombre" id="nombre" value="${nombre}" placeholder="Nombre Completo" required />
                            <label for="dni">DNI</label>
                            <input type="text" name="dni" id="dni"
                                   placeholder="DNI" value="${dni}" required />
                            <label for="correo">Correo</label>
                            <input type="text" name="correo" id="correo" value="${correo}" required
                                   placeholder="Correo Electronico"/>
                            <label for="fecha">Fecha</label><br>
                            <input class="up" type="date" id="fecha" value="${fecha}" name="fecha" required><br>
                            <label for="Descripcion">Descripcion</label><br>
                            <textarea  type="text" id="Descripcion" value="${descripcion}" name="Descripcion" required rows="4" cols="42"></textarea><br>

                            <input class="upbtn btn-color"  type="submit" value="Enviar"  name="accion">
                            <script src="https://kit.fontawesome.com/15feb8d600.js" crossorigin="anonymous"></script>
                            <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

                        </div>
                    </div>
                </div>
            </div> 
        </form>

        <script>
            $(function () {
                $("#fecha").datepicker({
                    dateFormat: 'yy-mm-dd', // Formato de fecha
                    changeMonth: true, // Permitir cambio de mes
                    changeYear: true, // Permitir cambio de año
                    yearRange: "-100:+0", // Rango de años permitidos
                    maxDate: "0" // Fecha máxima seleccionable (hoy)
                });
            });
        </script>

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
    </body>

</html>