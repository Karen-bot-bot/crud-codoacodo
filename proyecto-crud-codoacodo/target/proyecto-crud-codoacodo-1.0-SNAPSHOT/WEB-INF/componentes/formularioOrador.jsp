<form class="form" action="AgregarOrador" method="post">
        <div class="filas row justify-content-center">
            <div class="input input-1 col pe-1 ps-0">
                <input type="text" class="form-control " name="nombre" value="${oradores.nombre}" id="nombre" placeholder="Nombre">
            </div>
            <div class="input input-1 col ps-1 pe-0">
                <input type="text" class="form-control" name="apellido" value="${oradores.apellido}" id="apellido" placeholder="Apellido">
            </div>
                <textarea class="input col form-message mt-4" name="temaCharla" value="${oradores.temaCharla}" placeholder="Sobre qué quieres hablar?"></textarea>
               <p class="text-start mt-2 small">Recuerda incluir un título para tu charla.</p>
            <div class="col px-0">
                <button class="btn btn-primary w-100" type="submit" name="submit" value="Enviar">Enviar</button>
            </div>
        </div>
</form>

