<%-- 
    Document   : formularioSugerencia
    Created on : 22 abr 2024, 23:36:30
    Author     : MOTITA2204
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <title>Formulario de Sugerencias</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="<%= request.getContextPath()%>/css/home.css" rel="stylesheet" type="text/css"/>
        <link rel="icon" href="logoHotel.ico">
        <link href="<%= request.getContextPath()%>/css/formularioSugerencia.jsp.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700">
        <link rel="icon" type="image/png" href="<%= request.getContextPath()%>/images/icons/favicon.png" />


        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

        <link href="<%= request.getContextPath()%>/css/home.css" rel="stylesheet" type="text/css"/>
        <link href="<%= request.getContextPath()%>/css/blog.css" rel="stylesheet" type="text/css"/>
        <style>
            .sec{
                background-color: #f6f5f5;
                padding: 50px 0;
                margin-top: 100px;
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
        <!--FORMULARIO-->
        <section class="sec">
            <h1><strong>Formulario de Sugerencias - Hotel Paradise</strong></h1>
            <p>Por favor, déjanos tus sugerencias para mejorar nuestros servicios. Tu opinión es importante para nosotros.</p>
            <!-- Button trigger modal -->
            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
                Formulario de Sugerencias
            </button>
            <!-- Modal -->
            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h1 class="modal-title fs-5" id="exampleModalLabel">Formulario de Sugerencias - Hotel Paradise</h1>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <form action="<%= request.getContextPath()%>/ControladorSugerencias" method="post" class="formulario" id="formSugerencias">
                                <fieldset>
                                    <legend>Formulario de Sugerencias</legend>
                                    <label>Codigo</label>
                                    <input type="text" name="codigo" value="${codigo}"readonly />
                                    <label for="nombre">Nombre</label>
                                    <input type="text" name="nombre" id="nombre"
                                           placeholder="Nombre" value="${nombre}"/>
                                    <label for="correo">Correo</label>
                                    <input type="text" name="correo" id="correo" value="${correo}"
                                           placeholder="Correo"/>
                                    <label for="infosuge">Informacion de la Sugerencia</label>
                                    <input type="text" name="infosuge" id="infosuge" value="${infosuge}"
                                           />
                                    <label for="TipoSugerencia">Tipo de Sugerencia</label>
                                    <div class="combo-select">
                                        <select id="TipoSugerencia" name="cboSugerencia">
                                            <c:forEach var="itemTipoSuge" items="${listatiposuge}">
                                                <option value="${itemTipoSuge.idtiposuge}"  ${TipoSugerencia == itemTipoSuge.idtiposuge ? "selected" : ""} >${itemTipoSuge.nombretiposuge}</option>                        
                                            </c:forEach>
                                        </select>    
                                        <i></i>
                                    </div>

                                    <input type="hidden" value="Registrar" name="accion"/>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                                        <button type="submit" class="btn btn-primary" form="formSugerencias">Registrar</button>                    
                                    </div>                
                                </fieldset>

                                <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
                                <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js" integrity="sha512-VEd+nq25CkR676O+pLBnDW09R7VQX9Mdiij052gVCp5yVH3jGtH70Ho/UUv4mJDsEdTvqRCFZg0NKGiojGnUCw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
                            </form>
                        </div>         
                    </div>
                </div>
            </div>
            <c:if test="${requestScope.mensaje != null}">
                <script>
                    toastr.options = {
                        "closeButton": true,
                        "positionClass": "toast-top-right",
                        "preventDuplicates": false,
                        "timeOut": "2000",
                        "showMethod": "fadeIn",
                        "hideMethod": "fadeOut"
                    };
                    <c:if test="${requestScope.result=='ok'}">
                    toastr.success('${requestScope.mensaje}', toastr.options);
                    </c:if>
                    <c:if test="${requestScope.result=='error'}">
                    toastr.error('${requestScope.mensaje}', toastr.options);
                    </c:if>
                    <c:if test="${requestScope.result=='info'}">
                    toastr.info('${requestScope.mensaje}', toastr.options);
                    </c:if>
                </script>
            </c:if>
            <%@include file="listaSugerencia.jsp"%>
        </section>
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
                    <a href="vista/preguntasFrecuentes.jsp">
                        <button class="faq">Preguntas Frecuentes</button>
                    </a>
                </div>
                     
            </div>
        </footer>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </body>

</html>