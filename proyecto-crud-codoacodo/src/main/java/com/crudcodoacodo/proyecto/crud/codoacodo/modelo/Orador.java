/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.crudcodoacodo.proyecto.crud.codoacodo.modelo;

import java.io.Serializable;
import java.time.LocalDate;

/**
 *
 * @author crist
 */
public class Orador implements Serializable {
    
    private String nombre;
    private String apellido;
    private String temaCharla;
    private LocalDate fechaAlta;

    
    public Orador(){     
    }
    
    public Orador(String nombre, String apellido,String temaCharla, LocalDate fechaAlta) {
        this.nombre = nombre;
        this.apellido = apellido;
        this.temaCharla = temaCharla;
        this.fechaAlta = fechaAlta;

    }
    
    public String getNombre() {
        return nombre;
    }
    
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    public String getApellido() {
        return apellido;
    }
    
    public void setApellido(String apellido) {
        this.apellido = apellido;
    }
    
    public String getTemaCharla() {
        return temaCharla;
    }
    
    public void setTemaCharla(String temaCharla) {
        this.temaCharla = temaCharla;
    }
    
    
    public LocalDate getFechaAlta() {
        return fechaAlta;
    }
    
    public void setFechaAlta(LocalDate fechaAlta) {
        this.fechaAlta = fechaAlta;
    }
    

}
