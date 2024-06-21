
document.addEventListener("DOMContentLoaded", function () {
    // Seleccionar todos los enlaces "Read More"
    const readMoreLinks = document.querySelectorAll(".read-more-link");

    // Agregar un controlador de eventos a cada enlace
    readMoreLinks.forEach(function (link) {
        link.addEventListener("click", function (event) {
            // Evitar la acción predeterminada del enlace para evitar que cargue la página
            event.preventDefault();

            // Obtener la URL del enlace
            const articleURL = link.getAttribute("href");

            // Redirigir a la página del artículo completo
            window.location.href = articleURL;
        });
    });
});

