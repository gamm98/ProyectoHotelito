document.addEventListener("DOMContentLoaded", function () {
    const contactForm = document.getElementById("contactForm");
    const enviarBtn = document.getElementById("enviarBtn");
    const mensajeUsuario = document.getElementById("mensajeUsuario");
    contactForm.addEventListener("submit", function (event) {
        event.preventDefault();
        // Validar el formulario
        const nombre = document.getElementById("nombre").value;
        const email = document.getElementById("email").value;
        const mensaje = document.getElementById("mensaje").value;
        if (!nombre || !email || !mensaje) {
            mensajeUsuario.textContent = "Por favor, complete todos los campos.";
            return;
        }

        // Enviar el formulario (esto es solo un ejemplo)
        // Puedes agregar aquí la lógica para enviar los datos al servidor si lo deseas

        // Mostrar un mensaje de confirmación
        mensajeUsuario.textContent = "Mensaje enviado con éxito. Gracias por contactarnos.";
        // Limpiar el formulario después de enviar
        contactForm.reset();
    });
});
