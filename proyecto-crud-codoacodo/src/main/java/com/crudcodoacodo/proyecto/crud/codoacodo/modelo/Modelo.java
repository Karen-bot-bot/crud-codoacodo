/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.crudcodoacodo.proyecto.crud.codoacodo.modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;

/**
 * 
 * @author Karen
 * 
 */

public class Modelo {
    
    public Modelo(){
    }
    
    public ArrayList<Orador> getOradores() throws SQLException {
        ArrayList<Orador> oradores = new ArrayList();
        try (Connection con = Conexion.getConnection(); 
                PreparedStatement ps = con.prepareStatement("SELECT * FROM lista_oradores;"); 
                ResultSet rs = ps.executeQuery()) {
            
            while( rs.next() ) {
                String nombre = rs.getString("nombre");
                String apellido = rs.getString("apellido");
                String temaCharla = rs.getString("tema_charla");
                LocalDate fechaAlta = rs.getDate("fecha_alta").toLocalDate();
            
            Orador orador = new Orador(nombre, apellido, temaCharla, fechaAlta);
                oradores.add(orador);     
            }
            
        }

        return oradores;
    }

    public void agregarOrador(Orador orador) throws SQLException {
        try (Connection con = Conexion.getConnection();
             PreparedStatement ps = con.prepareStatement("INSERT INTO lista_oradores (nombre, apellido, tema_charla, fecha_alta) VALUES (?, ?, ?, ?)")) {

            ps.setString(1, orador.getNombre());
            ps.setString(2, orador.getApellido());
            ps.setString(3, orador.getTemaCharla());
            ps.setDate(4, java.sql.Date.valueOf(orador.getFechaAlta()));

            ps.executeUpdate();
        }
    }

    public void editarOrador(Orador orador) throws SQLException {
    try (Connection con = Conexion.getConnection();
         PreparedStatement ps = con.prepareStatement("UPDATE lista_oradores SET apellido = ?, tema_charla = ?, fecha_alta = ? WHERE nombre = ?")) {
        
        ps.setString(1, orador.getApellido());
        ps.setString(2, orador.getTemaCharla());
        ps.setDate(3, java.sql.Date.valueOf(LocalDate.now()));
        ps.setString(4, orador.getNombre());
        
        ps.executeUpdate();
    }
}

    public void eliminarOrador(String nombre) throws SQLException {
    try (Connection con = Conexion.getConnection();
         PreparedStatement ps = con.prepareStatement("DELETE FROM lista_oradores WHERE nombre = ?")) {
        
        ps.setString(1, nombre);
        
        ps.executeUpdate();
    }
}
}
