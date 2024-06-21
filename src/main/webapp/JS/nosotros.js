// Función para mostrar un mensaje cuando se hace clic en un panel
function mostrarMensaje(panelTitle) {
  alert(`Hiciste clic en el panel "${panelTitle}"`);
}

// Agregar un evento clic a cada panel
document.addEventListener('DOMContentLoaded', function () {
  const panels = document.querySelectorAll('.panel');

  panels.forEach(panel => {
    panel.addEventListener('click', function () {
      const panelTitle = panel.querySelector('.panel-title').textContent;
      mostrarMensaje(panelTitle);
    });
  });
});

