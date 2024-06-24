/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.crudcodoacodo.proyecto.crud.codoacodo.controlador;

import com.crudcodoacodo.proyecto.crud.codoacodo.modelo.Modelo;
import com.crudcodoacodo.proyecto.crud.codoacodo.modelo.Orador;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Karen
 */
@WebServlet(name = "ActualizarOrador", urlPatterns = {"/ActualizarOrador"})
public class ActualizarOrador extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Obtener los datos del orador a editar
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String temaCharla = request.getParameter("temaCharla");
        LocalDate fechaAlta = LocalDate.now();
        
        // Crear el objeto Orador
        Orador orador = new Orador(nombre, apellido, temaCharla, fechaAlta);

        // Guardar el objeto Orador en el alcance de la solicitud
        request.setAttribute("orador", orador);

        // Redireccionar al formulario de edición
        request.getRequestDispatcher("WEB-INF/componentes/formEditarOrador.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Obtener los datos del formulario de edición
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String temaCharla = request.getParameter("temaCharla");
        LocalDate fechaAlta = LocalDate.now(); // Obtener la fecha actual

        // Crear el objeto Orador
        Orador orador = new Orador(nombre, apellido, temaCharla, fechaAlta);

        // Editar el orador en la base de datos
        Modelo modelo = new Modelo();
        try {
            modelo.editarOrador(orador);
        } catch (SQLException ex) {
            Logger.getLogger(ActualizarOrador.class.getName()).log(Level.SEVERE, null, ex);
        }

        // Redireccionar a la página que muestra la lista de oradores actualizada
        response.sendRedirect("oradores");
        
    }
}

