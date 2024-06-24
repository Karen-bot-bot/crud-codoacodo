<jsp:include page="WEB-INF/comunes/inicioHTML.jsp">
    <jsp:param name="elTitulo" value="Comprar tickets" />
</jsp:include>

<body>
    <header class="contenedor-head">
        <jsp:include page="WEB-INF/comunes/navbar.jsp"></jsp:include>
    </header>

    <section class="pt-5">
        <div class="cubos container text-black mt-5 text-center px-4">
            <div class="precios row justify-content-center pb-2">
                <div class="cubo col-md-3 py-3 px-0 me-2 border border-primary h-100">
                    <h3 class="my-3">Estudiante</h3>
                    <p>Tienen un descuento</p>
                    <p class="fs-5"><strong>80%</strong></p>
                    <p class="text-secondary">* presentar documentación</p>
                </div>
                <div class="cubo col-md-3 py-3 px-0 border border-info h-100">
                    <h3 class="my-3">Trainee</h3>
                    <p>Tienen un descuento</p>
                    <p class="fs-5"><strong>50%</strong></p>
                    <p class="text-secondary">* presentar documentación</p>
                </div>
                <div class="cubo full-width col-md-3 py-3 ms-2 px-0 border border-warning h-100">
                    <h3 class="my-3">Junior</h3>
                    <p>Tienen un descuento</p>
                    <p class="fs-5"><strong>15%</strong></p>
                    <p class="text-secondary">* presentar documentación</p>
                </div>

            </div>
        </div>
    </section>

    <section>
        <p class="text-center mb-0">VENTA</p>
        <h1 class="text-center">VALOR DE TICKET $200</h1>
        <form class="container">
            <div class="filas row justify-content-center mb-4">
                <div class="input col-5 pe-1 ps-5">
                    <input type="text" class="form-control" id="nombre" placeholder="Nombre">
                </div>
                <div class="input col-5 ps-1 pe-5">
                    <input type="text" class="form-control" id="apellido" placeholder="Apellido">
                </div>
            </div>
            <div class="filas row justify-content-center mb-4">
                <div class="input col-10 px-5">
                    <input type="email" class="form-control" id="correo" placeholder="Correo">
                </div>
            </div>
            <div class="filas row justify-content-center mb-4">
                <div class="input col-5 pe-1 ps-5">
                    <label for="cantidad" class="form-label">Cantidad</label>
                    <input type="number" min="1" max="10" class="form-control" id="cantidad" placeholder="Cantidad">
                </div>
                <div class="input col-5 ps-1 pe-5">
                    <label for="categoria" class="form-label">Categoría</label>
                    <select id="categoria" class="form-select">
                        <option value="estudiante" selected>Estudiante</option>
                        <option value="trainee">Trainee </option>
                        <option value="junior">Junior</option>
                    </select>
                </div>
            </div>
            <div class="filas row justify-content-center mb-4">
                <div class="input col-10 px-5">
                    <input type="number" class="form-control p-3 bg-info-subtle border-primary-subtle" id="total"
                        placeholder="Total a pagar: $" readonly>
                </div>
            </div>
            <div class="filas row d-flex justify-content-center mb-4">
                <div class="input margen col-5 pe-1 ps-5">
                    <button type="reset" id="reset" class="btn btn-primary w-100">Borrar</button>
                </div>
                <div class="input botones col-5 ps-1 pe-5">
                    <button type="submit" id="resumen" class="btn btn-primary w-100">Resumen</button>
                </div>
            </div>
        </form>
    </section>
    
        <jsp:include page="WEB-INF/comunes/footer.jsp"></jsp:include>
    
    <script src="script/script.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous">
        </script>
</body>

</html>