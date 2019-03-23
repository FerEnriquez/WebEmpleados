/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dataAccess;

import model.Empleado;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Fer Enriquez'
 */
public class EmpleadoDAO {
  
    private PreparedStatement statement;
    private Connection connection;
    private static final Logger logger = Logger.getLogger(EmpleadoDAO.class.getName());
    
    public EmpleadoDAO (Connection connection) {
        this.connection = connection;
    }
    /**
     * @return the connection
     */
    public Connection getConnection() {
        return connection;
    }

    /**
     * @param connection the connection to set
     */
    public void setConnection(Connection connection) {
        this.connection = connection;
    }
    
    public void addEmpleado (Empleado empleado) {
        try { 
            statement = connection.prepareStatement("INSERT INTO tec.empleado VALUES (?,?,?,?,?,?)");
            {
                statement.setString(1, empleado.getNomina());
                statement.setString(2, empleado.getNombre());
                statement.setString(3, empleado.getApellido());
                statement.setString(4, empleado.getMac());
                statement.setString(5, empleado.getGrupo());
                statement.setString(6, empleado.getPassword());
                statement.executeUpdate();
            }
            statement.close();
        }
        catch (SQLException sqle) {
            logger.log(Level.SEVERE, sqle.toString(), sqle);
            throw new RuntimeException(sqle);
        }
    }
    
}
