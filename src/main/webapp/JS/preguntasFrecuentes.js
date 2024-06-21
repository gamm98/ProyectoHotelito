const tabs = document.querySelectorAll('.tab'); // Obtener todas las pestañas

tabs.forEach(tab => {
    const label = tab.querySelector('label');//obtener la etiqueta
    const content = tab.querySelector('.content');// Obtener el contenido

    label.addEventListener('click', () => {
        // Alternar la visibilidad del contenido
        if (content.style.display === 'block') {
            content.style.display = 'none'; // ocultar
        } else {
            content.style.display = 'block';// Si está ocultov mostrarlo
        }
    });
});