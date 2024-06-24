<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:include page="../comunes/inicioHTML.jsp">
    <jsp:param name="elTitulo" value="Oradores" />
</jsp:include>
<style media="(max-width: 768px)">
  .table {
    width: 98vw;
  }
</style>

<body>
    <header class="contenedor-head">
        <jsp:include page="../comunes/navbar.jsp"></jsp:include>
    </header>
    
    <section class="mt-5 section-o" style="height: 100vh;">
        <h2 class="text-center pt-5">LISTA DE ORADORES</h2>
        <table class="table">
            <thead class="thead">
                <tr>
                    <th>Nombre</th>
                    <th>Apellido</th>
                    <th>Tema de charla</th>
                    <th>Fecha de Alta</th>
                    <th> </th>
                </tr>
            </thead>
            <tbody>
            <jsp:include page="oradoresLista.jsp"></jsp:include>
            </tbody>
        </table>
            <jsp:include page="borrarOrador.jsp"></jsp:include>
    </section>
            

    
    <jsp:include page="../comunes/footer.jsp"></jsp:include>
    
    
    <script src="script/script.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</body>

</html>

