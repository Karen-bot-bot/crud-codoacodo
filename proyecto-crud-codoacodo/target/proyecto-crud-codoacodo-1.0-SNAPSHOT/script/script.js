/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

/* Links activos */
/* global exampleModal, nombreInput, eliminarForm */

document.addEventListener("DOMContentLoaded", function () {
  var navBar = document.querySelector(".contenedor-head .navbar-nav");
  var links = navBar.getElementsByClassName("nav-link");

  for (var i = 0; i < links.length; i++) {
    links[i].addEventListener("click", function () {
      var current = navBar.getElementsByClassName("active");
      if (current.length > 0) {
        current[0].classList.remove("active");
      }
      this.classList.add("active");
    });

    if (links[i].href === window.location.href) {
      links[i].classList.add("active");
    }
  }
});

/*Desactivar flechas de incremento y decremento en el placeholder Total*/
var numberInput = document.getElementById("total");
numberInput.addEventListener("keydown", function (event) {
  if (event.key === "ArrowUp" || event.key === "ArrowDown") {
    event.preventDefault();
  }
});

/* ===============
  FORMULARIO  */

let valorEntrada = 200;
let cantidadEntradas;
let categoria;
let compraTotal = document.getElementById("total");
let placeholderOriginal = compraTotal.placeholder;

document.getElementById("resumen").addEventListener("click", function (event) {
  event.preventDefault();

  cantidadEntradas = document.getElementById("cantidad").value;
  categoria = document.getElementById("categoria").value;
  let totalFinal = 0;

  if (categoria === "estudiante") {
    totalFinal = cantidadEntradas * valorEntrada * 0.2;
  } else if (categoria === "trainee") {
    totalFinal = cantidadEntradas * valorEntrada * 0.5;
  } else if (categoria === "junior") {
    totalFinal = cantidadEntradas * valorEntrada * 0.85;
  }

  compraTotal.placeholder = "Total a pagar: $" + totalFinal.toFixed(2);
  console.log(compraTotal.placeholder);
});

// Al presionar en el botón "Borrar" se restablece el formulario
document.getElementById("reset").addEventListener("click", function () {
  document.getElementById("nombre").value = "";
  document.getElementById("apellido").value = "";
  document.getElementById("correo").value = "";
  document.getElementById("cantidad").value = "";
  document.getElementById("categoria").value = "estudiante";

  compraTotal.placeholder = placeholderOriginal;
});

/*CANCELAR EDICIÓN FORMULARIO */
// Obtener el botón "Cancelar" por su ID
    const btnCancelar = document.getElementById("cancelar");

    // Agregar un evento de clic al botón "Cancelar"
    btnCancelar.addEventListener("click", function() {
        // Realizar la acción deseada al hacer clic en "Cancelar"
        // Por ejemplo, redireccionar a otra página:
        window.location.href = "oradores.jsp";
    });
    
    
/*MODAL ELIMINAR*/
function setOradorNombre(nombre) {
  document.getElementById("nombreOrador").textContent = nombre;
  var eliminarLink = document.getElementById("eliminarLink");
  eliminarLink.href = "EliminarOrador?nombre=" + encodeURIComponent(nombre);
}

/*MODAL EDITAR*/
$(document).ready(function() {
    $('.editar-orador').click(function() {
        var nombre = $(this).data('nombre');
        var apellido = $(this).data('apellido');
        var temaCharla = $(this).data('tema');
        var fechaAlta = $(this).data('fecha');
        
        // Mostrar los datos en el formulario de edición
        $('#editarModal #nombre').val(nombre);
        $('#editarModal #apellido').val(apellido);
        $('#editarModal #temaCharla').val(temaCharla);
        $('#editarModal #fechaAlta').val(fechaAlta);
        
        // Abrir el modal de edición
        $('#editarModal').modal('show');
    });
});
