/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.crudcodoacodo.proyecto.crud.codoacodo.controlador;

import com.crudcodoacodo.proyecto.crud.codoacodo.modelo.Modelo;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Karen
 */
@WebServlet(name = "EliminarOrador", urlPatterns = {"/EliminarOrador"})
public class EliminarOrador extends HttpServlet {

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Obtener el nombre del orador a eliminar
        String nombre = request.getParameter("nombre");

        // Eliminar el orador de la base de datos
        Modelo modelo = new Modelo();
        try {
            modelo.eliminarOrador(nombre);
        } catch (SQLException ex) {
            Logger.getLogger(EliminarOrador.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        response.sendRedirect("oradores");

    }
}
