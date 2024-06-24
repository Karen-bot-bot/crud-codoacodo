
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        ¿Estás seguro que deseas eliminar a <span id="nombreOrador"></span>?
      </div>
      <div class="modal-footer">
          <a href="${pageContext.request.contextPath}/oradores" id="cancelar" class="btn btn-secondary">Cancelar</a>
          <a href="EliminarOrador?nombre=${oradores.nombre}" data-bs-target="#exampleModal" id="eliminarLink" class="btn btn-danger">Eliminar</a>
      </div>
    </div>
  </div>
</div>


