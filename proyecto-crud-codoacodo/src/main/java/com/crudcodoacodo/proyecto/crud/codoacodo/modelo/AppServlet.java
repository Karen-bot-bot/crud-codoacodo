/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.crudcodoacodo.proyecto.crud.codoacodo.modelo;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Karen
 */
@WebServlet(name = "app", urlPatterns = {"/oradores"})
public class AppServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            Modelo m = new Modelo();
            request.setAttribute("listaOradores", m.getOradores());
            request.getRequestDispatcher("WEB-INF/componentes/oradores.jsp").forward(request, response);
        } catch (SQLException ex) {
            response.sendError(500, "Falla al leer la base de datos");
        }
    }
}


