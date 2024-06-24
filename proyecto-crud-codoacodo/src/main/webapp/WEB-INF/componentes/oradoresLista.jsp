<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:forEach items="${listaOradores}" var="oradores">
    <tr>
        <td>${oradores.nombre}</td>
        <td>${oradores.apellido}</td>
        <td>${oradores.temaCharla}</td>
        <td>${oradores.fechaAlta}</td> 
        <td>
            <a href="ActualizarOrador?nombre=${oradores.nombre}&apellido=${oradores.apellido}&temaCharla=${oradores.temaCharla}&fechaAlta=${oradores.fechaAlta}" class="text-success"><i class='bx bxs-pencil mb-3 px-2'></i></a>
            <a href="EliminarOrador?nombre=${oradores.nombre}" data-bs-toggle="modal" data-bs-target="#exampleModal" onclick="setOradorNombre('${oradores.nombre}')" class="text-danger"><i class='bx bxs-trash px-2'></i></a>
        </td>
    </tr>   
    
</c:forEach>

