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
import java.io.PrintWriter;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Karen
 */
@WebServlet(name = "AgregarOrador", urlPatterns = {"/AgregarOrador"})
public class AgregarOrador extends HttpServlet {

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("WEB-INF/componentes/formularioOrador.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String temaCharla = request.getParameter("temaCharla");

        LocalDate fechaAlta = LocalDate.now();

        Orador orador = new Orador(nombre, apellido, temaCharla, fechaAlta);

        Modelo modelo = new Modelo();
        try {
            modelo.agregarOrador(orador);
        } catch (SQLException ex) {
            Logger.getLogger(AgregarOrador.class.getName()).log(Level.SEVERE, null, ex);
        }
        
       request.getRequestDispatcher("WEB-INF/componentes/mensaje.jsp").forward(request, response);

    }
    
}
