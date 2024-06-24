<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.time.LocalDate" %>

<jsp:include page="../comunes/inicioHTML.jsp">
    <jsp:param name="elTitulo" value="Editar" />
</jsp:include>

<body>
    <jsp:include page="../comunes/navbar.jsp"/>
    
    
    <section class="mt-5 pt-5 form-edit-oradores" style="height: 76vh;">
    <h2 class="text-center">EDITAR ORADOR</h2>
 
    <form class="form mb-4 " action="ActualizarOrador" method="post">
    <div class="row">
        <div class="col-md-6 px-0 pe-md-3">
            <div class="mb-3 text-start">
                <label for="nombre" class="form-label">Nombre:</label>
                <input type="text" class="form-control text-secondary" name="nombre" value="${param.nombre}" id="nombre">
            </div>
        </div>
        <div class="col-md-6 px-0 ps-md-3">
            <div class="mb-3 text-start">
                <label for="apellido" class="form-label">Apellido:</label>
                <input type="text" class="form-control text-secondary" name="apellido" value="${param.apellido}" id="apellido">
            </div>
        </div>
        <div class="col-md-12 px-0">
            <div class="mb-3 text-start">
                <label for="temaCharla" class="form-label">Tema de la Charla:</label>
                <input type="text" class="form-control text-secondary" name="temaCharla" value="${param.temaCharla}" id="temaCharla">
            </div>
        </div>
        <input type="hidden" name="fechaAlta" value="<%= java.time.LocalDate.now() %>">
        <div class="col ps-0">
            <a href="${pageContext.request.contextPath}/oradores" id="cancelar" class="btn btn-secondary w-100">Cancelar</a>
        </div>
        <div class="col pe-0">
            <button class="btn btn-primary w-100" type="submit" name="submit" value="Actualizar">Confirmar</button>
        </div>    
    </div>
    </form>
    </section>
        
        <jsp:include page="../comunes/footer.jsp"/>
        
        <script src="https://unpkg.com/boxicons@2.1.4/dist/boxicons.js"></script>
        <script src="script/script.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous">
        </script>
</body>
</html>
