/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.crudcodoacodo.proyecto.crud.codoacodo.modelo;

import java.sql.Connection;
import java.sql.SQLException;
import javax.sql.DataSource;
import org.apache.commons.dbcp2.BasicDataSource;

/**
 *
 * @author Karen
 */
public class Conexion {

    private static final String URL_DB = "jdbc:mysql://root:milanesa@localhost:3306/oradores?useSSL=false&useTimezone=true&serverTimezone=UTC&allowPublicKeyRetrieval=true";
    private static BasicDataSource dataSource;

    private Conexion() {
    }

    private static DataSource getDataSource() {
        if (dataSource == null) {
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                dataSource = new BasicDataSource();
                dataSource.setUrl(URL_DB);
                dataSource.setInitialSize(50);
            } catch (ClassNotFoundException ex) {
                throw new RuntimeException("Error de E/S al leer config de BBDD", ex);
            }
        }
        return dataSource;
    }

    public static Connection getConnection() throws SQLException {
        return getDataSource().getConnection();
    }


}