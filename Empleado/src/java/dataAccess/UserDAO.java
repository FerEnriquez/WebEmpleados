/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dataAccess;
import model.User;
import java.sql.*;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author Fer Enriquez'
 */
public class UserDAO {
  
    private PreparedStatement statement;
    private Connection connection;
    private static final Logger logger = Logger.getLogger(UserDAO.class.getName());
    
    public UserDAO (Connection connection) {
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
    
    public void addUser (User user) {
        try {   
            statement = connection.prepareStatement("INSERT INTO trabajador.usuario VALUES (?,?,?)");
            {
                statement.setString(1, user.getNomina());
                statement.setString(2, user.getNombre());
                statement.setString(3, user.getMac());
                statement.executeUpdate();
            }
            statement.close();
        }
        catch (SQLException sqle) {
            logger.log(Level.SEVERE, sqle.toString(), sqle);
            throw new RuntimeException(sqle);
        }
    }
    
    
    public ArrayList<model.User> allUsers(){
        ArrayList<model.User> users = new ArrayList<>();
        User user = null;
        try {
            statement = connection.prepareStatement("SELECT * FROM trabajador.usuario");
            synchronized (statement){
                ResultSet results = statement.executeQuery();
                
                while(results.next()){
                    user = new User();
                    user.setNomina(results.getString("nomina"));
                    user.setNombre(results.getString("nombre"));
                    user.setMac(results.getString("mac"));
                    users.add(user);
                }
            }
            statement.close();
        }
        catch (SQLException sqle){
            logger.log(Level.SEVERE, sqle.toString(), sqle);
            throw new RuntimeException(sqle);
        }
        return users;
    }
    
}

