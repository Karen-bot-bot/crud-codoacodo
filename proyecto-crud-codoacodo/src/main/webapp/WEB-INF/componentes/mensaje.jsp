<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="../comunes/inicioHTML.jsp">
    <jsp:param name="elTitulo" value="Conf Bs As" />
</jsp:include>

<body>
    <jsp:include page="../comunes/navbar.jsp"></jsp:include>
     <section class="mensaje text-center ">
         <h2 class="text-mensaje">¡Su registro ha sido enviado con éxito!</h2>
         <img class="mb-4 happy" src="img/Happy face_Two Color.svg" alt="happy_face">
         <div>
         <a href="index.jsp" class="btn btn-primary bg-dark mb-3">< Volver</a>
         </div>
     </section>
     <jsp:include page="../comunes/footer.jsp"></jsp:include>

    <script src="script/script.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous">
    </script>
</body>



</html>