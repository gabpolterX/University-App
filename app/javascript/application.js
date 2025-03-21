// Configurar Importmap en Rails 7
document.addEventListener('turbolinks:load', function() {
  M.AutoInit(); // Inicializa automáticamente todos los componentes de Materialize
  
  // Inicializar Sidenav
  let elems = document.querySelectorAll('.sidenav');
  M.Sidenav.init(elems);

});
