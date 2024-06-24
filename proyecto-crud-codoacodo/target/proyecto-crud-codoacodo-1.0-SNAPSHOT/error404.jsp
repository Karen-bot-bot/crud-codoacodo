<%-- 
    Document   : error404
    Created on : 10 jul 2023, 11:48:05
    Author     : Karen
--%>
<jsp:include page="WEB-INF/comunes/inicioHTML.jsp">
    <jsp:param name="elTitulo" value="No encontrado" />
</jsp:include>

<body class="error404">

   <section class="container bg-">
    <div class="row justify-content-center align-items-center" style="height: 100vh;">
        <div class="col-md-6 text-center">
            <img class="card-img-top mb-3 imagen-error" src="img/error_raton-removebg-preview.png" alt="Imagen de error" style="height: 75vh;"/>
            <h3 class="mb-4">Página no encontrada :(</h3>
            <a href="index.jsp" class="btn btn-primary bg-dark mb-3 boton-inicio">Ir al inicio</a>
        </div>
    </div>
   </section>
        

     <script src="script/script.js"></script>
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous">
    </script>

</body>
</html>
