<jsp:include page="WEB-INF/comunes/inicioHTML.jsp">
    <jsp:param name="elTitulo" value="Conf Bs As" />
</jsp:include>

<body>
    <header class="header contenedor-head" id="Conferencia">
        <jsp:include page= "WEB-INF/comunes/navbar.jsp"/>
                     
        <div class="container custom-container d-flex">
            <h1 class="title"> Conf. Bs As</h1>
            <p class="parrafo">Bs As llega por primera vez a Argentina. Un evento para compartir con nuestra comunidad
                el conocimiento y experiencia de de los expertos que están creando el futuro de Internet. Ven a conocer
                a miembros del evento a otros estudiantes de Codo a Codo y a los oradores de primer nivel que tenemos
                para ti. Te esperamos!</p>
            <div>
                <button type="button" class="btn btn-outline-light">Quiero ser orador</button>
                <button type="button" class="btn btn-success"><a class="text-decoration-none text-white"
                        href="tickets.jsp">Comprar tickets</a></button>
            </div>
        </div>
    </header>

    <section class="oradores" id="Oradores">
        <div>
            <p class="text-center mt-1 mb-0 small">CONOCÉ A LOS</p>
            <h2 class="text-center">ORADORES</h2>
        </div>
        <div class="fila row row-cols-1 row-cols-md-3 mt-0 mb-4 justify-content-center">
            <div class="columna col w-25">
                <div class="card h-100">
                    <div><img src="img/steve.jpg" class="card-img-top" alt="steve-jobs"></div>
                    <div class="card-body">
                        <span class="badge text-bg-warning">JavaScript</span>
                        <span class="badge text-bg-primary">React</span>
                        <h5 class="card-title">Steve Jobs</h5>
                        <p class="card-text">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Et voluptatibus
                            perferendis deleniti, totam fuga sequi iste! Facilis explicabo repellat ut similique
                            incidunt? Ullam nobis beatae, corporis facilis veniam magni ratione!
                        </p>
                    </div>
                </div>
            </div>
            <div class="columna col w-25">
                <div class="card h-100">
                    <div><img src="img/bill.jpg" class="card-img-top" alt="bill-gates"></div>
                    <div class="card-body">
                        <span class="badge text-bg-warning">JavaScript</span>
                        <span class="badge text-bg-primary">React</span>
                        <h5 class="card-title">Bill Gates</h5>
                        <p class="card-text">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Et voluptatibus
                            perferendis deleniti, totam fuga sequi iste! Facilis explicabo repellat ut similique
                            incidunt? Ullam nobis beatae, corporis facilis veniam magni ratione!
                        </p>
                    </div>
                </div>
            </div>
            <div class="columna col w-25">
                <div class="card h-100">
                    <div><img src="img/ada.jpeg" class="card-img-top" alt="ada-lovelace"></div>
                    <div class="card-body">
                        <span class="badge text-bg-secondary">Negocios</span>
                        <span class="badge text-bg-danger">Startups</span>
                        <h5 class="card-title">Ada Lovelace</h5>
                        <p class="card-text">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Et voluptatibus
                            perferendis deleniti, totam fuga sequi iste! Facilis explicabo repellat ut similique
                            incidunt? Ullam nobis beatae, corporis facilis veniam magni ratione!</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="honolulu" id="Honolulu">
        <div class="container-1">
            <img class="imagen-honolulu" src="img/honolulu.jpg" alt="playa">
            <div class="container-2">
                <h2 class="title-honolulu">Bs As - Octubre</h2>
                <p class="parrafo_2">Buenos Aires es la provincia y localidad más grande de Argentina. En los Estados
                    Unidos, Honolulu es la más sureña de entre las principales ciudades estadounidenses. Aunque el
                    nombre de Honolulu se refiere al área urbana en la costa sureste de la isla Oahu, la ciudad y el
                    condado de Honolulu han formado una ciudad-condado consolidada que cubre toda la ciudad
                    (aproximadamente 600km2 de superficie).
                </p>
                <button type="button" class="boton btn btn-outline-light">Conocé más</button>
            </div>
        </div>
    </section>

    <section class="formulario" id="formulario">
        <div>
            <p class="text-center mt-1 mb-0 small">CONVIÉRTETE EN UN</p>
            <h2 class="text-center">ORADOR</h2>
            <p class="text-center mx-3 mt-2">Anótate como orador para dar una charla ignite. Cuéntanos de qué quieres
                hablar.</p>
        </div>
        <jsp:include page="WEB-INF/componentes/formularioOrador.jsp"></jsp:include>
    </section>

        <jsp:include page="WEB-INF/comunes/footer.jsp"/>

        <script src="script/script.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous">
        </script>
</body>

</html>
